; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_StaRateAdaptive87SE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_StaRateAdaptive87SE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@RATE_ADAPTIVE_TIMER_PERIOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"StaRateAdaptive87B(): Tx Rate tried upping and downing simultaneously!\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@ARFR = common dso_local global i32 0, align 4
@CCK_TXAGC = common dso_local global i32 0, align 4
@OFDM_TXAGC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"StaRateAdaptive87SE(): update init_gain to index %d for date rate %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StaRateAdaptive87SE(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i64 @ieee80211_priv(%struct.net_device* %19)
  %21 = inttoptr i64 %20 to %struct.r8180_priv*
  store %struct.r8180_priv* %21, %struct.r8180_priv** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 1, i64* %10, align 8
  store i64 2, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %22 = load i32, i32* @RATE_ADAPTIVE_TIMER_PERIOD, align 4
  %23 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %4, align 8
  %35 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %35, i32 0, i32 24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  store i64 %43, i64* %7, align 8
  %44 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %13, align 8
  %47 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %47, i32 0, i32 25
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %50, i32 0, i32 26
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  store i64 %53, i64* %12, align 8
  %54 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %54, i32 0, i32 25
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %58 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %57, i32 0, i32 26
  store i64 %56, i64* %58, align 8
  %59 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %60 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %59, i32 0, i32 24
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %63, 5
  %65 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %1
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 %70, 100
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %4, align 8
  %74 = udiv i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %80

76:                                               ; preds = %1
  %77 = load i32, i32* %5, align 4
  %78 = mul nsw i32 %77, 100
  %79 = sdiv i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %85 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %87 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %91, i32 0, i32 24
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %97 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %96, i32 0, i32 4
  store i64 %95, i64* %97, align 8
  %98 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %99 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %132

102:                                              ; preds = %80
  %103 = load i64, i64* %4, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %102
  %106 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %107 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %111 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %112, 30
  br i1 %113, label %114, label %131

114:                                              ; preds = %105
  %115 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %116 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %115, i32 0, i32 8
  store i32 0, i32* %116, align 8
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @GetUpgradeTxRate(%struct.net_device* %117, i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %124 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %126 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %125, i32 0, i32 9
  store i32 0, i32* %126, align 4
  %127 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %128 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %127, i32 0, i32 10
  store i32 -200, i32* %128, align 8
  %129 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %130 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %129, i32 0, i32 11
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %114, %105
  br label %1068

132:                                              ; preds = %102, %80
  %133 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %134 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %133, i32 0, i32 8
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %132
  %136 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %137 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 22
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %142 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 72
  br i1 %144, label %145, label %148

145:                                              ; preds = %140, %135
  %146 = load i64, i64* %10, align 8
  %147 = add nsw i64 %146, 9
  store i64 %147, i64* %10, align 8
  br label %148

148:                                              ; preds = %145, %140
  %149 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %150 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @MgntIsCckRate(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %148
  %155 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %156 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 36
  br i1 %158, label %159, label %162

159:                                              ; preds = %154, %148
  %160 = load i64, i64* %11, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %11, align 8
  br label %162

162:                                              ; preds = %159, %154
  %163 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %164 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %163, i32 0, i32 12
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %181

167:                                              ; preds = %162
  %168 = load i32, i32* %6, align 4
  %169 = icmp sgt i32 %168, 25
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %173 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %172, i32 0, i32 13
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %171, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i32 1, i32* %9, align 4
  br label %180

177:                                              ; preds = %170, %167
  %178 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %179 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %178, i32 0, i32 12
  store i32 0, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %176
  br label %589

181:                                              ; preds = %162
  %182 = load i64, i64* %13, align 8
  %183 = icmp sgt i64 %182, -47
  br i1 %183, label %184, label %205

184:                                              ; preds = %181
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %185, 50
  br i1 %186, label %187, label %205

187:                                              ; preds = %184
  %188 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %189 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %192 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %191, i32 0, i32 24
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %190, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %187
  store i32 1, i32* %8, align 4
  %199 = load i64, i64* %10, align 8
  %200 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %201 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %200, i32 0, i32 14
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, %199
  store i64 %203, i64* %201, align 8
  br label %204

204:                                              ; preds = %198, %187
  br label %588

205:                                              ; preds = %184, %181
  %206 = load i64, i64* %4, align 8
  %207 = icmp ugt i64 %206, 9
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load i64, i64* %4, align 8
  %210 = icmp ult i64 %209, 100
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load i32, i32* %6, align 4
  %213 = icmp sge i32 %212, 600
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  store i32 1, i32* %9, align 4
  %215 = load i64, i64* %11, align 8
  %216 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %217 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %216, i32 0, i32 15
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, %215
  store i64 %219, i64* %217, align 8
  br label %587

220:                                              ; preds = %211, %208, %205
  %221 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %222 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 108
  br i1 %224, label %225, label %260

225:                                              ; preds = %220
  %226 = load i32, i32* %6, align 4
  %227 = icmp sgt i32 %226, 26
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %230 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %229, i32 0, i32 16
  %231 = load i32, i32* %230, align 8
  %232 = icmp sgt i32 %231, 25
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  store i32 1, i32* %9, align 4
  br label %247

234:                                              ; preds = %228, %225
  %235 = load i32, i32* %6, align 4
  %236 = icmp sgt i32 %235, 17
  br i1 %236, label %237, label %246

237:                                              ; preds = %234
  %238 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %239 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %238, i32 0, i32 16
  %240 = load i32, i32* %239, align 8
  %241 = icmp sgt i32 %240, 16
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load i64, i64* %13, align 8
  %244 = icmp sgt i64 %243, -72
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i32 1, i32* %9, align 4
  br label %246

246:                                              ; preds = %245, %242, %237, %234
  br label %247

247:                                              ; preds = %246, %233
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %247
  %251 = load i64, i64* %13, align 8
  %252 = icmp slt i64 %251, -75
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load i64, i64* %11, align 8
  %255 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %256 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %255, i32 0, i32 15
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, %254
  store i64 %258, i64* %256, align 8
  br label %259

259:                                              ; preds = %253, %250, %247
  br label %586

260:                                              ; preds = %220
  %261 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %262 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 96
  br i1 %264, label %265, label %329

265:                                              ; preds = %260
  %266 = load i32, i32* %6, align 4
  %267 = icmp sgt i32 %266, 48
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %270 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %269, i32 0, i32 16
  %271 = load i32, i32* %270, align 8
  %272 = icmp sgt i32 %271, 47
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  store i32 1, i32* %9, align 4
  br label %316

274:                                              ; preds = %268, %265
  %275 = load i32, i32* %6, align 4
  %276 = icmp sgt i32 %275, 21
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %279 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %278, i32 0, i32 16
  %280 = load i32, i32* %279, align 8
  %281 = icmp sgt i32 %280, 20
  br i1 %281, label %282, label %286

282:                                              ; preds = %277
  %283 = load i64, i64* %13, align 8
  %284 = icmp sgt i64 %283, -74
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 1, i32* %9, align 4
  br label %315

286:                                              ; preds = %282, %277, %274
  %287 = load i32, i32* %6, align 4
  %288 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %289 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %288, i32 0, i32 16
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 50
  %292 = icmp sgt i32 %287, %291
  br i1 %292, label %293, label %304

293:                                              ; preds = %286
  %294 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %295 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %294, i32 0, i32 11
  %296 = load i32, i32* %295, align 4
  %297 = icmp sgt i32 %296, 2
  br i1 %297, label %298, label %304

298:                                              ; preds = %293
  store i32 1, i32* %9, align 4
  %299 = load i64, i64* %11, align 8
  %300 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %301 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %300, i32 0, i32 15
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %302, %299
  store i64 %303, i64* %301, align 8
  br label %314

304:                                              ; preds = %293, %286
  %305 = load i32, i32* %6, align 4
  %306 = icmp slt i32 %305, 8
  br i1 %306, label %307, label %313

307:                                              ; preds = %304
  %308 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %309 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %308, i32 0, i32 16
  %310 = load i32, i32* %309, align 8
  %311 = icmp slt i32 %310, 8
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  store i32 1, i32* %8, align 4
  br label %313

313:                                              ; preds = %312, %307, %304
  br label %314

314:                                              ; preds = %313, %298
  br label %315

315:                                              ; preds = %314, %285
  br label %316

316:                                              ; preds = %315, %273
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %316
  %320 = load i64, i64* %13, align 8
  %321 = icmp slt i64 %320, -75
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  %323 = load i64, i64* %11, align 8
  %324 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %325 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %324, i32 0, i32 15
  %326 = load i64, i64* %325, align 8
  %327 = add nsw i64 %326, %323
  store i64 %327, i64* %325, align 8
  br label %328

328:                                              ; preds = %322, %319, %316
  br label %585

329:                                              ; preds = %260
  %330 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %331 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 8
  %333 = icmp eq i32 %332, 72
  br i1 %333, label %334, label %385

334:                                              ; preds = %329
  %335 = load i32, i32* %6, align 4
  %336 = icmp sgt i32 %335, 43
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %339 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %338, i32 0, i32 16
  %340 = load i32, i32* %339, align 8
  %341 = icmp sgt i32 %340, 41
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  store i32 1, i32* %9, align 4
  br label %372

343:                                              ; preds = %337, %334
  %344 = load i32, i32* %6, align 4
  %345 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %346 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %345, i32 0, i32 16
  %347 = load i32, i32* %346, align 8
  %348 = add nsw i32 %347, 50
  %349 = icmp sgt i32 %344, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %343
  %351 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %352 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %351, i32 0, i32 11
  %353 = load i32, i32* %352, align 4
  %354 = icmp sgt i32 %353, 2
  br i1 %354, label %355, label %361

355:                                              ; preds = %350
  store i32 1, i32* %9, align 4
  %356 = load i64, i64* %11, align 8
  %357 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %358 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %357, i32 0, i32 15
  %359 = load i64, i64* %358, align 8
  %360 = add nsw i64 %359, %356
  store i64 %360, i64* %358, align 8
  br label %371

361:                                              ; preds = %350, %343
  %362 = load i32, i32* %6, align 4
  %363 = icmp slt i32 %362, 15
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %366 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %365, i32 0, i32 16
  %367 = load i32, i32* %366, align 8
  %368 = icmp slt i32 %367, 16
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  store i32 1, i32* %8, align 4
  br label %370

370:                                              ; preds = %369, %364, %361
  br label %371

371:                                              ; preds = %370, %355
  br label %372

372:                                              ; preds = %371, %342
  %373 = load i32, i32* %9, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %384

375:                                              ; preds = %372
  %376 = load i64, i64* %13, align 8
  %377 = icmp slt i64 %376, -80
  br i1 %377, label %378, label %384

378:                                              ; preds = %375
  %379 = load i64, i64* %11, align 8
  %380 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %381 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %380, i32 0, i32 15
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %382, %379
  store i64 %383, i64* %381, align 8
  br label %384

384:                                              ; preds = %378, %375, %372
  br label %584

385:                                              ; preds = %329
  %386 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %387 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %388, 48
  br i1 %389, label %390, label %454

390:                                              ; preds = %385
  %391 = load i32, i32* %6, align 4
  %392 = icmp sgt i32 %391, 63
  br i1 %392, label %393, label %399

393:                                              ; preds = %390
  %394 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %395 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %394, i32 0, i32 16
  %396 = load i32, i32* %395, align 8
  %397 = icmp sgt i32 %396, 62
  br i1 %397, label %398, label %399

398:                                              ; preds = %393
  store i32 1, i32* %9, align 4
  br label %441

399:                                              ; preds = %393, %390
  %400 = load i32, i32* %6, align 4
  %401 = icmp sgt i32 %400, 33
  br i1 %401, label %402, label %411

402:                                              ; preds = %399
  %403 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %404 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %403, i32 0, i32 16
  %405 = load i32, i32* %404, align 8
  %406 = icmp sgt i32 %405, 32
  br i1 %406, label %407, label %411

407:                                              ; preds = %402
  %408 = load i64, i64* %13, align 8
  %409 = icmp sgt i64 %408, -82
  br i1 %409, label %410, label %411

410:                                              ; preds = %407
  store i32 1, i32* %9, align 4
  br label %440

411:                                              ; preds = %407, %402, %399
  %412 = load i32, i32* %6, align 4
  %413 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %414 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %413, i32 0, i32 16
  %415 = load i32, i32* %414, align 8
  %416 = add nsw i32 %415, 50
  %417 = icmp sgt i32 %412, %416
  br i1 %417, label %418, label %429

418:                                              ; preds = %411
  %419 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %420 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %419, i32 0, i32 11
  %421 = load i32, i32* %420, align 4
  %422 = icmp sgt i32 %421, 2
  br i1 %422, label %423, label %429

423:                                              ; preds = %418
  store i32 1, i32* %9, align 4
  %424 = load i64, i64* %11, align 8
  %425 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %426 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %425, i32 0, i32 15
  %427 = load i64, i64* %426, align 8
  %428 = add nsw i64 %427, %424
  store i64 %428, i64* %426, align 8
  br label %439

429:                                              ; preds = %418, %411
  %430 = load i32, i32* %6, align 4
  %431 = icmp slt i32 %430, 20
  br i1 %431, label %432, label %438

432:                                              ; preds = %429
  %433 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %434 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %433, i32 0, i32 16
  %435 = load i32, i32* %434, align 8
  %436 = icmp slt i32 %435, 21
  br i1 %436, label %437, label %438

437:                                              ; preds = %432
  store i32 1, i32* %8, align 4
  br label %438

438:                                              ; preds = %437, %432, %429
  br label %439

439:                                              ; preds = %438, %423
  br label %440

440:                                              ; preds = %439, %410
  br label %441

441:                                              ; preds = %440, %398
  %442 = load i32, i32* %9, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %453

444:                                              ; preds = %441
  %445 = load i64, i64* %13, align 8
  %446 = icmp slt i64 %445, -82
  br i1 %446, label %447, label %453

447:                                              ; preds = %444
  %448 = load i64, i64* %11, align 8
  %449 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %450 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %449, i32 0, i32 15
  %451 = load i64, i64* %450, align 8
  %452 = add nsw i64 %451, %448
  store i64 %452, i64* %450, align 8
  br label %453

453:                                              ; preds = %447, %444, %441
  br label %583

454:                                              ; preds = %385
  %455 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %456 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 8
  %458 = icmp eq i32 %457, 36
  br i1 %458, label %459, label %498

459:                                              ; preds = %454
  %460 = load i32, i32* %6, align 4
  %461 = icmp sgt i32 %460, 85
  br i1 %461, label %462, label %468

462:                                              ; preds = %459
  %463 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %464 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %463, i32 0, i32 16
  %465 = load i32, i32* %464, align 8
  %466 = icmp sgt i32 %465, 86
  br i1 %466, label %467, label %468

467:                                              ; preds = %462
  store i32 1, i32* %9, align 4
  br label %497

468:                                              ; preds = %462, %459
  %469 = load i32, i32* %6, align 4
  %470 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %471 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %470, i32 0, i32 16
  %472 = load i32, i32* %471, align 8
  %473 = add nsw i32 %472, 50
  %474 = icmp sgt i32 %469, %473
  br i1 %474, label %475, label %486

475:                                              ; preds = %468
  %476 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %477 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %476, i32 0, i32 11
  %478 = load i32, i32* %477, align 4
  %479 = icmp sgt i32 %478, 2
  br i1 %479, label %480, label %486

480:                                              ; preds = %475
  store i32 1, i32* %9, align 4
  %481 = load i64, i64* %11, align 8
  %482 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %483 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %482, i32 0, i32 15
  %484 = load i64, i64* %483, align 8
  %485 = add nsw i64 %484, %481
  store i64 %485, i64* %483, align 8
  br label %496

486:                                              ; preds = %475, %468
  %487 = load i32, i32* %6, align 4
  %488 = icmp slt i32 %487, 22
  br i1 %488, label %489, label %495

489:                                              ; preds = %486
  %490 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %491 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %490, i32 0, i32 16
  %492 = load i32, i32* %491, align 8
  %493 = icmp slt i32 %492, 23
  br i1 %493, label %494, label %495

494:                                              ; preds = %489
  store i32 1, i32* %8, align 4
  br label %495

495:                                              ; preds = %494, %489, %486
  br label %496

496:                                              ; preds = %495, %480
  br label %497

497:                                              ; preds = %496, %467
  br label %582

498:                                              ; preds = %454
  %499 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %500 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %499, i32 0, i32 6
  %501 = load i32, i32* %500, align 8
  %502 = icmp eq i32 %501, 22
  br i1 %502, label %503, label %518

503:                                              ; preds = %498
  %504 = load i32, i32* %6, align 4
  %505 = icmp sgt i32 %504, 95
  br i1 %505, label %506, label %507

506:                                              ; preds = %503
  store i32 1, i32* %9, align 4
  br label %517

507:                                              ; preds = %503
  %508 = load i32, i32* %6, align 4
  %509 = icmp slt i32 %508, 29
  br i1 %509, label %510, label %516

510:                                              ; preds = %507
  %511 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %512 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %511, i32 0, i32 16
  %513 = load i32, i32* %512, align 8
  %514 = icmp slt i32 %513, 30
  br i1 %514, label %515, label %516

515:                                              ; preds = %510
  store i32 1, i32* %8, align 4
  br label %516

516:                                              ; preds = %515, %510, %507
  br label %517

517:                                              ; preds = %516, %506
  br label %581

518:                                              ; preds = %498
  %519 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %520 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %519, i32 0, i32 6
  %521 = load i32, i32* %520, align 8
  %522 = icmp eq i32 %521, 11
  br i1 %522, label %523, label %538

523:                                              ; preds = %518
  %524 = load i32, i32* %6, align 4
  %525 = icmp sgt i32 %524, 149
  br i1 %525, label %526, label %527

526:                                              ; preds = %523
  store i32 1, i32* %9, align 4
  br label %537

527:                                              ; preds = %523
  %528 = load i32, i32* %6, align 4
  %529 = icmp slt i32 %528, 60
  br i1 %529, label %530, label %536

530:                                              ; preds = %527
  %531 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %532 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %531, i32 0, i32 16
  %533 = load i32, i32* %532, align 8
  %534 = icmp slt i32 %533, 65
  br i1 %534, label %535, label %536

535:                                              ; preds = %530
  store i32 1, i32* %8, align 4
  br label %536

536:                                              ; preds = %535, %530, %527
  br label %537

537:                                              ; preds = %536, %526
  br label %580

538:                                              ; preds = %518
  %539 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %540 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %539, i32 0, i32 6
  %541 = load i32, i32* %540, align 8
  %542 = icmp eq i32 %541, 4
  br i1 %542, label %543, label %563

543:                                              ; preds = %538
  %544 = load i32, i32* %6, align 4
  %545 = icmp sgt i32 %544, 99
  br i1 %545, label %546, label %552

546:                                              ; preds = %543
  %547 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %548 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %547, i32 0, i32 16
  %549 = load i32, i32* %548, align 8
  %550 = icmp sgt i32 %549, 99
  br i1 %550, label %551, label %552

551:                                              ; preds = %546
  store i32 1, i32* %9, align 4
  br label %562

552:                                              ; preds = %546, %543
  %553 = load i32, i32* %6, align 4
  %554 = icmp slt i32 %553, 65
  br i1 %554, label %555, label %561

555:                                              ; preds = %552
  %556 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %557 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %556, i32 0, i32 16
  %558 = load i32, i32* %557, align 8
  %559 = icmp slt i32 %558, 70
  br i1 %559, label %560, label %561

560:                                              ; preds = %555
  store i32 1, i32* %8, align 4
  br label %561

561:                                              ; preds = %560, %555, %552
  br label %562

562:                                              ; preds = %561, %551
  br label %579

563:                                              ; preds = %538
  %564 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %565 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %564, i32 0, i32 6
  %566 = load i32, i32* %565, align 8
  %567 = icmp eq i32 %566, 2
  br i1 %567, label %568, label %578

568:                                              ; preds = %563
  %569 = load i32, i32* %6, align 4
  %570 = icmp slt i32 %569, 70
  br i1 %570, label %571, label %577

571:                                              ; preds = %568
  %572 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %573 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %572, i32 0, i32 16
  %574 = load i32, i32* %573, align 8
  %575 = icmp slt i32 %574, 75
  br i1 %575, label %576, label %577

576:                                              ; preds = %571
  store i32 1, i32* %8, align 4
  br label %577

577:                                              ; preds = %576, %571, %568
  br label %578

578:                                              ; preds = %577, %563
  br label %579

579:                                              ; preds = %578, %562
  br label %580

580:                                              ; preds = %579, %537
  br label %581

581:                                              ; preds = %580, %517
  br label %582

582:                                              ; preds = %581, %497
  br label %583

583:                                              ; preds = %582, %453
  br label %584

584:                                              ; preds = %583, %384
  br label %585

585:                                              ; preds = %584, %328
  br label %586

586:                                              ; preds = %585, %259
  br label %587

587:                                              ; preds = %586, %214
  br label %588

588:                                              ; preds = %587, %204
  br label %589

589:                                              ; preds = %588, %180
  %590 = load i32, i32* %8, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %597

592:                                              ; preds = %589
  %593 = load i32, i32* %9, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %597

595:                                              ; preds = %592
  %596 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %597

597:                                              ; preds = %595, %592, %589
  %598 = load i32, i32* %8, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %639, label %600

600:                                              ; preds = %597
  %601 = load i32, i32* %9, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %639, label %603

603:                                              ; preds = %600
  %604 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %605 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %604, i32 0, i32 14
  %606 = load i64, i64* %605, align 8
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %608, label %639

608:                                              ; preds = %603
  %609 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %610 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %609, i32 0, i32 15
  %611 = load i64, i64* %610, align 8
  %612 = icmp eq i64 %611, 0
  br i1 %612, label %613, label %639

613:                                              ; preds = %608
  %614 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %615 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %614, i32 0, i32 6
  %616 = load i32, i32* %615, align 8
  %617 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %618 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %617, i32 0, i32 24
  %619 = load %struct.TYPE_4__*, %struct.TYPE_4__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %619, i32 0, i32 2
  %621 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = icmp ne i32 %616, %622
  br i1 %623, label %624, label %639

624:                                              ; preds = %613
  %625 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %626 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %625, i32 0, i32 11
  %627 = load i32, i32* %626, align 4
  %628 = icmp slt i32 %627, 2
  br i1 %628, label %629, label %639

629:                                              ; preds = %624
  %630 = load i32, i32* @jiffies, align 4
  %631 = load i32, i32* %6, align 4
  %632 = add nsw i32 %631, 101
  %633 = srem i32 %630, %632
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %638

635:                                              ; preds = %629
  store i32 1, i32* %8, align 4
  %636 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %637 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %636, i32 0, i32 12
  store i32 1, i32* %637, align 8
  br label %638

638:                                              ; preds = %635, %629
  br label %639

639:                                              ; preds = %638, %624, %613, %608, %603, %600, %597
  %640 = load i32, i32* %8, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %759

642:                                              ; preds = %639
  %643 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %644 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %643, i32 0, i32 14
  %645 = load i64, i64* %644, align 8
  %646 = add nsw i64 %645, 1
  store i64 %646, i64* %644, align 8
  %647 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %648 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %647, i32 0, i32 15
  store i64 0, i64* %648, align 8
  %649 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %650 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %649, i32 0, i32 14
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* %10, align 8
  %653 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %654 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %653, i32 0, i32 11
  %655 = load i32, i32* %654, align 4
  %656 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %657 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %656, i32 0, i32 11
  %658 = load i32, i32* %657, align 4
  %659 = mul nsw i32 %655, %658
  %660 = sext i32 %659 to i64
  %661 = add nsw i64 %652, %660
  %662 = icmp sgt i64 %651, %661
  br i1 %662, label %675, label %663

663:                                              ; preds = %642
  %664 = load i64, i64* %13, align 8
  %665 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %666 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %665, i32 0, i32 10
  %667 = load i32, i32* %666, align 8
  %668 = sext i32 %667 to i64
  %669 = icmp sgt i64 %664, %668
  br i1 %669, label %675, label %670

670:                                              ; preds = %663
  %671 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %672 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %671, i32 0, i32 12
  %673 = load i32, i32* %672, align 8
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %758

675:                                              ; preds = %670, %663, %642
  %676 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %677 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %676, i32 0, i32 14
  store i64 0, i64* %677, align 8
  %678 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %679 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %678, i32 0, i32 6
  %680 = load i32, i32* %679, align 8
  %681 = icmp eq i32 %680, 22
  br i1 %681, label %682, label %683

682:                                              ; preds = %675
  store i32 1, i32* %14, align 4
  br label %683

683:                                              ; preds = %682, %675
  %684 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %685 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %684, i32 0, i32 6
  %686 = load i32, i32* %685, align 8
  %687 = icmp eq i32 %686, 72
  br i1 %687, label %698, label %688

688:                                              ; preds = %683
  %689 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %690 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %689, i32 0, i32 6
  %691 = load i32, i32* %690, align 8
  %692 = icmp eq i32 %691, 48
  br i1 %692, label %698, label %693

693:                                              ; preds = %688
  %694 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %695 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %694, i32 0, i32 6
  %696 = load i32, i32* %695, align 8
  %697 = icmp eq i32 %696, 36
  br i1 %697, label %698, label %708

698:                                              ; preds = %693, %688, %683
  %699 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %700 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %699, i32 0, i32 11
  %701 = load i32, i32* %700, align 4
  %702 = icmp sgt i32 %701, 2
  br i1 %702, label %703, label %708

703:                                              ; preds = %698
  %704 = load i32, i32* @RATE_ADAPTIVE_TIMER_PERIOD, align 4
  %705 = sdiv i32 %704, 2
  %706 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %707 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %706, i32 0, i32 0
  store i32 %705, i32* %707, align 8
  br label %708

708:                                              ; preds = %703, %698, %693
  %709 = load %struct.net_device*, %struct.net_device** %2, align 8
  %710 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %711 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %710, i32 0, i32 6
  %712 = load i32, i32* %711, align 8
  %713 = call i8* @GetUpgradeTxRate(%struct.net_device* %709, i32 %712)
  %714 = ptrtoint i8* %713 to i32
  %715 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %716 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %715, i32 0, i32 6
  store i32 %714, i32* %716, align 8
  %717 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %718 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %717, i32 0, i32 6
  %719 = load i32, i32* %718, align 8
  %720 = icmp eq i32 %719, 36
  br i1 %720, label %721, label %727

721:                                              ; preds = %708
  %722 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %723 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %722, i32 0, i32 17
  store i32 1, i32* %723, align 4
  %724 = load %struct.net_device*, %struct.net_device** %2, align 8
  %725 = load i32, i32* @ARFR, align 4
  %726 = call i32 @write_nic_word(%struct.net_device* %724, i32 %725, i32 3983)
  br label %739

727:                                              ; preds = %708
  %728 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %729 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %728, i32 0, i32 17
  %730 = load i32, i32* %729, align 4
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %738

732:                                              ; preds = %727
  %733 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %734 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %733, i32 0, i32 17
  store i32 0, i32* %734, align 4
  %735 = load %struct.net_device*, %struct.net_device** %2, align 8
  %736 = load i32, i32* @ARFR, align 4
  %737 = call i32 @write_nic_word(%struct.net_device* %735, i32 %736, i32 4095)
  br label %738

738:                                              ; preds = %732, %727
  br label %739

739:                                              ; preds = %738, %721
  %740 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %741 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %740, i32 0, i32 9
  %742 = load i32, i32* %741, align 4
  %743 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %744 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %743, i32 0, i32 6
  %745 = load i32, i32* %744, align 8
  %746 = icmp ne i32 %742, %745
  br i1 %746, label %747, label %757

747:                                              ; preds = %739
  %748 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %749 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %748, i32 0, i32 6
  %750 = load i32, i32* %749, align 8
  %751 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %752 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %751, i32 0, i32 9
  store i32 %750, i32* %752, align 4
  %753 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %754 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %753, i32 0, i32 11
  store i32 0, i32* %754, align 4
  %755 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %756 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %755, i32 0, i32 10
  store i32 -200, i32* %756, align 8
  br label %757

757:                                              ; preds = %747, %739
  br label %758

758:                                              ; preds = %757, %670
  br label %770

759:                                              ; preds = %639
  %760 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %761 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %760, i32 0, i32 14
  %762 = load i64, i64* %761, align 8
  %763 = icmp sgt i64 %762, 0
  br i1 %763, label %764, label %769

764:                                              ; preds = %759
  %765 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %766 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %765, i32 0, i32 14
  %767 = load i64, i64* %766, align 8
  %768 = add nsw i64 %767, -1
  store i64 %768, i64* %766, align 8
  br label %769

769:                                              ; preds = %764, %759
  br label %770

770:                                              ; preds = %769, %758
  %771 = load i32, i32* %9, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %881

773:                                              ; preds = %770
  %774 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %775 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %774, i32 0, i32 15
  %776 = load i64, i64* %775, align 8
  %777 = add nsw i64 %776, 1
  store i64 %777, i64* %775, align 8
  %778 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %779 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %778, i32 0, i32 14
  store i64 0, i64* %779, align 8
  %780 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %781 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %780, i32 0, i32 15
  %782 = load i64, i64* %781, align 8
  %783 = load i64, i64* %11, align 8
  %784 = icmp sgt i64 %782, %783
  br i1 %784, label %790, label %785

785:                                              ; preds = %773
  %786 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %787 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %786, i32 0, i32 12
  %788 = load i32, i32* %787, align 8
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %880

790:                                              ; preds = %785, %773
  %791 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %792 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %791, i32 0, i32 15
  store i64 0, i64* %792, align 8
  %793 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %794 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %793, i32 0, i32 12
  store i32 0, i32* %794, align 8
  %795 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %796 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %795, i32 0, i32 9
  %797 = load i32, i32* %796, align 4
  %798 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %799 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %798, i32 0, i32 6
  %800 = load i32, i32* %799, align 8
  %801 = icmp eq i32 %797, %800
  br i1 %801, label %802, label %819

802:                                              ; preds = %790
  %803 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %804 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %803, i32 0, i32 11
  %805 = load i32, i32* %804, align 4
  %806 = add nsw i32 %805, 1
  store i32 %806, i32* %804, align 4
  %807 = load i64, i64* %13, align 8
  %808 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %809 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %808, i32 0, i32 10
  %810 = load i32, i32* %809, align 8
  %811 = sext i32 %810 to i64
  %812 = icmp sgt i64 %807, %811
  br i1 %812, label %813, label %818

813:                                              ; preds = %802
  %814 = load i64, i64* %13, align 8
  %815 = trunc i64 %814 to i32
  %816 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %817 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %816, i32 0, i32 10
  store i32 %815, i32* %817, align 8
  br label %818

818:                                              ; preds = %813, %802
  br label %831

819:                                              ; preds = %790
  %820 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %821 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %820, i32 0, i32 6
  %822 = load i32, i32* %821, align 8
  %823 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %824 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %823, i32 0, i32 9
  store i32 %822, i32* %824, align 4
  %825 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %826 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %825, i32 0, i32 11
  store i32 1, i32* %826, align 4
  %827 = load i64, i64* %13, align 8
  %828 = trunc i64 %827 to i32
  %829 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %830 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %829, i32 0, i32 10
  store i32 %828, i32* %830, align 8
  br label %831

831:                                              ; preds = %819, %818
  %832 = load %struct.net_device*, %struct.net_device** %2, align 8
  %833 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %834 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %833, i32 0, i32 6
  %835 = load i32, i32* %834, align 8
  %836 = call i32 @GetDegradeTxRate(%struct.net_device* %832, i32 %835)
  %837 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %838 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %837, i32 0, i32 6
  store i32 %836, i32* %838, align 8
  %839 = load i64, i64* %13, align 8
  %840 = icmp slt i64 %839, -80
  br i1 %840, label %841, label %849

841:                                              ; preds = %831
  %842 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %843 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %842, i32 0, i32 6
  %844 = load i32, i32* %843, align 8
  %845 = icmp sgt i32 %844, 72
  br i1 %845, label %846, label %849

846:                                              ; preds = %841
  %847 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %848 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %847, i32 0, i32 6
  store i32 72, i32* %848, align 8
  br label %849

849:                                              ; preds = %846, %841, %831
  %850 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %851 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %850, i32 0, i32 6
  %852 = load i32, i32* %851, align 8
  %853 = icmp eq i32 %852, 36
  br i1 %853, label %854, label %860

854:                                              ; preds = %849
  %855 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %856 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %855, i32 0, i32 17
  store i32 1, i32* %856, align 4
  %857 = load %struct.net_device*, %struct.net_device** %2, align 8
  %858 = load i32, i32* @ARFR, align 4
  %859 = call i32 @write_nic_word(%struct.net_device* %857, i32 %858, i32 3983)
  br label %872

860:                                              ; preds = %849
  %861 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %862 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %861, i32 0, i32 17
  %863 = load i32, i32* %862, align 4
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %871

865:                                              ; preds = %860
  %866 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %867 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %866, i32 0, i32 17
  store i32 0, i32* %867, align 4
  %868 = load %struct.net_device*, %struct.net_device** %2, align 8
  %869 = load i32, i32* @ARFR, align 4
  %870 = call i32 @write_nic_word(%struct.net_device* %868, i32 %869, i32 4095)
  br label %871

871:                                              ; preds = %865, %860
  br label %872

872:                                              ; preds = %871, %854
  %873 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %874 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %873, i32 0, i32 6
  %875 = load i32, i32* %874, align 8
  %876 = call i64 @MgntIsCckRate(i32 %875)
  %877 = icmp ne i64 %876, 0
  br i1 %877, label %878, label %879

878:                                              ; preds = %872
  store i32 1, i32* %14, align 4
  br label %879

879:                                              ; preds = %878, %872
  br label %880

880:                                              ; preds = %879, %785
  br label %892

881:                                              ; preds = %770
  %882 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %883 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %882, i32 0, i32 15
  %884 = load i64, i64* %883, align 8
  %885 = icmp sgt i64 %884, 0
  br i1 %885, label %886, label %891

886:                                              ; preds = %881
  %887 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %888 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %887, i32 0, i32 15
  %889 = load i64, i64* %888, align 8
  %890 = add nsw i64 %889, -1
  store i64 %890, i64* %888, align 8
  br label %891

891:                                              ; preds = %886, %881
  br label %892

892:                                              ; preds = %891, %880
  %893 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %894 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %893, i32 0, i32 11
  %895 = load i32, i32* %894, align 4
  %896 = icmp sge i32 %895, 21
  br i1 %896, label %918, label %897

897:                                              ; preds = %892
  %898 = load i32, i32* %8, align 4
  %899 = icmp ne i32 %898, 0
  br i1 %899, label %923, label %900

900:                                              ; preds = %897
  %901 = load i32, i32* %9, align 4
  %902 = icmp ne i32 %901, 0
  br i1 %902, label %923, label %903

903:                                              ; preds = %900
  %904 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %905 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %904, i32 0, i32 15
  %906 = load i64, i64* %905, align 8
  %907 = icmp eq i64 %906, 0
  br i1 %907, label %908, label %923

908:                                              ; preds = %903
  %909 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %910 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %909, i32 0, i32 14
  %911 = load i64, i64* %910, align 8
  %912 = icmp ne i64 %911, 0
  br i1 %912, label %913, label %923

913:                                              ; preds = %908
  %914 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %915 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %914, i32 0, i32 11
  %916 = load i32, i32* %915, align 4
  %917 = icmp sgt i32 %916, 6
  br i1 %917, label %918, label %923

918:                                              ; preds = %913, %892
  %919 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %920 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %919, i32 0, i32 11
  %921 = load i32, i32* %920, align 4
  %922 = add nsw i32 %921, -1
  store i32 %922, i32* %920, align 4
  br label %923

923:                                              ; preds = %918, %913, %908, %903, %900, %897
  %924 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %925 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %924, i32 0, i32 18
  %926 = load i8*, i8** %925, align 8
  %927 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %928 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %927, i32 0, i32 24
  %929 = load %struct.TYPE_4__*, %struct.TYPE_4__** %928, align 8
  %930 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %929, i32 0, i32 2
  %931 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %930, i32 0, i32 1
  %932 = load i64, i64* %931, align 8
  %933 = getelementptr inbounds i8, i8* %926, i64 %932
  %934 = load i8, i8* %933, align 1
  store i8 %934, i8* %17, align 1
  %935 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %936 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %935, i32 0, i32 19
  %937 = load i8*, i8** %936, align 8
  %938 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %939 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %938, i32 0, i32 24
  %940 = load %struct.TYPE_4__*, %struct.TYPE_4__** %939, align 8
  %941 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %940, i32 0, i32 2
  %942 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %941, i32 0, i32 1
  %943 = load i64, i64* %942, align 8
  %944 = getelementptr inbounds i8, i8* %937, i64 %943
  %945 = load i8, i8* %944, align 1
  store i8 %945, i8* %18, align 1
  %946 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %947 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %946, i32 0, i32 6
  %948 = load i32, i32* %947, align 8
  %949 = icmp slt i32 %948, 96
  br i1 %949, label %950, label %1019

950:                                              ; preds = %923
  %951 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %952 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %951, i32 0, i32 6
  %953 = load i32, i32* %952, align 8
  %954 = icmp sgt i32 %953, 22
  br i1 %954, label %955, label %1019

955:                                              ; preds = %950
  %956 = load %struct.net_device*, %struct.net_device** %2, align 8
  %957 = load i32, i32* @CCK_TXAGC, align 4
  %958 = call i64 @read_nic_byte(%struct.net_device* %956, i32 %957)
  store i64 %958, i64* %16, align 8
  %959 = load %struct.net_device*, %struct.net_device** %2, align 8
  %960 = load i32, i32* @OFDM_TXAGC, align 4
  %961 = call i64 @read_nic_byte(%struct.net_device* %959, i32 %960)
  store i64 %961, i64* %15, align 8
  %962 = load i64, i64* %16, align 8
  %963 = load i8, i8* %18, align 1
  %964 = sext i8 %963 to i64
  %965 = icmp eq i64 %962, %964
  br i1 %965, label %966, label %990

966:                                              ; preds = %955
  %967 = load i64, i64* %15, align 8
  %968 = load i8, i8* %17, align 1
  %969 = sext i8 %968 to i32
  %970 = add nsw i32 %969, 2
  %971 = sext i32 %970 to i64
  %972 = icmp ne i64 %967, %971
  br i1 %972, label %973, label %989

973:                                              ; preds = %966
  %974 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %975 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %974, i32 0, i32 20
  store i32 1, i32* %975, align 8
  %976 = load i64, i64* %15, align 8
  %977 = add nsw i64 %976, 2
  %978 = icmp sgt i64 %977, 35
  br i1 %978, label %979, label %980

979:                                              ; preds = %973
  br label %983

980:                                              ; preds = %973
  %981 = load i64, i64* %15, align 8
  %982 = add nsw i64 %981, 2
  br label %983

983:                                              ; preds = %980, %979
  %984 = phi i64 [ 35, %979 ], [ %982, %980 ]
  store i64 %984, i64* %15, align 8
  %985 = load %struct.net_device*, %struct.net_device** %2, align 8
  %986 = load i32, i32* @OFDM_TXAGC, align 4
  %987 = load i64, i64* %15, align 8
  %988 = call i32 @write_nic_byte(%struct.net_device* %985, i32 %986, i64 %987)
  br label %989

989:                                              ; preds = %983, %966
  br label %1018

990:                                              ; preds = %955
  %991 = load i64, i64* %16, align 8
  %992 = load i8, i8* %18, align 1
  %993 = sext i8 %992 to i64
  %994 = icmp slt i64 %991, %993
  br i1 %994, label %995, label %1017

995:                                              ; preds = %990
  %996 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %997 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %996, i32 0, i32 20
  %998 = load i32, i32* %997, align 8
  %999 = icmp ne i32 %998, 0
  br i1 %999, label %1016, label %1000

1000:                                             ; preds = %995
  %1001 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1002 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1001, i32 0, i32 20
  store i32 1, i32* %1002, align 8
  %1003 = load i64, i64* %15, align 8
  %1004 = add nsw i64 %1003, 2
  %1005 = icmp sgt i64 %1004, 35
  br i1 %1005, label %1006, label %1007

1006:                                             ; preds = %1000
  br label %1010

1007:                                             ; preds = %1000
  %1008 = load i64, i64* %15, align 8
  %1009 = add nsw i64 %1008, 2
  br label %1010

1010:                                             ; preds = %1007, %1006
  %1011 = phi i64 [ 35, %1006 ], [ %1009, %1007 ]
  store i64 %1011, i64* %15, align 8
  %1012 = load %struct.net_device*, %struct.net_device** %2, align 8
  %1013 = load i32, i32* @OFDM_TXAGC, align 4
  %1014 = load i64, i64* %15, align 8
  %1015 = call i32 @write_nic_byte(%struct.net_device* %1012, i32 %1013, i64 %1014)
  br label %1016

1016:                                             ; preds = %1010, %995
  br label %1017

1017:                                             ; preds = %1016, %990
  br label %1018

1018:                                             ; preds = %1017, %989
  br label %1067

1019:                                             ; preds = %950, %923
  %1020 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1021 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1020, i32 0, i32 20
  %1022 = load i32, i32* %1021, align 8
  %1023 = icmp ne i32 %1022, 0
  br i1 %1023, label %1024, label %1066

1024:                                             ; preds = %1019
  %1025 = load %struct.net_device*, %struct.net_device** %2, align 8
  %1026 = load i32, i32* @CCK_TXAGC, align 4
  %1027 = call i64 @read_nic_byte(%struct.net_device* %1025, i32 %1026)
  store i64 %1027, i64* %16, align 8
  %1028 = load %struct.net_device*, %struct.net_device** %2, align 8
  %1029 = load i32, i32* @OFDM_TXAGC, align 4
  %1030 = call i64 @read_nic_byte(%struct.net_device* %1028, i32 %1029)
  store i64 %1030, i64* %15, align 8
  %1031 = load i64, i64* %16, align 8
  %1032 = load i8, i8* %18, align 1
  %1033 = sext i8 %1032 to i64
  %1034 = icmp eq i64 %1031, %1033
  br i1 %1034, label %1035, label %1043

1035:                                             ; preds = %1024
  %1036 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1037 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1036, i32 0, i32 20
  store i32 0, i32* %1037, align 8
  %1038 = load %struct.net_device*, %struct.net_device** %2, align 8
  %1039 = load i32, i32* @OFDM_TXAGC, align 4
  %1040 = load i8, i8* %17, align 1
  %1041 = sext i8 %1040 to i64
  %1042 = call i32 @write_nic_byte(%struct.net_device* %1038, i32 %1039, i64 %1041)
  br label %1065

1043:                                             ; preds = %1024
  %1044 = load i64, i64* %16, align 8
  %1045 = load i8, i8* %18, align 1
  %1046 = sext i8 %1045 to i64
  %1047 = icmp slt i64 %1044, %1046
  br i1 %1047, label %1048, label %1064

1048:                                             ; preds = %1043
  %1049 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1050 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1049, i32 0, i32 20
  store i32 0, i32* %1050, align 8
  %1051 = load i64, i64* %15, align 8
  %1052 = sub nsw i64 %1051, 2
  %1053 = icmp sgt i64 %1052, 0
  br i1 %1053, label %1054, label %1057

1054:                                             ; preds = %1048
  %1055 = load i64, i64* %15, align 8
  %1056 = sub nsw i64 %1055, 2
  br label %1058

1057:                                             ; preds = %1048
  br label %1058

1058:                                             ; preds = %1057, %1054
  %1059 = phi i64 [ %1056, %1054 ], [ 0, %1057 ]
  store i64 %1059, i64* %15, align 8
  %1060 = load %struct.net_device*, %struct.net_device** %2, align 8
  %1061 = load i32, i32* @OFDM_TXAGC, align 4
  %1062 = load i64, i64* %15, align 8
  %1063 = call i32 @write_nic_byte(%struct.net_device* %1060, i32 %1061, i64 %1062)
  br label %1064

1064:                                             ; preds = %1058, %1043
  br label %1065

1065:                                             ; preds = %1064, %1035
  br label %1066

1066:                                             ; preds = %1065, %1019
  br label %1067

1067:                                             ; preds = %1066, %1018
  br label %1068

1068:                                             ; preds = %1067, %131
  %1069 = load i32, i32* %14, align 4
  %1070 = icmp ne i32 %1069, 0
  br i1 %1070, label %1071, label %1156

1071:                                             ; preds = %1068
  %1072 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1073 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1072, i32 0, i32 6
  %1074 = load i32, i32* %1073, align 8
  %1075 = call i64 @MgntIsCckRate(i32 %1074)
  %1076 = icmp ne i64 %1075, 0
  br i1 %1076, label %1077, label %1130

1077:                                             ; preds = %1071
  %1078 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1079 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1078, i32 0, i32 21
  %1080 = load i32, i32* %1079, align 4
  %1081 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1082 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1081, i32 0, i32 22
  %1083 = load i32, i32* %1082, align 8
  %1084 = icmp sgt i32 %1080, %1083
  br i1 %1084, label %1085, label %1129

1085:                                             ; preds = %1077
  %1086 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1087 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1086, i32 0, i32 21
  %1088 = load i32, i32* %1087, align 4
  %1089 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1090 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1089, i32 0, i32 23
  store i32 %1088, i32* %1090, align 4
  %1091 = load i64, i64* %13, align 8
  %1092 = icmp slt i64 %1091, -85
  br i1 %1092, label %1093, label %1099

1093:                                             ; preds = %1085
  %1094 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1095 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1094, i32 0, i32 22
  %1096 = load i32, i32* %1095, align 8
  %1097 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1098 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1097, i32 0, i32 21
  store i32 %1096, i32* %1098, align 4
  br label %1119

1099:                                             ; preds = %1085
  %1100 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1101 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1100, i32 0, i32 21
  %1102 = load i32, i32* %1101, align 4
  %1103 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1104 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1103, i32 0, i32 22
  %1105 = load i32, i32* %1104, align 8
  %1106 = add nsw i32 %1105, 1
  %1107 = icmp sgt i32 %1102, %1106
  br i1 %1107, label %1108, label %1113

1108:                                             ; preds = %1099
  %1109 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1110 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1109, i32 0, i32 21
  %1111 = load i32, i32* %1110, align 4
  %1112 = sub nsw i32 %1111, 2
  store i32 %1112, i32* %1110, align 4
  br label %1118

1113:                                             ; preds = %1099
  %1114 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1115 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1114, i32 0, i32 21
  %1116 = load i32, i32* %1115, align 4
  %1117 = add nsw i32 %1116, -1
  store i32 %1117, i32* %1115, align 4
  br label %1118

1118:                                             ; preds = %1113, %1108
  br label %1119

1119:                                             ; preds = %1118, %1093
  %1120 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1121 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1120, i32 0, i32 21
  %1122 = load i32, i32* %1121, align 4
  %1123 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1124 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1123, i32 0, i32 6
  %1125 = load i32, i32* %1124, align 8
  %1126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %1122, i32 %1125)
  %1127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %1128 = call i32 @UpdateInitialGain(%struct.net_device* %1127)
  br label %1129

1129:                                             ; preds = %1119, %1077
  br label %1155

1130:                                             ; preds = %1071
  %1131 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1132 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1131, i32 0, i32 21
  %1133 = load i32, i32* %1132, align 4
  %1134 = icmp slt i32 %1133, 4
  br i1 %1134, label %1135, label %1154

1135:                                             ; preds = %1130
  %1136 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1137 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1136, i32 0, i32 21
  %1138 = load i32, i32* %1137, align 4
  %1139 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1140 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1139, i32 0, i32 23
  store i32 %1138, i32* %1140, align 4
  %1141 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1142 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1141, i32 0, i32 21
  %1143 = load i32, i32* %1142, align 4
  %1144 = add nsw i32 %1143, 1
  store i32 %1144, i32* %1142, align 4
  %1145 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1146 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1145, i32 0, i32 21
  %1147 = load i32, i32* %1146, align 4
  %1148 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1149 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1148, i32 0, i32 6
  %1150 = load i32, i32* %1149, align 8
  %1151 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %1147, i32 %1150)
  %1152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %1153 = call i32 @UpdateInitialGain(%struct.net_device* %1152)
  br label %1154

1154:                                             ; preds = %1135, %1130
  br label %1155

1155:                                             ; preds = %1154, %1129
  br label %1156

1156:                                             ; preds = %1155, %1068
  %1157 = load i32, i32* %6, align 4
  %1158 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1159 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1158, i32 0, i32 16
  store i32 %1157, i32* %1159, align 8
  %1160 = load i64, i64* %12, align 8
  %1161 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1162 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1161, i32 0, i32 13
  store i64 %1160, i64* %1162, align 8
  %1163 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1164 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1163, i32 0, i32 6
  %1165 = load i32, i32* %1164, align 8
  %1166 = mul nsw i32 %1165, 5
  %1167 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %1168 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %1167, i32 0, i32 24
  %1169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1168, align 8
  %1170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1169, i32 0, i32 1
  store i32 %1166, i32* %1170, align 8
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i8* @GetUpgradeTxRate(%struct.net_device*, i32) #1

declare dso_local i64 @MgntIsCckRate(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @GetDegradeTxRate(%struct.net_device*, i32) #1

declare dso_local i64 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i64) #1

declare dso_local i32 @UpdateInitialGain(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
