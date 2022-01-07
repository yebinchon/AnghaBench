; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @rtl8192_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_free_tx_ring(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.rtl8192_tx_ring*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %5, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 1
  %13 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %13, i64 %15
  store %struct.rtl8192_tx_ring* %16, %struct.rtl8192_tx_ring** %6, align 8
  br label %17

17:                                               ; preds = %22, %2
  %18 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %19 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %18, i32 0, i32 4
  %20 = call i64 @skb_queue_len(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %27 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %7, align 8
  %30 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %31 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %30, i32 0, i32 4
  %32 = call %struct.sk_buff* @__skb_dequeue(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %8, align 8
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %44 = call i32 @pci_unmap_single(i32 %35, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  %47 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %48 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  %51 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %52 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = urem i64 %50, %54
  %56 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %57 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %17

58:                                               ; preds = %17
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %63 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %69 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %72 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_free_consistent(i32 %61, i32 %67, %struct.TYPE_3__* %70, i32 %73)
  %75 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %76 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %75, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %76, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
