; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_ieee80211_wep_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_ieee80211_wep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i32, i32* }

@WLAN_KEY_LEN_WEP104 = common dso_local global i32 0, align 4
@WEP_IV_LEN = common dso_local global i32 0, align 4
@WEP_ICV_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wep_encrypt(%struct.ieee80211_local* %0, %struct.sk_buff* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @WLAN_KEY_LEN_WEP104, align 4
  %18 = add nsw i32 3, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32* @ieee80211_wep_add_iv(%struct.ieee80211_local* %22, %struct.sk_buff* %23, i32 %24, i32 %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %67

30:                                               ; preds = %5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* @WEP_IV_LEN, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = ptrtoint i32* %38 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = sub nsw i64 %34, %45
  store i64 %46, i64* %13, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @memcpy(i32* %21, i32* %47, i32 3)
  %49 = getelementptr inbounds i32, i32* %21, i64 3
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @memcpy(i32* %49, i32* %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load i32, i32* @WEP_ICV_LEN, align 4
  %55 = call i32 @skb_put(%struct.sk_buff* %53, i32 %54)
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 3
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* @WEP_IV_LEN, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @ieee80211_wep_encrypt_data(i32 %58, i32* %21, i32 %60, i32* %64, i64 %65)
  store i32 %66, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %67

67:                                               ; preds = %30, %29
  %68 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ieee80211_wep_add_iv(%struct.ieee80211_local*, %struct.sk_buff*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @ieee80211_wep_encrypt_data(i32, i32*, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
