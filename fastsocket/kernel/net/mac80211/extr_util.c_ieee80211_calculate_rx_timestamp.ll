; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_calculate_rx_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_calculate_rx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i64, i64, i32 }
%struct.rate_info = type { i64, i32, i32, i32 }

@RX_FLAG_HT = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@RX_FLAG_40MHZ = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@RX_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@RX_FLAG_VHT = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@RX_FLAG_80MHZ = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RX_FLAG_80P80MHZ = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_80P80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RX_FLAG_160MHZ = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_calculate_rx_timestamp(%struct.ieee80211_local* %0, %struct.ieee80211_rx_status* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rate_info, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %18 = call i32 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %194

25:                                               ; preds = %4
  %26 = call i32 @memset(%struct.rate_info* %11, i32 0, i32 24)
  %27 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RX_FLAG_HT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %25
  %34 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %39 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load i32, i32* @RATE_INFO_FLAGS_40_MHZ_WIDTH, align 4
  %50 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %33
  %54 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %62 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %53
  br label %169

66:                                               ; preds = %25
  %67 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RX_FLAG_VHT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %146

73:                                               ; preds = %66
  %74 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %75 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 3
  store i32 %84, i32* %85, align 8
  %86 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RX_FLAG_40MHZ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %73
  %93 = load i32, i32* @RATE_INFO_FLAGS_40_MHZ_WIDTH, align 4
  %94 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %73
  %98 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RX_FLAG_80MHZ, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i32, i32* @RATE_INFO_FLAGS_80_MHZ_WIDTH, align 4
  %106 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %104, %97
  %110 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %111 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RX_FLAG_80P80MHZ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i32, i32* @RATE_INFO_FLAGS_80P80_MHZ_WIDTH, align 4
  %118 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %109
  %122 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RX_FLAG_160MHZ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load i32, i32* @RATE_INFO_FLAGS_160_MHZ_WIDTH, align 4
  %130 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %128, %121
  %134 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RX_FLAG_SHORT_GI, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %142 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %140, %133
  br label %168

146:                                              ; preds = %66
  %147 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %148 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %151, align 8
  %153 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %154 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %152, i64 %155
  %157 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %156, align 8
  store %struct.ieee80211_supported_band* %157, %struct.ieee80211_supported_band** %13, align 8
  %158 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %159 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %162 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 1
  store i32 %166, i32* %167, align 8
  br label %168

168:                                              ; preds = %146, %145
  br label %169

169:                                              ; preds = %168, %65
  %170 = call i32 @cfg80211_calculate_bitrate(%struct.rate_info* %11)
  store i32 %170, i32* %12, align 4
  %171 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %172 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %169
  %178 = load i32, i32* %8, align 4
  %179 = mul i32 %178, 8
  %180 = mul i32 %179, 10
  %181 = load i32, i32* %12, align 4
  %182 = udiv i32 %180, %181
  %183 = load i32, i32* %10, align 4
  %184 = sub i32 %183, %182
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %177, %169
  %186 = load i32, i32* %9, align 4
  %187 = mul i32 %186, 8
  %188 = mul i32 %187, 10
  %189 = load i32, i32* %12, align 4
  %190 = udiv i32 %188, %189
  %191 = load i32, i32* %10, align 4
  %192 = add i32 %191, %190
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %185, %24
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status*) #1

declare dso_local i32 @memset(%struct.rate_info*, i32, i32) #1

declare dso_local i32 @cfg80211_calculate_bitrate(%struct.rate_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
