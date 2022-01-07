; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_rtl8185b_tx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_rtl8185b_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32 }

@TCR = common dso_local global i32 0, align 4
@MSR = common dso_local global i32 0, align 4
@MSR_LINK_ENEDCA = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@CMD_TX_ENABLE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8185b_tx_enable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i64 @ieee80211_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.r8180_priv*
  store %struct.r8180_priv* %8, %struct.r8180_priv** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @TCR, align 4
  %11 = load %struct.r8180_priv*, %struct.r8180_priv** %5, align 8
  %12 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @write_nic_dword(%struct.net_device* %9, i32 %10, i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* @MSR, align 4
  %17 = call i32 @read_nic_byte(%struct.net_device* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MSR_LINK_ENEDCA, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @MSR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @write_nic_byte(%struct.net_device* %21, i32 %22, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @fix_tx_fifo(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @CMD, align 4
  %29 = call i32 @read_nic_byte(%struct.net_device* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @CMD, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CMD_TX_ENABLE_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = call i32 @write_nic_byte(%struct.net_device* %30, i32 %31, i32 %35)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @fix_tx_fifo(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
