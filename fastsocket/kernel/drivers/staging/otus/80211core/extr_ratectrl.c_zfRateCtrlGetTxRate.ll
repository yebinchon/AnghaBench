; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlGetTxRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlGetTxRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.zsRcCell = type { i64, i64, i64, i32, i32, i32 }

@ZM_LV_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"txCount=\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"probingTime=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tick=\00", align 1
@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_RATE_CTRL_PROBING_INTERVAL_MS = common dso_local global i32 0, align 4
@ZM_MS_PER_TICK = common dso_local global i32 0, align 4
@ZM_RATE_CTRL_MIN_PROBING_PACKET = common dso_local global i64 0, align 8
@ZM_RATE_PROBING_THRESHOLD = common dso_local global i32 0, align 4
@ZM_RATE_SUCCESS_PROBING = common dso_local global i32 0, align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Probing Rate=\00", align 1
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Diminish counter\00", align 1
@FailDiff = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Get Tx Rate=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfRateCtrlGetTxRate(i32* %0, %struct.zsRcCell* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.zsRcCell*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.zsRcCell* %1, %struct.zsRcCell** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = load i32, i32* @ZM_LV_3, align 4
  %12 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %13 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @zm_msg1_tx(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* @ZM_LV_3, align 4
  %17 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %18 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @zm_msg1_tx(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @ZM_LV_3, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @zm_msg1_tx(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = load i64*, i64** %6, align 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %28 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %34
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 50
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %77

52:                                               ; preds = %42
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 52
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %66 = call i64 @zfRateCtrlGetHigherRate(%struct.zsRcCell* %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64*, i64** %6, align 8
  store i64 1, i64* %67, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %76 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %64, %47
  br label %354

78:                                               ; preds = %34, %3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %83 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %81, %84
  %86 = load i32, i32* @ZM_RATE_CTRL_PROBING_INTERVAL_MS, align 4
  %87 = load i32, i32* @ZM_MS_PER_TICK, align 4
  %88 = sdiv i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = icmp ugt i64 %85, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %93 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ZM_RATE_CTRL_MIN_PROBING_PACKET, align 8
  %96 = icmp uge i64 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %91, %78
  %98 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %99 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp uge i64 %100, 1000
  br i1 %101, label %102, label %353

102:                                              ; preds = %97, %91
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  store i32 0, i32* %106, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %111 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %102
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %121 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, 100
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %130 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %125, %133
  %135 = call i32 @zm_agg_min(i32 100, i32 %134)
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %140 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %135, i32* %142, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %147 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %116
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %157 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %152, %116
  br label %163

163:                                              ; preds = %162, %102
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %168 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ZM_RATE_PROBING_THRESHOLD, align 4
  %173 = add nsw i32 %172, 15
  %174 = icmp sle i32 %171, %173
  br i1 %174, label %192, label %175

175:                                              ; preds = %163
  %176 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %177 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ule i64 %178, 16
  br i1 %179, label %180, label %224

180:                                              ; preds = %175
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %185 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sdiv i32 %188, 2
  %190 = load i32, i32* @ZM_RATE_PROBING_THRESHOLD, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %224

192:                                              ; preds = %180, %163
  %193 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %194 = call i64 @zfRateCtrlGetHigherRate(%struct.zsRcCell* %193)
  store i64 %194, i64* %7, align 8
  %195 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %196 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %223

199:                                              ; preds = %192
  %200 = load i64*, i64** %6, align 8
  store i64 1, i64* %200, align 8
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  store i32 0, i32* %206, align 8
  %207 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %208 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ule i64 %209, 16
  br i1 %210, label %211, label %214

211:                                              ; preds = %199
  %212 = load i32, i32* @ZM_RATE_SUCCESS_PROBING, align 4
  %213 = sdiv i32 %212, 2
  br label %216

214:                                              ; preds = %199
  %215 = load i32, i32* @ZM_RATE_SUCCESS_PROBING, align 4
  br label %216

216:                                              ; preds = %214, %211
  %217 = phi i32 [ %213, %211 ], [ %215, %214 ]
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @ZM_LV_0, align 4
  %221 = load i64, i64* %7, align 8
  %222 = call i32 @zm_msg1_tx(i32 %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %221)
  br label %223

223:                                              ; preds = %216, %192
  br label %224

224:                                              ; preds = %223, %180, %175
  %225 = load i32, i32* @ZM_LV_1, align 4
  %226 = call i32 @zm_msg0_tx(i32 %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %227 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %228 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = ashr i32 %229, 1
  %231 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %232 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 8
  %233 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %234 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = lshr i64 %235, 1
  %237 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %238 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 7
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %243 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = ashr i32 %246, 1
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 7
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %252 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 %247, i32* %254, align 4
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 5
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %259 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = ashr i32 %262, 1
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 5
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %268 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  store i32 %263, i32* %270, align 4
  %271 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %272 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp ugt i64 %273, 15
  br i1 %274, label %275, label %327

275:                                              ; preds = %224
  %276 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %277 = call i64 @zfRateCtrlGetHigherRate(%struct.zsRcCell* %276)
  store i64 %277, i64* %8, align 8
  %278 = load i64, i64* %8, align 8
  %279 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %280 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %278, %281
  br i1 %282, label %283, label %326

283:                                              ; preds = %275
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 6
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* %8, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %326

291:                                              ; preds = %283
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 6
  %294 = load i32*, i32** %293, align 8
  %295 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %296 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = load i64*, i64** @FailDiff, align 8
  %302 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %303 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds i64, i64* %301, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = add nsw i64 %300, %306
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 6
  %310 = load i32*, i32** %309, align 8
  %311 = load i64, i64* %8, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = icmp sgt i64 %307, %314
  br i1 %315, label %316, label %326

316:                                              ; preds = %291
  %317 = load i32, i32* @ZM_RATE_SUCCESS_PROBING, align 4
  %318 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 8
  %320 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 4
  store i32 %317, i32* %321, align 4
  %322 = load i32*, i32** %4, align 8
  %323 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %324 = load i64, i64* %8, align 8
  %325 = call i32 @zfRateCtrlTxSuccessEvent(i32* %322, %struct.zsRcCell* %323, i64 %324)
  br label %326

326:                                              ; preds = %316, %291, %283, %275
  br label %347

327:                                              ; preds = %224
  %328 = load i32*, i32** %4, align 8
  %329 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %330 = call i64 @zfRateCtrlFindMaxUDPTP(i32* %328, %struct.zsRcCell* %329)
  store i64 %330, i64* %8, align 8
  %331 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %332 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* %8, align 8
  %335 = icmp ult i64 %333, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %327
  %337 = load i32, i32* @ZM_RATE_SUCCESS_PROBING, align 4
  %338 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 8
  %340 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 4
  store i32 %337, i32* %341, align 4
  %342 = load i32*, i32** %4, align 8
  %343 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %344 = load i64, i64* %8, align 8
  %345 = call i32 @zfRateCtrlTxSuccessEvent(i32* %342, %struct.zsRcCell* %343, i64 %344)
  br label %346

346:                                              ; preds = %336, %327
  br label %347

347:                                              ; preds = %346, %326
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %352 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %351, i32 0, i32 1
  store i64 %350, i64* %352, align 8
  br label %353

353:                                              ; preds = %347, %97
  br label %354

354:                                              ; preds = %353, %77
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ugt i64 %357, 1000
  br i1 %358, label %359, label %494

359:                                              ; preds = %354
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %364 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = sub i64 %362, %366
  %368 = icmp ugt i64 %367, 3840
  br i1 %368, label %369, label %494

369:                                              ; preds = %359
  %370 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %371 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 8
  %373 = icmp slt i32 %372, 70
  br i1 %373, label %374, label %485

374:                                              ; preds = %369
  %375 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %376 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = ashr i32 %377, 1
  %379 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %380 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %379, i32 0, i32 3
  store i32 %378, i32* %380, align 8
  %381 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %382 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = lshr i64 %383, 1
  %385 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %386 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %385, i32 0, i32 0
  store i64 %384, i64* %386, align 8
  %387 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 7
  %389 = load i32*, i32** %388, align 8
  %390 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %391 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %390, i32 0, i32 2
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = ashr i32 %394, 1
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 7
  %398 = load i32*, i32** %397, align 8
  %399 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %400 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %399, i32 0, i32 2
  %401 = load i64, i64* %400, align 8
  %402 = getelementptr inbounds i32, i32* %398, i64 %401
  store i32 %395, i32* %402, align 4
  %403 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 5
  %405 = load i32*, i32** %404, align 8
  %406 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %407 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = ashr i32 %410, 1
  %412 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %413 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i32 0, i32 5
  %414 = load i32*, i32** %413, align 8
  %415 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %416 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  store i32 %411, i32* %418, align 4
  %419 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %420 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = sext i32 %421 to i64
  %423 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %424 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = icmp ult i64 %422, %425
  br i1 %426, label %427, label %432

427:                                              ; preds = %374
  %428 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %429 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  br label %436

432:                                              ; preds = %374
  %433 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %434 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  br label %436

436:                                              ; preds = %432, %427
  %437 = phi i64 [ %431, %427 ], [ %435, %432 ]
  %438 = trunc i64 %437 to i32
  %439 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %440 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %439, i32 0, i32 3
  store i32 %438, i32* %440, align 8
  %441 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i32 0, i32 7
  %443 = load i32*, i32** %442, align 8
  %444 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %445 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %444, i32 0, i32 2
  %446 = load i64, i64* %445, align 8
  %447 = getelementptr inbounds i32, i32* %443, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i32 0, i32 5
  %451 = load i32*, i32** %450, align 8
  %452 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %453 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %452, i32 0, i32 2
  %454 = load i64, i64* %453, align 8
  %455 = getelementptr inbounds i32, i32* %451, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = icmp slt i32 %448, %456
  br i1 %457, label %458, label %467

458:                                              ; preds = %436
  %459 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %460 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %459, i32 0, i32 7
  %461 = load i32*, i32** %460, align 8
  %462 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %463 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %462, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds i32, i32* %461, i64 %464
  %466 = load i32, i32* %465, align 4
  br label %476

467:                                              ; preds = %436
  %468 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %469 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i32 0, i32 5
  %470 = load i32*, i32** %469, align 8
  %471 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %472 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %471, i32 0, i32 2
  %473 = load i64, i64* %472, align 8
  %474 = getelementptr inbounds i32, i32* %470, i64 %473
  %475 = load i32, i32* %474, align 4
  br label %476

476:                                              ; preds = %467, %458
  %477 = phi i32 [ %466, %458 ], [ %475, %467 ]
  %478 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %479 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %478, i32 0, i32 7
  %480 = load i32*, i32** %479, align 8
  %481 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %482 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %481, i32 0, i32 2
  %483 = load i64, i64* %482, align 8
  %484 = getelementptr inbounds i32, i32* %480, i64 %483
  store i32 %477, i32* %484, align 4
  br label %485

485:                                              ; preds = %476, %369
  %486 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %487 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = trunc i64 %488 to i32
  %490 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %491 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %490, i32 0, i32 4
  store i32 %489, i32* %491, align 4
  %492 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %493 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %492, i32 0, i32 5
  store i32 0, i32* %493, align 8
  br label %494

494:                                              ; preds = %485, %359, %354
  %495 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %496 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = add i64 %497, 1
  store i64 %498, i64* %496, align 8
  %499 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %500 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %499, i32 0, i32 5
  %501 = load i32, i32* %500, align 8
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %500, align 8
  %503 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %504 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %503, i32 0, i32 5
  %505 = load i32*, i32** %504, align 8
  %506 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %507 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %506, i32 0, i32 2
  %508 = load i64, i64* %507, align 8
  %509 = getelementptr inbounds i32, i32* %505, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %509, align 4
  %512 = load i32, i32* @ZM_LV_1, align 4
  %513 = load i64, i64* %7, align 8
  %514 = call i32 @zm_msg1_tx(i32 %512, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %513)
  %515 = load i64, i64* %7, align 8
  ret i64 %515
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg1_tx(i32, i8*, i64) #1

declare dso_local i64 @zfRateCtrlGetHigherRate(%struct.zsRcCell*) #1

declare dso_local i32 @zm_agg_min(i32, i32) #1

declare dso_local i32 @zm_msg0_tx(i32, i8*) #1

declare dso_local i32 @zfRateCtrlTxSuccessEvent(i32*, %struct.zsRcCell*, i64) #1

declare dso_local i64 @zfRateCtrlFindMaxUDPTP(i32*, %struct.zsRcCell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
