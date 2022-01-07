; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_wake_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_wake_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32*, i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__, i32, i32 (%struct.sk_buff*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr_3addr = type { i32 }

@IEEE_SOFTMAC_SINGLE_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_wake_queue(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hdr_3addr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %6 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %6, i32 0, i32 2
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %119

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE_SOFTMAC_SINGLE_QUEUE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %68, %24
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %32 = call %struct.sk_buff* @dequeue_mgmt(%struct.ieee80211_device* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %4, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  br i1 %35, label %36, label %82

36:                                               ; preds = %34
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %40, %struct.ieee80211_hdr_3addr** %5, align 8
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = call i32 @cpu_to_le16(i32 %46)
  %48 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 4095
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 0, i32* %60, align 4
  br label %68

61:                                               ; preds = %36
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %63 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %69, i32 0, i32 8
  %71 = load i32 (%struct.sk_buff*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32)** %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %77 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %71(%struct.sk_buff* %72, i32 %75, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  br label %25

82:                                               ; preds = %34
  br label %83

83:                                               ; preds = %82, %15
  %84 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %85 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %83
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %90 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %96 = call i32 @ieee80211_resume_tx(%struct.ieee80211_device* %95)
  br label %97

97:                                               ; preds = %94, %88, %83
  %98 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %99 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %97
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %104 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @netif_queue_stopped(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %110 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %115 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @netif_wake_queue(i32 %116)
  br label %118

118:                                              ; preds = %108, %102, %97
  br label %119

119:                                              ; preds = %118, %14
  %120 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %121 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %120, i32 0, i32 2
  %122 = load i64, i64* %3, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @dequeue_mgmt(%struct.ieee80211_device*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_resume_tx(%struct.ieee80211_device*) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
