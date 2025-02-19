; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_hal_dm_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_hal_dm_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@Adapter = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hal_dm_watchdog(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @dm_check_rfctrl_gpio(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @dm_check_pbc_gpio(%struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @dm_check_txrateandretrycount(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @dm_check_edca_turbo(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @dm_CheckAggrPolicy(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @dm_check_rfctrl_gpio(%struct.net_device*) #1

declare dso_local i32 @dm_check_pbc_gpio(%struct.net_device*) #1

declare dso_local i32 @dm_check_txrateandretrycount(%struct.net_device*) #1

declare dso_local i32 @dm_check_edca_turbo(%struct.net_device*) #1

declare dso_local i32 @dm_CheckAggrPolicy(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
