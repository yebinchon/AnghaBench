; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_add_ext_srates_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_add_ext_srates_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_7__, %struct.ieee80211_local* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_ext_srates_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %10, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %16, align 4
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %31, i64 %33
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %34, align 8
  store %struct.ieee80211_supported_band* %35, %struct.ieee80211_supported_band** %11, align 8
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 8
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %42, 8
  store i32 %43, i32* %14, align 4
  br label %45

44:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @skb_tailroom(%struct.sk_buff* %46)
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 2
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %104

54:                                               ; preds = %45
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %54
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 2
  %61 = call i32* @skb_put(%struct.sk_buff* %58, i32 %60)
  store i32* %61, i32** %15, align 8
  %62 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %63 = load i32*, i32** %15, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %15, align 8
  store i32 %62, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %15, align 8
  store i32 %65, i32* %66, align 4
  store i32 8, i32* %13, align 4
  br label %68

68:                                               ; preds = %99, %57
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %71 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %68
  store i32 0, i32* %17, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 128, i32* %17, align 4
  br label %84

84:                                               ; preds = %83, %77, %74
  %85 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %86 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sdiv i32 %94, 5
  %96 = or i32 %93, %95
  %97 = load i32*, i32** %15, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %15, align 8
  store i32 %96, i32* %97, align 4
  br label %99

99:                                               ; preds = %84
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %68

102:                                              ; preds = %68
  br label %103

103:                                              ; preds = %102, %54
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %51
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
