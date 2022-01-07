; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_check_nic_enough_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_check_nic_enough_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @check_nic_enough_desc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca %struct.rtl8192_tx_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %6, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 0
  %12 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %12, i64 %14
  store %struct.rtl8192_tx_ring* %15, %struct.rtl8192_tx_ring** %7, align 8
  %16 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %17 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %20 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %19, i32 0, i32 1
  %21 = call i32 @skb_queue_len(i32* %20)
  %22 = sub nsw i32 %18, %21
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i16 1, i16* %3, align 2
  br label %26

25:                                               ; preds = %2
  store i16 0, i16* %3, align 2
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i16, i16* %3, align 2
  ret i16 %27
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
