; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_apply_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_apply_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32*, i32*, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_tx_info = type { i64 }
%struct.ieee80211_tx_rate = type { i64 }

@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, %struct.ieee80211_supported_band*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32)* @rate_control_apply_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_apply_mask(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sta* %1, %struct.ieee80211_supported_band* %2, %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_rate* %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_tx_rate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %8, align 8
  store %struct.ieee80211_supported_band* %2, %struct.ieee80211_supported_band** %9, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %10, align 8
  store %struct.ieee80211_tx_rate* %4, %struct.ieee80211_tx_rate** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %6
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 1, i32* %19, align 4
  br label %141

51:                                               ; preds = %47, %6
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nuw i64 4, %21
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i32* %23, i32 %62, i32 %64)
  br label %70

66:                                               ; preds = %51
  %67 = mul nuw i64 4, %21
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(i32* %23, i32 255, i32 %68)
  br label %70

70:                                               ; preds = %66, %54
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %72 = icmp ne %struct.ieee80211_sta* %71, null
  br i1 %72, label %73, label %108

73:                                               ; preds = %70
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %17, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %104, %73
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nuw i64 4, %21
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %23, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %89
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %84

107:                                              ; preds = %84
  br label %108

108:                                              ; preds = %107, %70
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %137, %108
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %115
  %120 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %120, i64 %122
  %124 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %140

128:                                              ; preds = %119
  %129 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %129, i64 %131
  %133 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @rate_idx_match_mask(%struct.ieee80211_tx_rate* %132, %struct.ieee80211_supported_band* %133, i32 %134, i32 %135, i32* %23)
  br label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %115

140:                                              ; preds = %127, %115
  store i32 0, i32* %19, align 4
  br label %141

141:                                              ; preds = %140, %50
  %142 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %19, align 4
  switch i32 %143, label %145 [
    i32 0, label %144
    i32 1, label %144
  ]

144:                                              ; preds = %141, %141
  ret void

145:                                              ; preds = %141
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @rate_idx_match_mask(%struct.ieee80211_tx_rate*, %struct.ieee80211_supported_band*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
