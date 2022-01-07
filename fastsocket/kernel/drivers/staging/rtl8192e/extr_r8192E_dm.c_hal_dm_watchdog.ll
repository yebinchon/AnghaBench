; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_hal_dm_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_hal_dm_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hal_dm_watchdog(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = call i32 @dm_check_rate_adaptive(%struct.net_device* %3)
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @dm_dynamic_txpower(%struct.net_device* %5)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @dm_check_txrateandretrycount(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @dm_check_txpower_tracking(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @dm_ctrl_initgain_byrssi(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @dm_check_edca_turbo(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @dm_bandwidth_autoswitch(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @dm_check_rfctrl_gpio(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @dm_check_rx_path_selection(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @dm_check_fsync(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @dm_check_pbc_gpio(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @dm_send_rssi_tofw(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @dm_ctstoself(%struct.net_device* %27)
  ret void
}

declare dso_local i32 @dm_check_rate_adaptive(%struct.net_device*) #1

declare dso_local i32 @dm_dynamic_txpower(%struct.net_device*) #1

declare dso_local i32 @dm_check_txrateandretrycount(%struct.net_device*) #1

declare dso_local i32 @dm_check_txpower_tracking(%struct.net_device*) #1

declare dso_local i32 @dm_ctrl_initgain_byrssi(%struct.net_device*) #1

declare dso_local i32 @dm_check_edca_turbo(%struct.net_device*) #1

declare dso_local i32 @dm_bandwidth_autoswitch(%struct.net_device*) #1

declare dso_local i32 @dm_check_rfctrl_gpio(%struct.net_device*) #1

declare dso_local i32 @dm_check_rx_path_selection(%struct.net_device*) #1

declare dso_local i32 @dm_check_fsync(%struct.net_device*) #1

declare dso_local i32 @dm_check_pbc_gpio(%struct.net_device*) #1

declare dso_local i32 @dm_send_rssi_tofw(%struct.net_device*) #1

declare dso_local i32 @dm_ctstoself(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
