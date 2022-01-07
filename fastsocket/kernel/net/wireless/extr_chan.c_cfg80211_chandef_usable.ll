; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_usable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_vht_cap = type { i32, i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_40MHZ_INTOLERANT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_OFDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_chandef_usable(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %9 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %13 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %183

20:                                               ; preds = %3
  %21 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %22 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %22, align 8
  %24 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %25 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.ieee80211_sta_ht_cap* %31, %struct.ieee80211_sta_ht_cap** %8, align 8
  %32 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %33 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %33, align 8
  %35 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %36 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.ieee80211_sta_vht_cap* %42, %struct.ieee80211_sta_vht_cap** %9, align 8
  %43 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %44 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %11, align 4
  %48 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %49 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %150 [
    i32 132, label %51
    i32 131, label %58
    i32 130, label %59
    i32 128, label %113
    i32 129, label %122
    i32 133, label %132
  ]

51:                                               ; preds = %20
  %52 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %183

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %20, %57
  store i32 20, i32* %10, align 4
  br label %152

59:                                               ; preds = %20
  store i32 40, i32* %10, align 4
  %60 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %183

65:                                               ; preds = %59
  %66 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IEEE80211_HT_CAP_40MHZ_INTOLERANT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72, %65
  store i32 0, i32* %4, align 4
  br label %183

80:                                               ; preds = %72
  %81 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %82 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %88 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %183

96:                                               ; preds = %86, %80
  %97 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %98 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %104 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %183

112:                                              ; preds = %102, %96
  br label %152

113:                                              ; preds = %20
  %114 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %183

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %20, %121
  %123 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %183

128:                                              ; preds = %122
  %129 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  store i32 80, i32* %10, align 4
  br label %152

132:                                              ; preds = %20
  %133 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %134 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %183

138:                                              ; preds = %132
  %139 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %140 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %183

146:                                              ; preds = %138
  %147 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  store i32 160, i32* %10, align 4
  br label %152

150:                                              ; preds = %20
  %151 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %4, align 4
  br label %183

152:                                              ; preds = %146, %128, %112, %58
  %153 = load i32, i32* %10, align 4
  %154 = icmp sgt i32 %153, 20
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* @IEEE80211_CHAN_NO_OFDM, align 4
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %152
  %160 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %161 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %162 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @cfg80211_secondary_chans_ok(%struct.wiphy* %160, i32 %163, i32 %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %183

169:                                              ; preds = %159
  %170 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %171 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  store i32 1, i32* %4, align 4
  br label %183

175:                                              ; preds = %169
  %176 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %177 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %178 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @cfg80211_secondary_chans_ok(%struct.wiphy* %176, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %175, %174, %168, %150, %145, %137, %127, %120, %111, %95, %79, %64, %56, %19
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cfg80211_secondary_chans_ok(%struct.wiphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
