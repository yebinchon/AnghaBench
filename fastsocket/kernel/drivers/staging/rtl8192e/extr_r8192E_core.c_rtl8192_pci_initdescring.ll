; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_pci_initdescring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_pci_initdescring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_TX_QUEUE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @rtl8192_pci_initdescring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @rtl8192_pci_initdescring(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call signext i16 @rtl8192_alloc_rx_desc_ring(%struct.net_device* %9)
  store i16 %10, i16* %4, align 2
  %11 = load i16, i16* %4, align 2
  %12 = icmp ne i16 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i16, i16* %4, align 2
  store i16 %14, i16* %2, align 2
  br label %60

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAX_TX_QUEUE_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call signext i16 @rtl8192_alloc_tx_desc_ring(%struct.net_device* %21, i32 %22, i32 %25)
  store i16 %26, i16* %4, align 2
  %27 = icmp ne i16 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %34

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %16

33:                                               ; preds = %16
  store i16 0, i16* %2, align 2
  br label %60

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @rtl8192_free_rx_ring(%struct.net_device* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %56, %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAX_TX_QUEUE_COUNT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @rtl8192_free_tx_ring(%struct.net_device* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %37

59:                                               ; preds = %37
  store i16 1, i16* %2, align 2
  br label %60

60:                                               ; preds = %59, %33, %13
  %61 = load i16, i16* %2, align 2
  ret i16 %61
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local signext i16 @rtl8192_alloc_rx_desc_ring(%struct.net_device*) #1

declare dso_local signext i16 @rtl8192_alloc_tx_desc_ring(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_free_rx_ring(%struct.net_device*) #1

declare dso_local i32 @rtl8192_free_tx_ring(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
