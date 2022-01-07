; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_add_srates_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_add_srates_ie.c"
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
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_srates_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
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
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 8, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i32 @skb_tailroom(%struct.sk_buff* %43)
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 2
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %95

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 2
  %55 = call i32* @skb_put(%struct.sk_buff* %52, i32 %54)
  store i32* %55, i32** %15, align 8
  %56 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %15, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %91, %51
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  store i32 0, i32* %17, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 128, i32* %17, align 4
  br label %76

76:                                               ; preds = %75, %69, %66
  %77 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %78 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sdiv i32 %86, 5
  %88 = or i32 %85, %87
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %15, align 8
  store i32 %88, i32* %89, align 4
  br label %91

91:                                               ; preds = %76
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %62

94:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %48
  %96 = load i32, i32* %5, align 4
  ret i32 %96
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
