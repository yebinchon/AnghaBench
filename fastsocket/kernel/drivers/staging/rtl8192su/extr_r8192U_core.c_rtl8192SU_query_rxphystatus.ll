; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_query_rxphystatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_query_rxphystatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { %struct.TYPE_8__, i64*, i32 }
%struct.TYPE_8__ = type { i64*, i32*, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32, i32, i32* }
%struct.ieee80211_rx_stats = type { i32, i32, i32, i32, i32, i32*, i32, i8, i32, i32*, i8, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF90_PATH_MAX = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RF-%d RXPWR=%x RSSI=%d\0A\00", align 1
@DESC92S_RATEMCS8 = common dso_local global i32 0, align 4
@DESC92S_RATEMCS15 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"RXRATE=%x RXEVM=%x EVM=%s%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*, %struct.ieee80211_rx_stats*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.ieee80211_rx_stats*, i32, i32, i32, i32)* @rtl8192SU_query_rxphystatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192SU_query_rxphystatus(%struct.r8192_priv* %0, %struct.ieee80211_rx_stats* %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3, %struct.ieee80211_rx_stats* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca %struct.ieee80211_rx_stats*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.ieee80211_rx_stats*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [4 x i8], align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.r8192_priv* %0, %struct.r8192_priv** %10, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %11, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %13, align 8
  store %struct.ieee80211_rx_stats* %4, %struct.ieee80211_rx_stats** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i8 0, i8* %25, align 1
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = call i32 @rx_hal_is_cck_rate(%struct.TYPE_10__* %39)
  store i32 %40, i32* %30, align 4
  %41 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %42 = call i32 @memset(%struct.ieee80211_rx_stats* %41, i32 0, i32 64)
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %30, align 4
  %54 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %61, i32 0, i32 3
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %66, i32 0, i32 4
  store i32 %63, i32* %67, align 8
  %68 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 -1, i32* %71, align 4
  %72 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 -1, i32* %75, align 4
  %76 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %77 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 -1, i32* %79, align 4
  %80 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 -1, i32* %83, align 4
  %84 = load i32, i32* %30, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %239

86:                                               ; preds = %9
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %88 = bitcast %struct.TYPE_9__* %87 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %19, align 8
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %135, label %98

98:                                               ; preds = %86
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 192
  store i32 %102, i32* %32, align 4
  %103 = load i32, i32* %32, align 4
  %104 = ashr i32 %103, 6
  store i32 %104, i32* %32, align 4
  %105 = load i32, i32* %32, align 4
  switch i32 %105, label %134 [
    i32 3, label %106
    i32 2, label %113
    i32 1, label %120
    i32 0, label %127
  ]

106:                                              ; preds = %98
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 62
  %111 = sub nsw i32 -35, %110
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %25, align 1
  br label %134

113:                                              ; preds = %98
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 62
  %118 = sub nsw i32 -23, %117
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %25, align 1
  br label %134

120:                                              ; preds = %98
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 62
  %125 = sub nsw i32 -11, %124
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %25, align 1
  br label %134

127:                                              ; preds = %98
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 62
  %132 = sub nsw i32 8, %131
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %25, align 1
  br label %134

134:                                              ; preds = %98, %127, %120, %113, %106
  br label %178

135:                                              ; preds = %86
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 96
  store i32 %141, i32* %32, align 4
  %142 = load i32, i32* %32, align 4
  %143 = ashr i32 %142, 5
  store i32 %143, i32* %32, align 4
  %144 = load i32, i32* %32, align 4
  switch i32 %144, label %177 [
    i32 3, label %145
    i32 2, label %153
    i32 1, label %161
    i32 0, label %169
  ]

145:                                              ; preds = %135
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 31
  %150 = shl i32 %149, 1
  %151 = sub nsw i32 -35, %150
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %25, align 1
  br label %177

153:                                              ; preds = %135
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 31
  %158 = shl i32 %157, 1
  %159 = sub nsw i32 -23, %158
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %25, align 1
  br label %177

161:                                              ; preds = %135
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 31
  %166 = shl i32 %165, 1
  %167 = sub nsw i32 -11, %166
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %25, align 1
  br label %177

169:                                              ; preds = %135
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 31
  %174 = shl i32 %173, 1
  %175 = sub nsw i32 -8, %174
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %25, align 1
  br label %177

177:                                              ; preds = %135, %169, %161, %153, %145
  br label %178

178:                                              ; preds = %177, %134
  %179 = load i8, i8* %25, align 1
  %180 = call i32 @rtl819x_query_rxpwrpercentage(i8 signext %179)
  store i32 %180, i32* %27, align 4
  %181 = load i32, i32* %27, align 4
  %182 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %183 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 8
  %184 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %185 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %184, i32 0, i32 6
  store i32 %181, i32* %185, align 8
  %186 = load i8, i8* %25, align 1
  %187 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %188 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %187, i32 0, i32 7
  store i8 %186, i8* %188, align 4
  %189 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %190 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = icmp sgt i32 %191, 40
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  store i32 100, i32* %33, align 4
  br label %216

194:                                              ; preds = %178
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %33, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %200, 64
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 0, i32* %33, align 4
  br label %215

203:                                              ; preds = %194
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %206, 20
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 100, i32* %33, align 4
  br label %214

209:                                              ; preds = %203
  %210 = load i32, i32* %33, align 4
  %211 = sub nsw i32 64, %210
  %212 = mul nsw i32 %211, 100
  %213 = sdiv i32 %212, 44
  store i32 %213, i32* %33, align 4
  br label %214

214:                                              ; preds = %209, %208
  br label %215

215:                                              ; preds = %214, %202
  br label %216

216:                                              ; preds = %215, %193
  %217 = load i32, i32* %33, align 4
  %218 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %219 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %218, i32 0, i32 8
  store i32 %217, i32* %219, align 8
  %220 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %221 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %220, i32 0, i32 8
  store i32 %217, i32* %221, align 8
  %222 = load i32, i32* %33, align 4
  %223 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %224 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  store i32 %222, i32* %226, align 4
  %227 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %228 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %227, i32 0, i32 5
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  store i32 %222, i32* %230, align 4
  %231 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %232 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %231, i32 0, i32 5
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  store i32 -1, i32* %234, align 4
  %235 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %236 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  store i32 -1, i32* %238, align 4
  br label %458

239:                                              ; preds = %9
  %240 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %241 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 8
  %245 = load i64, i64* @TRUE, align 8
  %246 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %247 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 1
  store i64 %245, i64* %249, align 8
  %250 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %251 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 0
  store i64 %245, i64* %253, align 8
  %254 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %254, i32* %21, align 4
  br label %255

255:                                              ; preds = %332, %239
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* @RF90_PATH_MAX, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %335

259:                                              ; preds = %255
  %260 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %261 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = load i32, i32* %21, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %259
  %269 = load i32, i32* %31, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %31, align 4
  br label %271

271:                                              ; preds = %268, %259
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %21, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 63
  %280 = mul nsw i32 %279, 2
  %281 = sub nsw i32 %280, 110
  %282 = trunc i32 %281 to i8
  %283 = load i32, i32* %21, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %284
  store i8 %282, i8* %285, align 1
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = call i32 @rtl819x_query_rxpwrpercentage(i8 signext %289)
  store i32 %290, i32* %28, align 4
  %291 = load i32, i32* %28, align 4
  %292 = load i32, i32* %29, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %29, align 4
  %294 = load i32, i32* @COMP_RF, align 4
  %295 = load i32, i32* %21, align 4
  %296 = load i32, i32* %21, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = load i32, i32* %28, align 4
  %301 = call i32 (i32, i8*, i32, i8, ...) @RT_TRACE(i32 %294, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %295, i8 signext %299, i32 %300)
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %21, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sdiv i32 %308, 2
  %310 = sext i32 %309 to i64
  %311 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %312 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %21, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  store i64 %310, i64* %317, align 8
  %318 = load i32, i32* %28, align 4
  %319 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %320 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %319, i32 0, i32 9
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %21, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 %318, i32* %324, align 4
  %325 = load i32, i32* %28, align 4
  %326 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %327 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %326, i32 0, i32 9
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %21, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 %325, i32* %331, align 4
  br label %332

332:                                              ; preds = %271
  %333 = load i32, i32* %21, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %21, align 4
  br label %255

335:                                              ; preds = %255
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = ashr i32 %338, 1
  %340 = and i32 %339, 127
  %341 = sub nsw i32 %340, 106
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %25, align 1
  %343 = load i8, i8* %25, align 1
  %344 = call i32 @rtl819x_query_rxpwrpercentage(i8 signext %343)
  store i32 %344, i32* %27, align 4
  %345 = load i32, i32* %27, align 4
  %346 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %347 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %346, i32 0, i32 6
  store i32 %345, i32* %347, align 8
  %348 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %349 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %348, i32 0, i32 6
  store i32 %345, i32* %349, align 8
  %350 = load i8, i8* %25, align 1
  %351 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %352 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %351, i32 0, i32 10
  store i8 %350, i8* %352, align 8
  %353 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %354 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %353, i32 0, i32 10
  store i8 %350, i8* %354, align 8
  %355 = load i8, i8* %25, align 1
  %356 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %357 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %356, i32 0, i32 7
  store i8 %355, i8* %357, align 4
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %335
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @DESC92S_RATEMCS8, align 4
  %367 = icmp sge i32 %365, %366
  br i1 %367, label %368, label %375

368:                                              ; preds = %362
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @DESC92S_RATEMCS15, align 4
  %373 = icmp sle i32 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  store i32 2, i32* %22, align 4
  br label %376

375:                                              ; preds = %368, %362, %335
  store i32 1, i32* %22, align 4
  br label %376

376:                                              ; preds = %375, %374
  store i32 0, i32* %21, align 4
  br label %377

377:                                              ; preds = %428, %376
  %378 = load i32, i32* %21, align 4
  %379 = load i32, i32* %22, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %431

381:                                              ; preds = %377
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 5
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %21, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @rtl819x_evm_dbtopercentage(i32 %388)
  store i32 %389, i32* %26, align 4
  %390 = load i32, i32* @COMP_RF, align 4
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 5
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %21, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = trunc i32 %400 to i8
  %402 = load i32, i32* %26, align 4
  %403 = call i32 (i32, i8*, i32, i8, ...) @RT_TRACE(i32 %390, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %393, i8 signext %401, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %402)
  %404 = load i32, i32* %21, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %381
  %407 = load i32, i32* %26, align 4
  %408 = and i32 %407, 255
  %409 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %410 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %409, i32 0, i32 8
  store i32 %408, i32* %410, align 8
  %411 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %412 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %411, i32 0, i32 8
  store i32 %408, i32* %412, align 8
  br label %413

413:                                              ; preds = %406, %381
  %414 = load i32, i32* %26, align 4
  %415 = and i32 %414, 255
  %416 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %417 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %416, i32 0, i32 5
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %21, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  store i32 %415, i32* %421, align 4
  %422 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %423 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %422, i32 0, i32 5
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %21, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  store i32 %415, i32* %427, align 4
  br label %428

428:                                              ; preds = %413
  %429 = load i32, i32* %21, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %21, align 4
  br label %377

431:                                              ; preds = %377
  store i32* %23, i32** %20, align 8
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %449

436:                                              ; preds = %431
  %437 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %438 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 1
  %440 = load i32*, i32** %439, align 8
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 4
  %444 = add nsw i32 1, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %440, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 4
  br label %457

449:                                              ; preds = %431
  %450 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %451 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 1
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 0
  %455 = load i32, i32* %454, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %454, align 4
  br label %457

457:                                              ; preds = %449, %436
  br label %458

458:                                              ; preds = %457, %216
  %459 = load i32, i32* %30, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %470

461:                                              ; preds = %458
  %462 = load i32, i32* %27, align 4
  %463 = sext i32 %462 to i64
  %464 = call i64 @rtl819x_signal_scale_mapping(i64 %463)
  %465 = trunc i64 %464 to i32
  %466 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %467 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %466, i32 0, i32 11
  store i32 %465, i32* %467, align 4
  %468 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %469 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %468, i32 0, i32 11
  store i32 %465, i32* %469, align 4
  br label %485

470:                                              ; preds = %458
  %471 = load i32, i32* %31, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %484

473:                                              ; preds = %470
  %474 = load i32, i32* %31, align 4
  %475 = load i32, i32* %29, align 4
  %476 = sdiv i32 %475, %474
  store i32 %476, i32* %29, align 4
  %477 = sext i32 %476 to i64
  %478 = call i64 @rtl819x_signal_scale_mapping(i64 %477)
  %479 = trunc i64 %478 to i32
  %480 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %14, align 8
  %481 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %480, i32 0, i32 11
  store i32 %479, i32* %481, align 4
  %482 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %11, align 8
  %483 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %482, i32 0, i32 11
  store i32 %479, i32* %483, align 4
  br label %484

484:                                              ; preds = %473, %470
  br label %485

485:                                              ; preds = %484, %461
  ret void
}

declare dso_local i32 @rx_hal_is_cck_rate(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_stats*, i32, i32) #1

declare dso_local i32 @rtl819x_query_rxpwrpercentage(i8 signext) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i8 signext, ...) #1

declare dso_local i32 @rtl819x_evm_dbtopercentage(i32) #1

declare dso_local i64 @rtl819x_signal_scale_mapping(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
