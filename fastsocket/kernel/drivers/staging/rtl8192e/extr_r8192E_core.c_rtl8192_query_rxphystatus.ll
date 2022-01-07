; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.r8192_priv = type { i64, %struct.TYPE_10__, i64*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64*, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.ieee80211_rx_stats = type { i32, i32, i64, i32, i32, i32*, i8*, i64, i8, i64, i64*, i8, i64 }
%struct.TYPE_13__ = type { i32*, i64*, i32, i64*, i64 }
%struct.TYPE_14__ = type { i64*, i32, i64 }
%struct.TYPE_15__ = type { i32 }

@rtl8192_query_rxphystatus.check_reg824 = internal global i64 0, align 8
@rtl8192_query_rxphystatus.reg824_bit9 = internal global i64 0, align 8
@rFPGA0_XA_HSSIParameter2 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_MAX = common dso_local global i64 0, align 8
@DESC90_RATEMCS8 = common dso_local global i64 0, align 8
@DESC90_RATEMCS15 = common dso_local global i64 0, align 8
@DM_RxPathSelTable = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@EVM = common dso_local global i32 0, align 4
@RF_2T4R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*, %struct.ieee80211_rx_stats*, i32, %struct.TYPE_12__*, %struct.ieee80211_rx_stats*, i32, i32, i32, i32)* @rtl8192_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_query_rxphystatus(%struct.r8192_priv* %0, %struct.ieee80211_rx_stats* %1, i32 %2, %struct.TYPE_12__* %3, %struct.ieee80211_rx_stats* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca %struct.ieee80211_rx_stats*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.ieee80211_rx_stats*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca [4 x i8], align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  store %struct.r8192_priv* %0, %struct.r8192_priv** %10, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %13, align 8
  store %struct.ieee80211_rx_stats* %4, %struct.ieee80211_rx_stats** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i8 0, i8* %29, align 1
  store i64 0, i64* %35, align 8
  store i64 0, i64* %36, align 8
  store i64 0, i64* %37, align 8
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = call i64 @rx_hal_is_cck_rate(%struct.TYPE_12__* %45)
  store i64 %46, i64* %36, align 8
  %47 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %48 = call i32 @memset(%struct.ieee80211_rx_stats* %47, i32 0, i32 88)
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %58 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load i64, i64* %36, align 8
  %60 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %62, i32 0, i32 2
  store i64 %59, i64* %63, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %67, i32 0, i32 3
  store i32 %64, i32* %68, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %72, i32 0, i32 4
  store i32 %69, i32* %73, align 4
  %74 = load i64, i64* @rtl8192_query_rxphystatus.check_reg824, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %9
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %83 = call i64 @rtl8192_QueryBBReg(i32 %81, i32 %82, i32 512)
  store i64 %83, i64* @rtl8192_query_rxphystatus.reg824_bit9, align 8
  store i64 1, i64* @rtl8192_query_rxphystatus.check_reg824, align 8
  br label %84

84:                                               ; preds = %76, %9
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = bitcast %struct.TYPE_12__* %85 to i64*
  store i64* %86, i64** %22, align 8
  %87 = load i64*, i64** %22, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 4
  store i64* %88, i64** %22, align 8
  %89 = load i64*, i64** %22, align 8
  %90 = bitcast i64* %89 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %20, align 8
  %91 = load i64*, i64** %22, align 8
  %92 = bitcast i64* %91 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %19, align 8
  %93 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %94 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 -1, i32* %96, align 4
  %97 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %98 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 -1, i32* %100, align 4
  %101 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %102 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 -1, i32* %104, align 4
  %105 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 -1, i32* %108, align 4
  %109 = load i64, i64* %36, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %265

111:                                              ; preds = %84
  %112 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %113 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load i64, i64* @rtl8192_query_rxphystatus.reg824_bit9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %157, label %119

119:                                              ; preds = %111
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 192
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %38, align 8
  %125 = load i64, i64* %38, align 8
  %126 = lshr i64 %125, 6
  store i64 %126, i64* %38, align 8
  %127 = load i64, i64* %38, align 8
  switch i64 %127, label %156 [
    i64 3, label %128
    i64 2, label %135
    i64 1, label %142
    i64 0, label %149
  ]

128:                                              ; preds = %119
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 62
  %133 = sub nsw i32 -35, %132
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %29, align 1
  br label %156

135:                                              ; preds = %119
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 62
  %140 = sub nsw i32 -23, %139
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %29, align 1
  br label %156

142:                                              ; preds = %119
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 62
  %147 = sub nsw i32 -11, %146
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %29, align 1
  br label %156

149:                                              ; preds = %119
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, 62
  %154 = sub nsw i32 8, %153
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %29, align 1
  br label %156

156:                                              ; preds = %119, %149, %142, %135, %128
  br label %199

157:                                              ; preds = %111
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 96
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %38, align 8
  %163 = load i64, i64* %38, align 8
  %164 = lshr i64 %163, 5
  store i64 %164, i64* %38, align 8
  %165 = load i64, i64* %38, align 8
  switch i64 %165, label %198 [
    i64 3, label %166
    i64 2, label %174
    i64 1, label %182
    i64 0, label %190
  ]

166:                                              ; preds = %157
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, 31
  %171 = shl i32 %170, 1
  %172 = sub nsw i32 -35, %171
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %29, align 1
  br label %198

174:                                              ; preds = %157
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, 31
  %179 = shl i32 %178, 1
  %180 = sub nsw i32 -23, %179
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %29, align 1
  br label %198

182:                                              ; preds = %157
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, 31
  %187 = shl i32 %186, 1
  %188 = sub nsw i32 -11, %187
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %29, align 1
  br label %198

190:                                              ; preds = %157
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, 31
  %195 = shl i32 %194, 1
  %196 = sub nsw i32 -8, %195
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %29, align 1
  br label %198

198:                                              ; preds = %157, %190, %182, %174, %166
  br label %199

199:                                              ; preds = %198, %156
  %200 = load i8, i8* %29, align 1
  %201 = call i64 @rtl819x_query_rxpwrpercentage(i8 signext %200)
  store i64 %201, i64* %33, align 8
  %202 = load i64, i64* %33, align 8
  %203 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %204 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %203, i32 0, i32 7
  store i64 %202, i64* %204, align 8
  %205 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %206 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %205, i32 0, i32 7
  store i64 %202, i64* %206, align 8
  %207 = load i8, i8* %29, align 1
  %208 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %209 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %208, i32 0, i32 8
  store i8 %207, i8* %209, align 8
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %264

212:                                              ; preds = %199
  %213 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %214 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = icmp ugt i64 %215, 40
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  store i64 100, i64* %39, align 8
  br label %240

218:                                              ; preds = %212
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %39, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ugt i64 %224, 64
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  store i64 0, i64* %39, align 8
  br label %239

227:                                              ; preds = %218
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ult i64 %230, 20
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  store i64 100, i64* %39, align 8
  br label %238

233:                                              ; preds = %227
  %234 = load i64, i64* %39, align 8
  %235 = sub i64 64, %234
  %236 = mul i64 %235, 100
  %237 = udiv i64 %236, 44
  store i64 %237, i64* %39, align 8
  br label %238

238:                                              ; preds = %233, %232
  br label %239

239:                                              ; preds = %238, %226
  br label %240

240:                                              ; preds = %239, %217
  %241 = load i64, i64* %39, align 8
  %242 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %243 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %242, i32 0, i32 9
  store i64 %241, i64* %243, align 8
  %244 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %245 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %244, i32 0, i32 9
  store i64 %241, i64* %245, align 8
  %246 = load i64, i64* %39, align 8
  %247 = trunc i64 %246 to i32
  %248 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %249 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %248, i32 0, i32 5
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  store i32 %247, i32* %251, align 4
  %252 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %253 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %252, i32 0, i32 5
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  store i32 %247, i32* %255, align 4
  %256 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %257 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %256, i32 0, i32 5
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  store i32 -1, i32* %259, align 4
  %260 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %261 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %260, i32 0, i32 5
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  store i32 -1, i32* %263, align 4
  br label %264

264:                                              ; preds = %240, %199
  br label %477

265:                                              ; preds = %84
  %266 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %267 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  %271 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %271, i64* %23, align 8
  br label %272

272:                                              ; preds = %352, %265
  %273 = load i64, i64* %23, align 8
  %274 = load i64, i64* @RF90_PATH_MAX, align 8
  %275 = icmp ult i64 %273, %274
  br i1 %275, label %276, label %355

276:                                              ; preds = %272
  %277 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %278 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %277, i32 0, i32 2
  %279 = load i64*, i64** %278, align 8
  %280 = load i64, i64* %23, align 8
  %281 = getelementptr inbounds i64, i64* %279, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %276
  %285 = load i64, i64* %37, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %37, align 8
  br label %287

287:                                              ; preds = %284, %276
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* %23, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, 63
  %295 = mul nsw i32 %294, 2
  %296 = sub nsw i32 %295, 110
  %297 = trunc i32 %296 to i8
  %298 = load i64, i64* %23, align 8
  %299 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i64 0, i64 %298
  store i8 %297, i8* %299, align 1
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  %303 = load i64, i64* %23, align 8
  %304 = getelementptr inbounds i64, i64* %302, i64 %303
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %25, align 8
  %306 = load i64, i64* %25, align 8
  %307 = trunc i64 %306 to i8
  store i8 %307, i8* %30, align 1
  %308 = load i8, i8* %30, align 1
  %309 = sext i8 %308 to i32
  %310 = sdiv i32 %309, 2
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %30, align 1
  %312 = load i8, i8* %30, align 1
  %313 = sext i8 %312 to i64
  %314 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %315 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = load i64*, i64** %316, align 8
  %318 = load i64, i64* %23, align 8
  %319 = getelementptr inbounds i64, i64* %317, i64 %318
  store i64 %313, i64* %319, align 8
  %320 = load i64, i64* %23, align 8
  %321 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i64 0, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = call i64 @rtl819x_query_rxpwrpercentage(i8 signext %322)
  store i64 %323, i64* %34, align 8
  %324 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %325 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %324, i32 0, i32 2
  %326 = load i64*, i64** %325, align 8
  %327 = load i64, i64* %23, align 8
  %328 = getelementptr inbounds i64, i64* %326, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %287
  %332 = load i64, i64* %34, align 8
  %333 = load i64, i64* %35, align 8
  %334 = add i64 %333, %332
  store i64 %334, i64* %35, align 8
  br label %335

335:                                              ; preds = %331, %287
  %336 = load i32, i32* %15, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %335
  %339 = load i64, i64* %34, align 8
  %340 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %341 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %340, i32 0, i32 10
  %342 = load i64*, i64** %341, align 8
  %343 = load i64, i64* %23, align 8
  %344 = getelementptr inbounds i64, i64* %342, i64 %343
  store i64 %339, i64* %344, align 8
  %345 = load i64, i64* %34, align 8
  %346 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %347 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %346, i32 0, i32 10
  %348 = load i64*, i64** %347, align 8
  %349 = load i64, i64* %23, align 8
  %350 = getelementptr inbounds i64, i64* %348, i64 %349
  store i64 %345, i64* %350, align 8
  br label %351

351:                                              ; preds = %338, %335
  br label %352

352:                                              ; preds = %351
  %353 = load i64, i64* %23, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %23, align 8
  br label %272

355:                                              ; preds = %272
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = ashr i32 %358, 1
  %360 = and i32 %359, 127
  %361 = sub nsw i32 %360, 106
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %29, align 1
  %363 = load i8, i8* %29, align 1
  %364 = call i64 @rtl819x_query_rxpwrpercentage(i8 signext %363)
  store i64 %364, i64* %33, align 8
  %365 = load i64, i64* %33, align 8
  %366 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %367 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %366, i32 0, i32 7
  store i64 %365, i64* %367, align 8
  %368 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %369 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %368, i32 0, i32 7
  store i64 %365, i64* %369, align 8
  %370 = load i8, i8* %29, align 1
  %371 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %372 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %371, i32 0, i32 11
  store i8 %370, i8* %372, align 8
  %373 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %374 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %373, i32 0, i32 11
  store i8 %370, i8* %374, align 8
  %375 = load i8, i8* %29, align 1
  %376 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %377 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %376, i32 0, i32 8
  store i8 %375, i8* %377, align 8
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %395

382:                                              ; preds = %355
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @DESC90_RATEMCS8, align 8
  %387 = icmp sge i64 %385, %386
  br i1 %387, label %388, label %395

388:                                              ; preds = %382
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @DESC90_RATEMCS15, align 8
  %393 = icmp sle i64 %391, %392
  br i1 %393, label %394, label %395

394:                                              ; preds = %388
  store i64 2, i64* %24, align 8
  br label %396

395:                                              ; preds = %388, %382, %355
  store i64 1, i64* %24, align 8
  br label %396

396:                                              ; preds = %395, %394
  store i64 0, i64* %23, align 8
  br label %397

397:                                              ; preds = %443, %396
  %398 = load i64, i64* %23, align 8
  %399 = load i64, i64* %24, align 8
  %400 = icmp ult i64 %398, %399
  br i1 %400, label %401, label %446

401:                                              ; preds = %397
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 3
  %404 = load i64*, i64** %403, align 8
  %405 = load i64, i64* %23, align 8
  %406 = getelementptr inbounds i64, i64* %404, i64 %405
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %26, align 8
  %408 = load i64, i64* %26, align 8
  %409 = trunc i64 %408 to i8
  store i8 %409, i8* %31, align 1
  %410 = load i8, i8* %31, align 1
  %411 = sext i8 %410 to i32
  %412 = sdiv i32 %411, 2
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %31, align 1
  %414 = load i8, i8* %31, align 1
  %415 = call i64 @rtl819x_evm_dbtopercentage(i8 signext %414)
  store i64 %415, i64* %32, align 8
  %416 = load i32, i32* %15, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %442

418:                                              ; preds = %401
  %419 = load i64, i64* %23, align 8
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %428

421:                                              ; preds = %418
  %422 = load i64, i64* %32, align 8
  %423 = and i64 %422, 255
  %424 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %425 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %424, i32 0, i32 9
  store i64 %423, i64* %425, align 8
  %426 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %427 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %426, i32 0, i32 9
  store i64 %423, i64* %427, align 8
  br label %428

428:                                              ; preds = %421, %418
  %429 = load i64, i64* %32, align 8
  %430 = and i64 %429, 255
  %431 = trunc i64 %430 to i32
  %432 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %433 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %432, i32 0, i32 5
  %434 = load i32*, i32** %433, align 8
  %435 = load i64, i64* %23, align 8
  %436 = getelementptr inbounds i32, i32* %434, i64 %435
  store i32 %431, i32* %436, align 4
  %437 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %438 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %437, i32 0, i32 5
  %439 = load i32*, i32** %438, align 8
  %440 = load i64, i64* %23, align 8
  %441 = getelementptr inbounds i32, i32* %439, i64 %440
  store i32 %431, i32* %441, align 4
  br label %442

442:                                              ; preds = %428, %401
  br label %443

443:                                              ; preds = %442
  %444 = load i64, i64* %23, align 8
  %445 = add i64 %444, 1
  store i64 %445, i64* %23, align 8
  br label %397

446:                                              ; preds = %397
  %447 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %448 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %447, i32 0, i32 4
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %27, align 8
  %450 = bitcast i64* %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %450, %struct.TYPE_15__** %21, align 8
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %468

455:                                              ; preds = %446
  %456 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %457 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 1
  %459 = load i32*, i32** %458, align 8
  %460 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = add nsw i32 1, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %459, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %465, align 4
  br label %476

468:                                              ; preds = %446
  %469 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %470 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 0
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %473, align 4
  br label %476

476:                                              ; preds = %468, %455
  br label %477

477:                                              ; preds = %476, %264
  %478 = load i64, i64* %36, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %487

480:                                              ; preds = %477
  %481 = load i64, i64* %33, align 8
  %482 = call i64 @rtl819x_signal_scale_mapping(i64 %481)
  %483 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %484 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %483, i32 0, i32 12
  store i64 %482, i64* %484, align 8
  %485 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %486 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %485, i32 0, i32 12
  store i64 %482, i64* %486, align 8
  br label %500

487:                                              ; preds = %477
  %488 = load i64, i64* %37, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %499

490:                                              ; preds = %487
  %491 = load i64, i64* %37, align 8
  %492 = load i64, i64* %35, align 8
  %493 = udiv i64 %492, %491
  store i64 %493, i64* %35, align 8
  %494 = call i64 @rtl819x_signal_scale_mapping(i64 %493)
  %495 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %496 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %495, i32 0, i32 12
  store i64 %494, i64* %496, align 8
  %497 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %498 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %497, i32 0, i32 12
  store i64 %494, i64* %498, align 8
  br label %499

499:                                              ; preds = %490, %487
  br label %500

500:                                              ; preds = %499, %480
  ret void
}

declare dso_local i64 @rx_hal_is_cck_rate(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_stats*, i32, i32) #1

declare dso_local i64 @rtl8192_QueryBBReg(i32, i32, i32) #1

declare dso_local i64 @rtl819x_query_rxpwrpercentage(i8 signext) #1

declare dso_local i64 @rtl819x_evm_dbtopercentage(i8 signext) #1

declare dso_local i64 @rtl819x_signal_scale_mapping(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
