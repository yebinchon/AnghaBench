; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_start_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_start_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211_network }
%struct.ieee80211_network = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Enabling beacon TX\00", align 1
@ATIMWND = common dso_local global i32 0, align 4
@BCN_INTERVAL = common dso_local global i32 0, align 4
@BCN_DRV_EARLY_INT = common dso_local global i32 0, align 4
@BCN_DMATIME = common dso_local global i32 0, align 4
@BCN_ERR_THRESH = common dso_local global i32 0, align 4
@BCN_TCFG_CW_SHIFT = common dso_local global i32 0, align 4
@BCN_TCFG_IFS = common dso_local global i32 0, align 4
@BCN_TCFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_start_beacon(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i64 @ieee80211_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.r8192_priv*
  store %struct.r8192_priv* %10, %struct.r8192_priv** %3, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ieee80211_network* %14, %struct.ieee80211_network** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 6, i32* %6, align 4
  store i32 15, i32* %7, align 4
  %15 = call i32 @DMESG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @rtl8192_irq_disable(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @ATIMWND, align 4
  %20 = call i32 @write_nic_word(%struct.net_device* %18, i32 %19, i32 2)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @BCN_INTERVAL, align 4
  %23 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @write_nic_word(%struct.net_device* %21, i32 %22, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @BCN_DRV_EARLY_INT, align 4
  %29 = call i32 @write_nic_word(%struct.net_device* %27, i32 %28, i32 10)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @BCN_DMATIME, align 4
  %32 = call i32 @write_nic_word(%struct.net_device* %30, i32 %31, i32 256)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* @BCN_ERR_THRESH, align 4
  %35 = call i32 @write_nic_byte(%struct.net_device* %33, i32 %34, i32 100)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @BCN_TCFG_CW_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @BCN_TCFG_IFS, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = load i32, i32* @BCN_TCFG, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @write_nic_word(%struct.net_device* %46, i32 %47, i32 %48)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @rtl8192_irq_enable(%struct.net_device* %50)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESG(i8*) #1

declare dso_local i32 @rtl8192_irq_disable(%struct.net_device*) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_irq_enable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
