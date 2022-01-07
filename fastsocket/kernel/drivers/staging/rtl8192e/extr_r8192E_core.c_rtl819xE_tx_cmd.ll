; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl819xE_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl819xE_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64, i32 }
%struct.r8192_priv = type { i32, i32, %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@TXCMD_QUEUE = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@DESC_PACKET_TYPE_INIT = common dso_local global i64 0, align 8
@DESC_PACKET_TYPE_NORMAL = common dso_local global i64 0, align 8
@QSLT_CMD = common dso_local global i32 0, align 4
@TPPoll = common dso_local global i32 0, align 4
@TPPoll_CQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl819xE_tx_cmd(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.rtl8192_tx_ring*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %5, align 8
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 2
  %16 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %15, align 8
  %17 = load i64, i64* @TXCMD_QUEUE, align 8
  %18 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %16, i64 %17
  store %struct.rtl8192_tx_ring* %18, %struct.rtl8192_tx_ring** %6, align 8
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %29 = call i32 @pci_map_single(i32 %21, i32 %24, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %38 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %37, i32 0, i32 2
  %39 = call i32 @skb_queue_len(i32* %38)
  %40 = add i32 %36, %39
  %41 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %42 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = urem i32 %40, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %46 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %7, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %55 = add nsw i64 %53, %54
  %56 = inttoptr i64 %55 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %10, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = call i32 @memset(%struct.TYPE_4__* %57, i32 0, i32 12)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DESC_PACKET_TYPE_INIT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %2
  %74 = load i64, i64* @DESC_PACKET_TYPE_INIT, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 10
  store i64 %74, i64* %76, align 8
  br label %101

77:                                               ; preds = %2
  %78 = load i64, i64* @DESC_PACKET_TYPE_NORMAL, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 10
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 12, i32* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 9
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* @QSLT_CMD, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i32 8, i32* %97, align 4
  %98 = load i64, i64* @DESC_PACKET_TYPE_INIT, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 7
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %77, %73
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @cpu_to_le32(i32 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  store i32 1, i32* %112, align 8
  %113 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %6, align 8
  %114 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %113, i32 0, i32 2
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = call i32 @__skb_queue_tail(i32* %114, %struct.sk_buff* %115)
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 0
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = load i32, i32* @TPPoll, align 4
  %123 = load i32, i32* @TPPoll_CQ, align 4
  %124 = call i32 @write_nic_byte(%struct.net_device* %121, i32 %122, i32 %123)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
