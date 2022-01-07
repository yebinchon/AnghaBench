; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_icmp.c_icmpv6_xrlim_allow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_icmp.c_icmpv6_xrlim_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi = type { i32 }
%struct.dst_entry = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rt6_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ICMPV6_INFOMSG_MASK = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, %struct.flowi*)* @icmpv6_xrlim_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv6_xrlim_allow(%struct.sock* %0, i32 %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rt6_info*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.net* @sock_net(%struct.sock* %13)
  store %struct.net* %14, %struct.net** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ICMPV6_INFOMSG_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %86

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %86

25:                                               ; preds = %20
  %26 = load %struct.net*, %struct.net** %9, align 8
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = load %struct.flowi*, %struct.flowi** %7, align 8
  %29 = call %struct.dst_entry* @ip6_route_output(%struct.net* %26, %struct.sock* %27, %struct.flowi* %28)
  store %struct.dst_entry* %29, %struct.dst_entry** %8, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.net*, %struct.net** %9, align 8
  %36 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %37 = call i32 @ip6_dst_idev(%struct.dst_entry* %36)
  %38 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %39 = call i32 @IP6_INC_STATS(%struct.net* %35, i32 %37, i32 %38)
  br label %82

40:                                               ; preds = %25
  %41 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %42 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFF_LOOPBACK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  br label %81

55:                                               ; preds = %45, %40
  %56 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %57 = bitcast %struct.dst_entry* %56 to %struct.rt6_info*
  store %struct.rt6_info* %57, %struct.rt6_info** %11, align 8
  %58 = load %struct.net*, %struct.net** %9, align 8
  %59 = getelementptr inbounds %struct.net, %struct.net* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %64 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 128
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %70 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 128, %72
  %74 = ashr i32 %73, 5
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %68, %55
  %78 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @xrlim_allow(%struct.dst_entry* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %54
  br label %82

82:                                               ; preds = %81, %34
  %83 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %84 = call i32 @dst_release(%struct.dst_entry* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %24, %19
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, %struct.sock*, %struct.flowi*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @xrlim_allow(%struct.dst_entry*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
