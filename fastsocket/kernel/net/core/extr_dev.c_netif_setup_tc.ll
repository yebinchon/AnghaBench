; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_setup_tc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_qos_info = type { %struct.netdev_tc_txq*, i64 }
%struct.netdev_tc_txq = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.netdev_qos_info }

@.str = private unnamed_addr constant [104 x i8] c"Number of in use tx queues changed invalidating tc mappings. Priority traffic classification disabled!\0A\00", align 1
@TC_BITMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [102 x i8] c"Number of in use tx queues changed. Priority %i to tc mapping %i is no longer valid setting map to 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_setup_tc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_qos_info*, align 8
  %7 = alloca %struct.netdev_tc_txq*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.netdev_qos_info* %11, %struct.netdev_qos_info** %6, align 8
  %12 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %6, align 8
  %13 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %12, i32 0, i32 0
  %14 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %13, align 8
  %15 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %14, i64 0
  store %struct.netdev_tc_txq* %15, %struct.netdev_tc_txq** %7, align 8
  %16 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %7, align 8
  %17 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %7, align 8
  %20 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %18, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %6, align 8
  %28 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %65

29:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TC_BITMASK, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @netdev_get_prio_tc_map(%struct.net_device* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.netdev_qos_info*, %struct.netdev_qos_info** %6, align 8
  %40 = getelementptr inbounds %struct.netdev_qos_info, %struct.netdev_qos_info* %39, i32 0, i32 0
  %41 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %41, i64 %43
  store %struct.netdev_tc_txq* %44, %struct.netdev_tc_txq** %7, align 8
  %45 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %7, align 8
  %46 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %7, align 8
  %49 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %47, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %35
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @netdev_set_prio_tc_map(%struct.net_device* %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %54, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %30

65:                                               ; preds = %25, %30
  ret void
}

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_prio_tc_map(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
