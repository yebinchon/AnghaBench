; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_set_nic_txring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_set_nic_txring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@TX_MANAGEPRIORITY_RING_ADDR = common dso_local global i32 0, align 4
@TX_BKPRIORITY_RING_ADDR = common dso_local global i32 0, align 4
@TX_BEPRIORITY_RING_ADDR = common dso_local global i32 0, align 4
@TX_VIPRIORITY_RING_ADDR = common dso_local global i32 0, align 4
@TX_VOPRIORITY_RING_ADDR = common dso_local global i32 0, align 4
@TX_HIGHPRIORITY_RING_ADDR = common dso_local global i32 0, align 4
@TX_BEACON_RING_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_nic_txring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @ieee80211_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.r8180_priv*
  store %struct.r8180_priv* %6, %struct.r8180_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @TX_MANAGEPRIORITY_RING_ADDR, align 4
  %9 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @write_nic_dword(%struct.net_device* %7, i32 %8, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @TX_BKPRIORITY_RING_ADDR, align 4
  %15 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @write_nic_dword(%struct.net_device* %13, i32 %14, i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* @TX_BEPRIORITY_RING_ADDR, align 4
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @write_nic_dword(%struct.net_device* %19, i32 %20, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* @TX_VIPRIORITY_RING_ADDR, align 4
  %27 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %28 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @write_nic_dword(%struct.net_device* %25, i32 %26, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load i32, i32* @TX_VOPRIORITY_RING_ADDR, align 4
  %33 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @write_nic_dword(%struct.net_device* %31, i32 %32, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load i32, i32* @TX_HIGHPRIORITY_RING_ADDR, align 4
  %39 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %40 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @write_nic_dword(%struct.net_device* %37, i32 %38, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = load i32, i32* @TX_BEACON_RING_ADDR, align 4
  %45 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @write_nic_dword(%struct.net_device* %43, i32 %44, i32 %47)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
