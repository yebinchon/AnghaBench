; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_rate_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate*, i32 }
%struct.ieee80211_rate = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.minstrel_sta_info = type { i64, i32, i32, i32, %struct.minstrel_rate*, i64, %struct.minstrel_rate*, %struct.ieee80211_sta* }
%struct.minstrel_rate = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.minstrel_priv = type { i32, i32, i32, i32 }

@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*)* @minstrel_rate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_rate_init(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.minstrel_sta_info*, align 8
  %10 = alloca %struct.minstrel_priv*, align 8
  %11 = alloca %struct.ieee80211_rate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.minstrel_rate*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.minstrel_rate*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i8* %3, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.minstrel_sta_info*
  store %struct.minstrel_sta_info* %23, %struct.minstrel_sta_info** %9, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %25, %struct.minstrel_priv** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 9, i32* %14, align 4
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %27 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %28 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %27, i32 0, i32 7
  store %struct.ieee80211_sta* %26, %struct.ieee80211_sta** %28, align 8
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %31 = call i64 @rate_lowest_index(%struct.ieee80211_supported_band* %29, %struct.ieee80211_sta* %30)
  %32 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %33 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 1
  %36 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %35, align 8
  %37 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %38 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %36, i64 %39
  store %struct.ieee80211_rate* %40, %struct.ieee80211_rate** %11, align 8
  %41 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %48 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @ieee80211_frame_duration(i32 %43, i32 10, i32 %46, i32 %55, i32 1)
  %57 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %58 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %60 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %59, i32 0, i32 6
  %61 = load %struct.minstrel_rate*, %struct.minstrel_rate** %60, align 8
  %62 = call i32 @memset(%struct.minstrel_rate* %61, i32 0, i32 8)
  %63 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %64 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %252, %4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %255

71:                                               ; preds = %65
  %72 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %73 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %72, i32 0, i32 4
  %74 = load %struct.minstrel_rate*, %struct.minstrel_rate** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %74, i64 %76
  store %struct.minstrel_rate* %77, %struct.minstrel_rate** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %78 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %79 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %20, align 4
  %81 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %82 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @rate_supported(%struct.ieee80211_sta* %81, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %71
  br label %252

89:                                               ; preds = %71
  %90 = load i32, i32* %13, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %93 = call i32 @memset(%struct.minstrel_rate* %92, i32 0, i32 36)
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %96 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %97, i32 0, i32 1
  %99 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %99, i64 %101
  %103 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 5
  %106 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %107 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %112 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %113 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %112, i32 0, i32 1
  %114 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %114, i64 %116
  %118 = call i32 @calc_rate_durations(i32 %110, %struct.minstrel_rate* %111, %struct.ieee80211_rate* %117)
  %119 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %120 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %119, i32 0, i32 2
  store i32 -1, i32* %120, align 4
  %121 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %122 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %121, i32 0, i32 3
  store i32 1, i32* %122, align 4
  %123 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %124 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %123, i32 0, i32 4
  store i32 1, i32* %124, align 4
  %125 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %126 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %125, i32 0, i32 5
  store i32 1, i32* %126, align 4
  %127 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %128 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %131 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add i32 %129, %132
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %226, %89
  %135 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %136 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %139 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %137, %140
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %20, align 4
  %144 = mul i32 %142, %143
  %145 = lshr i32 %144, 1
  %146 = load i32, i32* %19, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %20, align 4
  %149 = shl i32 %148, 1
  %150 = or i32 %149, 1
  %151 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %152 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @min(i32 %150, i32 %153)
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %16, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %160 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = add i32 %158, %161
  %163 = load i32, i32* %17, align 4
  %164 = add i32 %163, %162
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %167 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = mul i32 2, %168
  %170 = add i32 %165, %169
  %171 = load i32, i32* %18, align 4
  %172 = add i32 %171, %170
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %175 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %134
  %179 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %180 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %183 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %178
  %187 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %188 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %186, %178, %134
  %192 = load i32, i32* %18, align 4
  %193 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %194 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ult i32 %192, %195
  br i1 %196, label %197, label %210

197:                                              ; preds = %191
  %198 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %199 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %202 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %197
  %206 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %207 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %205, %197, %191
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %16, align 4
  %213 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %214 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ult i32 %212, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  %218 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %219 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %223 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br label %226

226:                                              ; preds = %217, %211
  %227 = phi i1 [ false, %211 ], [ %225, %217 ]
  br i1 %227, label %134, label %228

228:                                              ; preds = %226
  %229 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %230 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %233 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 4
  %234 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %235 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %234, i32 0, i32 1
  %236 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %236, i64 %238
  %240 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %228
  %246 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %247 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %250 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %245, %228
  br label %252

252:                                              ; preds = %251, %88
  %253 = load i32, i32* %12, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %65

255:                                              ; preds = %65
  %256 = load i32, i32* %13, align 4
  store i32 %256, i32* %12, align 4
  br label %257

257:                                              ; preds = %272, %255
  %258 = load i32, i32* %12, align 4
  %259 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %260 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ult i32 %258, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %257
  %264 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %265 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %264, i32 0, i32 4
  %266 = load %struct.minstrel_rate*, %struct.minstrel_rate** %265, align 8
  %267 = load i32, i32* %12, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %266, i64 %268
  store %struct.minstrel_rate* %269, %struct.minstrel_rate** %21, align 8
  %270 = load %struct.minstrel_rate*, %struct.minstrel_rate** %21, align 8
  %271 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %270, i32 0, i32 0
  store i32 -1, i32* %271, align 4
  br label %272

272:                                              ; preds = %263
  %273 = load i32, i32* %12, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %257

275:                                              ; preds = %257
  %276 = load i32, i32* %13, align 4
  %277 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %278 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* @jiffies, align 4
  %280 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %281 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 8
  %282 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %283 = call i32 @init_sample_table(%struct.minstrel_sta_info* %282)
  %284 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %285 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %9, align 8
  %286 = call i32 @minstrel_update_rates(%struct.minstrel_priv* %284, %struct.minstrel_sta_info* %285)
  ret void
}

declare dso_local i64 @rate_lowest_index(%struct.ieee80211_supported_band*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_frame_duration(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.minstrel_rate*, i32, i32) #1

declare dso_local i32 @rate_supported(%struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @calc_rate_durations(i32, %struct.minstrel_rate*, %struct.ieee80211_rate*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @init_sample_table(%struct.minstrel_sta_info*) #1

declare dso_local i32 @minstrel_update_rates(%struct.minstrel_priv*, %struct.minstrel_sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
