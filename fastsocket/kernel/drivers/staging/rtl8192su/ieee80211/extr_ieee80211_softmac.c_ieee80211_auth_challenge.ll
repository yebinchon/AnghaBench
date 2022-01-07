; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_auth_challenge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_auth_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, %struct.TYPE_2__, i32, %struct.ieee80211_network }
%struct.TYPE_2__ = type { i32 }
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
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ieee80211_network*, %struct.ieee80211_network** %9, align 8
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 2
  %25 = call %struct.sk_buff* @ieee80211_authentication_req(%struct.ieee80211_network* %21, %struct.ieee80211_device* %22, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %30 = call i32 @ieee80211_associate_abort(%struct.ieee80211_device* %29)
  br label %61

31:                                               ; preds = %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 2
  %35 = call i32* @skb_put(%struct.sk_buff* %32, i32 %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32, i32* @MFIE_TYPE_CHALLENGE, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @memcpy(i32* %42, i32* %43, i32 %44)
  %46 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @ieee80211_encrypt_fragment(%struct.ieee80211_device* %47, %struct.sk_buff* %48, i32 4)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %52 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %50, %struct.ieee80211_device* %51)
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %53, i32 0, i32 0
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i32, i32* @HZ, align 4
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = call i32 @mod_timer(i32* %54, i64 %59)
  br label %61

61:                                               ; preds = %31, %28
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @kfree(i32* %62)
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_authentication_req(%struct.ieee80211_network*, %struct.ieee80211_device*, i32) #1

declare dso_local i32 @ieee80211_associate_abort(%struct.ieee80211_device*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*) #1

declare dso_local i32 @ieee80211_encrypt_fragment(%struct.ieee80211_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.ieee80211_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
