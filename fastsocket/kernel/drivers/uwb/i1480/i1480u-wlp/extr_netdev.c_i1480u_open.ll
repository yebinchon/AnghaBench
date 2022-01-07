; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_netdev.c_i1480u_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_netdev.c_i1480u_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i1480u = type { i32, %struct.TYPE_2__*, %struct.wlp }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp = type { i32, i32, %struct.uwb_rc* }
%struct.uwb_rc = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Can't create WSS: %d. \0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i1480u_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i1480u*, align 8
  %6 = alloca %struct.wlp*, align 8
  %7 = alloca %struct.uwb_rc*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.i1480u* @netdev_priv(%struct.net_device* %9)
  store %struct.i1480u* %10, %struct.i1480u** %5, align 8
  %11 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %12 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %11, i32 0, i32 2
  store %struct.wlp* %12, %struct.wlp** %6, align 8
  %13 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %14 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.wlp*, %struct.wlp** %6, align 8
  %18 = getelementptr inbounds %struct.wlp, %struct.wlp* %17, i32 0, i32 2
  %19 = load %struct.uwb_rc*, %struct.uwb_rc** %18, align 8
  store %struct.uwb_rc* %19, %struct.uwb_rc** %7, align 8
  %20 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %21 = call i32 @i1480u_rx_setup(%struct.i1480u* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %55

25:                                               ; preds = %1
  %26 = load %struct.wlp*, %struct.wlp** %6, align 8
  %27 = getelementptr inbounds %struct.wlp, %struct.wlp* %26, i32 0, i32 0
  %28 = call i32 @uwb_radio_start(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %50

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netif_wake_queue(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load %struct.wlp*, %struct.wlp** %6, align 8
  %37 = getelementptr inbounds %struct.wlp, %struct.wlp* %36, i32 0, i32 1
  %38 = call i32 @wlp_wss_setup(%struct.net_device* %35, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %46

45:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %57

46:                                               ; preds = %41
  %47 = load %struct.wlp*, %struct.wlp** %6, align 8
  %48 = getelementptr inbounds %struct.wlp, %struct.wlp* %47, i32 0, i32 0
  %49 = call i32 @uwb_radio_stop(i32* %48)
  br label %50

50:                                               ; preds = %46, %31
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @netif_stop_queue(%struct.net_device* %51)
  %53 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %54 = call i32 @i1480u_rx_release(%struct.i1480u* %53)
  br label %55

55:                                               ; preds = %50, %24
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.i1480u* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i1480u_rx_setup(%struct.i1480u*) #1

declare dso_local i32 @uwb_radio_start(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @wlp_wss_setup(%struct.net_device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @uwb_radio_stop(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @i1480u_rx_release(%struct.i1480u*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
