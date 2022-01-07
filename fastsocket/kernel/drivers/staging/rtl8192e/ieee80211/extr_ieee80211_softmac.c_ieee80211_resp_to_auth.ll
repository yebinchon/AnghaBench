; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_resp_to_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_resp_to_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_resp_to_auth(%struct.ieee80211_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.sk_buff* @ieee80211_auth_resp(%struct.ieee80211_device* %8, i32 %9, i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %17 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %15, %struct.ieee80211_device* %16)
  br label %18

18:                                               ; preds = %14, %3
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_auth_resp(%struct.ieee80211_device*, i32, i32*) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.ieee80211_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
