; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl819x_update_rxsignalstatistics8190pci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl819x_update_rxsignalstatistics8190pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*, %struct.ieee80211_rx_stats*)* @rtl819x_update_rxsignalstatistics8190pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl819x_update_rxsignalstatistics8190pci(%struct.r8192_priv* %0, %struct.ieee80211_rx_stats* %1) #0 {
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_rx_stats*, align 8
  %5 = alloca i32, align 4
  store %struct.r8192_priv* %0, %struct.r8192_priv** %3, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 5, i32* %5, align 4
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 -5, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %28
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 5
  %45 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  %51 = sdiv i32 %50, 6
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
