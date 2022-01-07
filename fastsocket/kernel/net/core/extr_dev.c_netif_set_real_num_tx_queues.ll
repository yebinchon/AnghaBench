; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_set_real_num_tx_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_set_real_num_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NETREG_REGISTERED = common dso_local global i64 0, align 8
@NETREG_UNREGISTERING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_set_real_num_tx_queues(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ugt i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  br label %60

15:                                               ; preds = %8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NETREG_REGISTERED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NETREG_UNREGISTERING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %21, %15
  %28 = call i32 (...) @ASSERT_RTNL()
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @netdev_queue_update_kobjects(%struct.net_device* %29, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call %struct.TYPE_4__* @netdev_extended(%struct.net_device* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @netif_setup_tc(%struct.net_device* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %27
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @qdisc_reset_all_tx_gt(%struct.net_device* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %14
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @netdev_queue_update_kobjects(%struct.net_device*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @netif_setup_tc(%struct.net_device*, i32) #1

declare dso_local i32 @qdisc_reset_all_tx_gt(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
