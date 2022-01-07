; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.net_device*)* }

@watch_dog_timer_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @rtl8192_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @rtl8192_init_priv_variable(%struct.net_device* %6)
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = call i32 @rtl8192_init_priv_lock(%struct.r8192_priv* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @rtl8192_init_priv_task(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @rtl8192_get_eeprom_size(%struct.net_device* %12)
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 %18(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @rtl8192_get_channel_map(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @init_hal_dm(%struct.net_device* %23)
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = call i32 @init_timer(%struct.TYPE_4__* %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = ptrtoint %struct.net_device* %28 to i64
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* @watch_dog_timer_callback, align 4
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  ret i16 0
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_init_priv_variable(%struct.net_device*) #1

declare dso_local i32 @rtl8192_init_priv_lock(%struct.r8192_priv*) #1

declare dso_local i32 @rtl8192_init_priv_task(%struct.net_device*) #1

declare dso_local i32 @rtl8192_get_eeprom_size(%struct.net_device*) #1

declare dso_local i32 @rtl8192_get_channel_map(%struct.net_device*) #1

declare dso_local i32 @init_hal_dm(%struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
