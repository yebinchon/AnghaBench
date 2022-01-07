; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_send_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_send_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_4__, i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_beacon(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %4 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %11 = call %struct.sk_buff* @ieee80211_get_beacon_(%struct.ieee80211_device* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %17 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %15, %struct.ieee80211_device* %16)
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %14, %9
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %34, i32 0, i32 1
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 5
  %42 = call i64 @MSECS(i64 %41)
  %43 = add nsw i64 %36, %42
  %44 = call i32 @mod_timer(i32* %35, i64 %43)
  br label %45

45:                                               ; preds = %8, %33, %28, %23
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_get_beacon_(%struct.ieee80211_device*) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.ieee80211_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @MSECS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
