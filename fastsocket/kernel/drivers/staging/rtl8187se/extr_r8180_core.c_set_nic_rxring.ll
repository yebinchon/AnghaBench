; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_set_nic_rxring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_set_nic_rxring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32 }

@PGSELECT = common dso_local global i32 0, align 4
@PGSELECT_PG_SHIFT = common dso_local global i32 0, align 4
@RXRING_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_nic_rxring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8180_priv*
  store %struct.r8180_priv* %7, %struct.r8180_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @PGSELECT, align 4
  %10 = call i32 @read_nic_byte(%struct.net_device* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @PGSELECT, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PGSELECT_PG_SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  %18 = call i32 @write_nic_byte(%struct.net_device* %11, i32 %12, i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* @RXRING_ADDR, align 4
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @write_nic_dword(%struct.net_device* %19, i32 %20, i32 %23)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
