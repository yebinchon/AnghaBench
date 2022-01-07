; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_auth_challenge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_auth_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.ieee80211_network }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_network = type { i32 }
%struct.sk_buff = type { i32 }

@MFIE_TYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Sending authentication challenge response\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_auth_challenge(%struct.ieee80211_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_network*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 3
  store %struct.ieee80211_network* %11, %struct.ieee80211_network** %9, align 8
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 0
  %14 = call i32 @del_timer_sync(%struct.TYPE_6__* %13)
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 2
  %28 = call %struct.sk_buff* @ieee80211_authentication_req(%struct.ieee80211_network* %24, %struct.ieee80211_device* %25, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %33 = call i32 @ieee80211_associate_abort(%struct.ieee80211_device* %32)
  br label %75

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 2
  %38 = call i32* @skb_put(%struct.sk_buff* %35, i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32, i32* @MFIE_TYPE_CHALLENGE, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memcpy(i32* %45, i32* %46, i32 %47)
  %49 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = call i32 @ieee80211_encrypt_fragment(%struct.ieee80211_device* %50, %struct.sk_buff* %51, i32 4)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %55 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %53, %struct.ieee80211_device* %54)
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 0
  %58 = call i32 @timer_pending(%struct.TYPE_6__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %34
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i32, i32* @HZ, align 4
  %63 = sdiv i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %69, i32 0, i32 0
  %71 = call i32 @add_timer(%struct.TYPE_6__* %70)
  br label %72

72:                                               ; preds = %60, %34
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %72, %31
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @kfree(i32* %76)
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_6__*) #1

declare dso_local %struct.sk_buff* @ieee80211_authentication_req(%struct.ieee80211_network*, %struct.ieee80211_device*, i32) #1

declare dso_local i32 @ieee80211_associate_abort(%struct.ieee80211_device*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*) #1

declare dso_local i32 @ieee80211_encrypt_fragment(%struct.ieee80211_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.ieee80211_device*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
