; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tkip.c_ieee80211_tkip_encrypt_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tkip.c_ieee80211_tkip_encrypt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }
%struct.ieee80211_key = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_tkip_encrypt_data(%struct.crypto_cipher* %0, %struct.ieee80211_key* %1, %struct.sk_buff* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.crypto_cipher*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16 x i32], align 16
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %6, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %16 = call i32 @ieee80211_get_tkip_p2k(i32* %13, %struct.sk_buff* %14, i32* %15)
  %17 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %19 = load i32*, i32** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @ieee80211_wep_encrypt_data(%struct.crypto_cipher* %17, i32* %18, i32 16, i32* %19, i64 %20)
  ret i32 %21
}

declare dso_local i32 @ieee80211_get_tkip_p2k(i32*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @ieee80211_wep_encrypt_data(%struct.crypto_cipher*, i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
