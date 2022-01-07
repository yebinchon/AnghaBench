; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_free_rx_desc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_free_rx_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_rx_desc_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i64 @ieee80211_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.r8180_priv*
  store %struct.r8180_priv* %8, %struct.r8180_priv** %3, align 8
  %9 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %9, i32 0, i32 5
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 32, %17
  %19 = add i64 %18, 256
  %20 = trunc i64 %19 to i32
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pci_free_consistent(%struct.pci_dev* %15, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %29, i32 0, i32 2
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @buffer_free(%struct.net_device* %28, i32* %30, i32 %33, i32 0)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @buffer_free(%struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
