; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_wep_encrypt_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_wep_encrypt_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }

@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*)* @wep_encrypt_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wep_encrypt_skb(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_tx_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %8)
  store %struct.ieee80211_tx_info* %9, %struct.ieee80211_tx_info** %6, align 8
  %10 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %12, align 8
  store %struct.ieee80211_key_conf* %13, %struct.ieee80211_key_conf** %7, align 8
  %14 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %15 = icmp ne %struct.ieee80211_key_conf* %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ieee80211_wep_encrypt(i32 %19, %struct.sk_buff* %20, i32 %26, i32 %32, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %80

42:                                               ; preds = %16
  br label %79

43:                                               ; preds = %2
  %44 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %50, %43
  %58 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ieee80211_wep_add_iv(i32 %60, %struct.sk_buff* %61, i32 %67, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %80

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %50
  br label %79

79:                                               ; preds = %78, %42
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %76, %41
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_wep_encrypt(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ieee80211_wep_add_iv(i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
