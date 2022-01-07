; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_dst_lookup_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_dst_lookup_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.flowi = type { i32, i32 }
%struct.net = type { i32 }
%struct.rt6_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENETUNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.dst_entry**, %struct.flowi*)* @ip6_dst_lookup_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_dst_lookup_tail(%struct.sock* %0, %struct.dst_entry** %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.dst_entry**, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.rt6_info*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.dst_entry** %1, %struct.dst_entry*** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.net* @sock_net(%struct.sock* %11)
  store %struct.net* %12, %struct.net** %9, align 8
  %13 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %15 = icmp eq %struct.dst_entry* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.net*, %struct.net** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = load %struct.flowi*, %struct.flowi** %7, align 8
  %20 = call %struct.dst_entry* @ip6_route_output(%struct.net* %17, %struct.sock* %18, %struct.flowi* %19)
  %21 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  store %struct.dst_entry* %20, %struct.dst_entry** %21, align 8
  br label %22

22:                                               ; preds = %16, %3
  %23 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %23, align 8
  %25 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %60

29:                                               ; preds = %22
  %30 = load %struct.flowi*, %struct.flowi** %7, align 8
  %31 = getelementptr inbounds %struct.flowi, %struct.flowi* %30, i32 0, i32 1
  %32 = call i64 @ipv6_addr_any(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  %36 = load %struct.dst_entry*, %struct.dst_entry** %35, align 8
  %37 = bitcast %struct.dst_entry* %36 to %struct.rt6_info*
  store %struct.rt6_info* %37, %struct.rt6_info** %10, align 8
  %38 = load %struct.net*, %struct.net** %9, align 8
  %39 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %40 = load %struct.flowi*, %struct.flowi** %7, align 8
  %41 = getelementptr inbounds %struct.flowi, %struct.flowi* %40, i32 0, i32 0
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = icmp ne %struct.sock* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %50

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 0, %49 ]
  %52 = load %struct.flowi*, %struct.flowi** %7, align 8
  %53 = getelementptr inbounds %struct.flowi, %struct.flowi* %52, i32 0, i32 1
  %54 = call i32 @ip6_route_get_saddr(%struct.net* %38, %struct.rt6_info* %39, i32* %41, i32 %51, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %60

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %29
  store i32 0, i32* %4, align 4
  br label %75

60:                                               ; preds = %57, %28
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @ENETUNREACH, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.net*, %struct.net** %9, align 8
  %67 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %68 = call i32 @IP6_INC_STATS_BH(%struct.net* %66, i32* null, i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  %71 = load %struct.dst_entry*, %struct.dst_entry** %70, align 8
  %72 = call i32 @dst_release(%struct.dst_entry* %71)
  %73 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %73, align 8
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %59
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, %struct.sock*, %struct.flowi*) #1

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ip6_route_get_saddr(%struct.net*, %struct.rt6_info*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @IP6_INC_STATS_BH(%struct.net*, i32*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
