; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_fixup_ratelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_fixup_ratelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i64, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.ieee80211_tx_rate = type { i32, i64 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_vif*, %struct.ieee80211_supported_band*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32)* @rate_fixup_ratelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_fixup_ratelist(%struct.ieee80211_vif* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_rate* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_tx_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_rate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_tx_rate* %3, %struct.ieee80211_tx_rate** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %16, i64 0
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %101, label %23

23:                                               ; preds = %5
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %14, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i64 @ffs(i32 %32)
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i64 [ %33, %30 ], [ 0, %34 ]
  store i64 %36, i64* %15, align 8
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %37, i32 0, i32 1
  %39 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %38, align 8
  %40 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %40, i64 0
  %42 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %39, i64 %43
  store %struct.ieee80211_rate* %44, %struct.ieee80211_rate** %11, align 8
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %93, %35
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %96

51:                                               ; preds = %45
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %93

58:                                               ; preds = %51
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 1
  %61 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %61, i64 %63
  %65 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %93

72:                                               ; preds = %58
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %73, i32 0, i32 1
  %75 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %75, i64 %76
  %78 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %80, i32 0, i32 1
  %82 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %82, i64 %84
  %86 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %79, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %72
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %15, align 8
  br label %92

92:                                               ; preds = %89, %72
  br label %93

93:                                               ; preds = %92, %71, %57
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %45

96:                                               ; preds = %45
  %97 = load i64, i64* %15, align 8
  %98 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %5
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %292, %101
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %295

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %110, i64 %112
  %114 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %113, i32 0, i32 1
  store i64 -1, i64* %114, align 8
  br label %292

115:                                              ; preds = %106
  %116 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %116, i64 %118
  %120 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 1, i32* %12, align 4
  br label %292

124:                                              ; preds = %115
  %125 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %125, i64 %127
  %129 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %169

134:                                              ; preds = %124
  %135 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %135, i64 %137
  %139 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ugt i64 %140, 76
  %142 = zext i1 %141 to i32
  %143 = call i32 @WARN_ON(i32 %142)
  %144 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %144, i64 %146
  %148 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %134
  %154 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %155 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %161 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %161, i64 %163
  %165 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %160
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %159, %153, %134
  br label %292

169:                                              ; preds = %124
  %170 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %170, i64 %172
  %174 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %169
  %180 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %180, i64 %182
  %184 = call i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate* %183)
  %185 = icmp sgt i32 %184, 9
  %186 = zext i1 %185 to i32
  %187 = call i32 @WARN_ON(i32 %186)
  br label %292

188:                                              ; preds = %169
  %189 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %190 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %188
  %195 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %196 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %196, i64 %198
  %200 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %195
  store i32 %202, i32* %200, align 8
  %203 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %204 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  store i32 0, i32* %205, align 8
  br label %206

206:                                              ; preds = %194, %188
  %207 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %207, i64 %209
  %211 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %214 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = icmp uge i64 %212, %216
  %218 = zext i1 %217 to i32
  %219 = call i64 @WARN_ON_ONCE(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %206
  %222 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %222, i64 %224
  %226 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %225, i32 0, i32 1
  store i64 -1, i64* %226, align 8
  br label %292

227:                                              ; preds = %206
  %228 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %229 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %228, i32 0, i32 1
  %230 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %229, align 8
  %231 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %231, i64 %233
  %235 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %230, i64 %236
  store %struct.ieee80211_rate* %237, %struct.ieee80211_rate** %11, align 8
  %238 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %239 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %227
  %244 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %245 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %243
  %251 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %252 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %252, i64 %254
  %256 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %251
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %250, %243, %227
  %260 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %260, i64 %262
  %264 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %291, label %269

269:                                              ; preds = %259
  %270 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %271 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %291

275:                                              ; preds = %269
  %276 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %277 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %275
  %283 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %284 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %284, i64 %286
  %288 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %283
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %282, %275, %269, %259
  br label %292

292:                                              ; preds = %291, %221, %179, %168, %123, %109
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %13, align 4
  br label %102

295:                                              ; preds = %102
  ret void
}

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
