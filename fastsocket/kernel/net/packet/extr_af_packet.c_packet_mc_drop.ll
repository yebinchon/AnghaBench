; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_mc_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_mc_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.packet_mreq_max = type { i64, i64, i64, i32 }
%struct.packet_mclist = type { i64, i64, i64, i64, %struct.packet_mclist*, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.packet_mclist* }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.packet_mreq_max*)* @packet_mc_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_mc_drop(%struct.sock* %0, %struct.packet_mreq_max* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.packet_mreq_max*, align 8
  %6 = alloca %struct.packet_mclist*, align 8
  %7 = alloca %struct.packet_mclist**, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.packet_mreq_max* %1, %struct.packet_mreq_max** %5, align 8
  %9 = call i32 (...) @rtnl_lock()
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.TYPE_2__* @pkt_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.packet_mclist** %12, %struct.packet_mclist*** %7, align 8
  br label %13

13:                                               ; preds = %84, %2
  %14 = load %struct.packet_mclist**, %struct.packet_mclist*** %7, align 8
  %15 = load %struct.packet_mclist*, %struct.packet_mclist** %14, align 8
  store %struct.packet_mclist* %15, %struct.packet_mclist** %6, align 8
  %16 = icmp ne %struct.packet_mclist* %15, null
  br i1 %16, label %17, label %87

17:                                               ; preds = %13
  %18 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %19 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %5, align 8
  %22 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %17
  %26 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %27 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %5, align 8
  %30 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %25
  %34 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %35 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %5, align 8
  %38 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %33
  %42 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %43 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.packet_mreq_max*, %struct.packet_mreq_max** %5, align 8
  %46 = getelementptr inbounds %struct.packet_mreq_max, %struct.packet_mreq_max* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %49 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @memcmp(i32 %44, i32 %47, i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %41
  %54 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %55 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %61 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %60, i32 0, i32 4
  %62 = load %struct.packet_mclist*, %struct.packet_mclist** %61, align 8
  %63 = load %struct.packet_mclist**, %struct.packet_mclist*** %7, align 8
  store %struct.packet_mclist* %62, %struct.packet_mclist** %63, align 8
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @sock_net(%struct.sock* %64)
  %66 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %67 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.net_device* @dev_get_by_index(i32 %65, i64 %68)
  store %struct.net_device* %69, %struct.net_device** %8, align 8
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = icmp ne %struct.net_device* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.net_device*, %struct.net_device** %8, align 8
  %74 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %75 = call i32 @packet_dev_mc(%struct.net_device* %73, %struct.packet_mclist* %74, i32 -1)
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = call i32 @dev_put(%struct.net_device* %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %80 = call i32 @kfree(%struct.packet_mclist* %79)
  br label %81

81:                                               ; preds = %78, %53
  %82 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  br label %91

83:                                               ; preds = %41, %33, %25, %17
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %86 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %85, i32 0, i32 4
  store %struct.packet_mclist** %86, %struct.packet_mclist*** %7, align 8
  br label %13

87:                                               ; preds = %13
  %88 = call i32 (...) @rtnl_unlock()
  %89 = load i32, i32* @EADDRNOTAVAIL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %81
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.TYPE_2__* @pkt_sk(%struct.sock*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @packet_dev_mc(%struct.net_device*, %struct.packet_mclist*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.packet_mclist*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
