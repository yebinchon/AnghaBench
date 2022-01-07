; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_auth_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_auth_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_authentication = type { %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_STYPE_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_auth_resp(%struct.ieee80211_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_authentication*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = call %struct.sk_buff* @dev_alloc_skb(i32 49)
  store %struct.sk_buff* %10, %struct.sk_buff** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %67

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store i32 48, i32* %16, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ieee80211_authentication*
  store %struct.ieee80211_authentication* %20, %struct.ieee80211_authentication** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = call i8* @cpu_to_le16(i32 2)
  %26 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %9, align 8
  %27 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %35, i32* %40, i32 %41)
  %43 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %46, i32* %51, i32 %52)
  %54 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memcpy(i32 %57, i32* %58, i32 %59)
  %61 = load i32, i32* @IEEE80211_STYPE_AUTH, align 4
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.ieee80211_authentication*, %struct.ieee80211_authentication** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_authentication, %struct.ieee80211_authentication* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %4, align 8
  br label %67

67:                                               ; preds = %14, %13
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %68
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
