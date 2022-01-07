; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_init_priv_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_init_priv_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@rtl8192_restart = common dso_local global i32 0, align 4
@rtl819x_watchdog_wqcallback = common dso_local global i8* null, align 8
@dm_txpower_trackingcallback = common dso_local global i8* null, align 8
@dm_rf_pathcheck_workitemcallback = common dso_local global i8* null, align 8
@rtl8192_update_beacon = common dso_local global i8* null, align 8
@rtl8192_qos_activate = common dso_local global i32 0, align 4
@rtl8192_hw_wakeup_wq = common dso_local global i64 0, align 8
@rtl8192_hw_sleep_wq = common dso_local global i64 0, align 8
@rtl8192_irq_rx_tasklet = common dso_local global i64 0, align 8
@rtl8192_irq_tx_tasklet = common dso_local global i64 0, align 8
@rtl8192_prepare_beacon = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_init_priv_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_init_priv_task(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load i32, i32* @DRV_NAME, align 4
  %7 = call i8* (i32, ...) @create_workqueue(i32 %6)
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 10
  store i8* %7, i8** %9, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 9
  %12 = load i32, i32* @rtl8192_restart, align 4
  %13 = call i32 @INIT_WORK(i32* %11, i32 %12)
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 8
  %16 = load i8*, i8** @rtl819x_watchdog_wqcallback, align 8
  %17 = call i32 @INIT_DELAYED_WORK(i32* %15, i8* %16)
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 7
  %20 = load i8*, i8** @dm_txpower_trackingcallback, align 8
  %21 = call i32 @INIT_DELAYED_WORK(i32* %19, i8* %20)
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 6
  %24 = load i8*, i8** @dm_rf_pathcheck_workitemcallback, align 8
  %25 = call i32 @INIT_DELAYED_WORK(i32* %23, i8* %24)
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 5
  %28 = load i8*, i8** @rtl8192_update_beacon, align 8
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i8* %28)
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 4
  %32 = load i32, i32* @rtl8192_qos_activate, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* @rtl8192_hw_wakeup_wq, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @INIT_DELAYED_WORK(i32* %37, i8* %39)
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* @rtl8192_hw_sleep_wq, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @INIT_DELAYED_WORK(i32* %44, i8* %46)
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 2
  %50 = load i64, i64* @rtl8192_irq_rx_tasklet, align 8
  %51 = inttoptr i64 %50 to void (i64)*
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %53 = ptrtoint %struct.r8192_priv* %52 to i64
  %54 = call i32 @tasklet_init(i32* %49, void (i64)* %51, i64 %53)
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 1
  %57 = load i64, i64* @rtl8192_irq_tx_tasklet, align 8
  %58 = inttoptr i64 %57 to void (i64)*
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %60 = ptrtoint %struct.r8192_priv* %59 to i64
  %61 = call i32 @tasklet_init(i32* %56, void (i64)* %58, i64 %60)
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 0
  %64 = load i64, i64* @rtl8192_prepare_beacon, align 8
  %65 = inttoptr i64 %64 to void (i64)*
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %67 = ptrtoint %struct.r8192_priv* %66 to i64
  %68 = call i32 @tasklet_init(i32* %63, void (i64)* %65, i64 %67)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i8* @create_workqueue(i32, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i8*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
