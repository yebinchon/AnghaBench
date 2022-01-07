; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_sta_set_rate_info_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_sta_set_rate_info_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i64, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rate_info = type { i64, i32, i32, i32 }

@RX_FLAG_HT = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@RX_FLAG_VHT = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@RX_FLAG_80MHZ = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RX_FLAG_80P80MHZ = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_80P80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RX_FLAG_160MHZ = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_160_MHZ_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sta_set_rate_info_rx(%struct.sta_info* %0, %struct.rate_info* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.rate_info*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.rate_info* %1, %struct.rate_info** %4, align 8
  %6 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %7 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %6, i32 0, i32 1
  store i32 0, i32* %7, align 8
  %8 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RX_FLAG_HT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %16 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %17 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %24 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %75

25:                                               ; preds = %2
  %26 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RX_FLAG_VHT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %34 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %35 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %42 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %47 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %74

48:                                               ; preds = %25
  %49 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 3
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %55, align 8
  %57 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ieee80211_get_sdata_band(i32 %59)
  %61 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %56, i64 %60
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %61, align 8
  store %struct.ieee80211_supported_band* %62, %struct.ieee80211_supported_band** %5, align 8
  %63 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %73 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %48, %32
  br label %75

75:                                               ; preds = %74, %14
  %76 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @RATE_INFO_FLAGS_40_MHZ_WIDTH, align 4
  %84 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %85 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %75
  %89 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %97 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %98 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %103 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @RX_FLAG_80MHZ, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @RATE_INFO_FLAGS_80_MHZ_WIDTH, align 4
  %110 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %111 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %116 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @RX_FLAG_80P80MHZ, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i32, i32* @RATE_INFO_FLAGS_80P80_MHZ_WIDTH, align 4
  %123 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %124 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %114
  %128 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %129 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @RX_FLAG_160MHZ, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load i32, i32* @RATE_INFO_FLAGS_160_MHZ_WIDTH, align 4
  %136 = load %struct.rate_info*, %struct.rate_info** %4, align 8
  %137 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %127
  ret void
}

declare dso_local i64 @ieee80211_get_sdata_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
