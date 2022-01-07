; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_tx_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_tx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_4__*, i32, %struct.rtl8192_tx_ring* }
%struct.TYPE_4__ = type { i64 }
%struct.rtl8192_tx_ring = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sk_buff = type { i32 }

@BEACON_QUEUE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@MGNT_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @rtl8192_tx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_tx_isr(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.rtl8192_tx_ring*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i64 @ieee80211_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.r8192_priv*
  store %struct.r8192_priv* %11, %struct.r8192_priv** %5, align 8
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 3
  %14 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %14, i64 %16
  store %struct.rtl8192_tx_ring* %17, %struct.rtl8192_tx_ring** %6, align 8
  br label %18

18:                                               ; preds = %52, %2
  %19 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %19, i32 0, i32 2
  %21 = call i64 @skb_queue_len(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %18
  %24 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %25 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @BEACON_QUEUE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %104

40:                                               ; preds = %34
  %41 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %42 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  %45 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %46 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = urem i64 %44, %48
  %50 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %51 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %40, %23
  %53 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %54 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %53, i32 0, i32 2
  %55 = call %struct.sk_buff* @__skb_dequeue(i32* %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %8, align 8
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %67 = call i32 @pci_unmap_single(i32 %58, i32 %62, i32 %65, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  br label %18

70:                                               ; preds = %18
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MGNT_QUEUE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i64 @rtl8192_is_tx_queue_empty(%struct.net_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = call i32 @ieee80211_ps_tx_ack(%struct.TYPE_4__* %92, i32 1)
  br label %94

94:                                               ; preds = %85, %81
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %70
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @BEACON_QUEUE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 0
  %103 = call i32 @tasklet_schedule(i32* %102)
  br label %104

104:                                              ; preds = %39, %100, %96
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @rtl8192_is_tx_queue_empty(%struct.net_device*) #1

declare dso_local i32 @ieee80211_ps_tx_ack(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
