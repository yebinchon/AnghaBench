; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_rx_probe_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_rx_probe_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*, %struct.sk_buff*)* @ieee80211_rx_probe_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_probe_rq(%struct.ieee80211_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @ETH_ALEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i64 @probe_rq_parse(%struct.ieee80211_device* %16, %struct.sk_buff* %17, i32* %10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %27 = call i32 @ieee80211_resp_to_probe(%struct.ieee80211_device* %26, i32* %10)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %29)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @probe_rq_parse(%struct.ieee80211_device*, %struct.sk_buff*, i32*) #2

declare dso_local i32 @ieee80211_resp_to_probe(%struct.ieee80211_device*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
