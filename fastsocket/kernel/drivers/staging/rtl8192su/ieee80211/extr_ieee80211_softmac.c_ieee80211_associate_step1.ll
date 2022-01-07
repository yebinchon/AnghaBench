; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_associate_step1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_associate_step1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.ieee80211_network }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_network = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Stopping scan\0A\00", align 1
@IEEE80211_ASSOCIATING_AUTHENTICATING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sending authentication request\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_associate_step1(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca %struct.ieee80211_network*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %5, i32 0, i32 3
  store %struct.ieee80211_network* %6, %struct.ieee80211_network** %3, align 8
  %7 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %14 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %15 = call %struct.sk_buff* @ieee80211_authentication_req(%struct.ieee80211_network* %13, %struct.ieee80211_device* %14, i32 0)
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %20 = call i32 @ieee80211_associate_abort(%struct.ieee80211_device* %19)
  br label %46

21:                                               ; preds = %1
  %22 = load i32, i32* @IEEE80211_ASSOCIATING_AUTHENTICATING, align 4
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %28 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %26, %struct.ieee80211_device* %27)
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 0
  %31 = call i32 @timer_pending(%struct.TYPE_5__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %21
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i32, i32* @HZ, align 4
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 0
  %44 = call i32 @add_timer(%struct.TYPE_5__* %43)
  br label %45

45:                                               ; preds = %33, %21
  br label %46

46:                                               ; preds = %45, %18
  ret void
}

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*) #1

declare dso_local %struct.sk_buff* @ieee80211_authentication_req(%struct.ieee80211_network*, %struct.ieee80211_device*, i32) #1

declare dso_local i32 @ieee80211_associate_abort(%struct.ieee80211_device*) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.ieee80211_device*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
