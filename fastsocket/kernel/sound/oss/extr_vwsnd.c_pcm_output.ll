; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_pcm_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_pcm_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"(devc=0x%p, erflown=%d, nb=%d)\0A\00", align 1
@ERFLOWN = common dso_local global i32 0, align 4
@HW_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning: HW BUSY\0A\00", align 1
@DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"returning: DISABLED\0A\00", align 1
@SW_RUN = common dso_local global i64 0, align 8
@SW_INITIAL = common dso_local global i64 0, align 8
@SW_OFF = common dso_local global i64 0, align 8
@SW_DRAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"stopping.  hwstate = %d\0A\00", align 1
@HW_STOPPED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"nb = %d, fragsize = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"hw_avail = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"sw_avail = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"hwsize = %d, swptr = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"swsize = %d, swidx = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"copying swb[%d..%d] to hwb[%d..%d]\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"starting\0A\00", align 1
@HW_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32)* @pcm_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm_output(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %7, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DBGEV(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 12
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %3
  %47 = load i32, i32* @ERFLOWN, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @__swb_inc_u(%struct.TYPE_10__* %53, i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HW_BUSY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 12
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %353

68:                                               ; preds = %52
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DISABLED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 12
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %353

81:                                               ; preds = %68
  %82 = load i32, i32* @HW_BUSY, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %316
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %18, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %19, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 15
  %96 = call i32 @li_read_hwptr(i32* %95)
  store i32 %96, i32* %14, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 15
  %99 = call i32 @li_read_swptr(i32* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = srem i32 %104, %105
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %20, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 0, %110
  %112 = and i32 %109, %111
  store i32 %112, i32* %15, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sub nsw i32 0, %116
  %118 = and i32 %115, %117
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %87
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* @SW_RUN, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ERFLOWN, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load i32, i32* @ERFLOWN, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %125
  br label %181

140:                                              ; preds = %121, %87
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* @SW_INITIAL, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %162, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* @SW_OFF, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %162, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* @SW_DRAIN, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %180

152:                                              ; preds = %148
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %180, label %155

155:                                              ; preds = %152
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ERFLOWN, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %155, %144, %140
  %163 = load i64, i64* %18, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* @HW_STOPPED, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 15
  %172 = call i32 @li_deactivate_dma(i32* %171)
  %173 = load i64, i64* @HW_STOPPED, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 5
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %169, %162
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 13
  %179 = call i32 @wake_up(i32* %178)
  br label %341

180:                                              ; preds = %155, %152, %148
  br label %181

181:                                              ; preds = %180, %139
  %182 = load i32, i32* %16, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %184, %181
  br label %341

188:                                              ; preds = %184
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 12
  %191 = load i64, i64* %12, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %15, align 4
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %188
  %201 = load i32, i32* %16, align 4
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %200, %188
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %13, align 4
  %206 = sub nsw i32 %204, %205
  %207 = icmp sgt i32 %203, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %13, align 4
  %211 = sub nsw i32 %209, %210
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %208, %202
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %17, align 4
  %216 = sub nsw i32 %214, %215
  %217 = icmp sgt i32 %213, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %17, align 4
  %221 = sub nsw i32 %219, %220
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %218, %212
  %223 = load i32, i32* %6, align 4
  %224 = icmp sgt i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i32 @ASSERT(i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %11, align 4
  %229 = srem i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %245

231:                                              ; preds = %222
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %11, align 4
  %234 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %232, i32 %233)
  %235 = load i32, i32* %15, align 4
  %236 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %16, align 4
  %238 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %13, align 4
  %241 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %239, i32 %240)
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %17, align 4
  %244 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %231, %222
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %11, align 4
  %248 = srem i32 %246, %247
  %249 = icmp ne i32 %248, 0
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = call i32 @ASSERT(i32 %251)
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %254, %255
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %258, %259
  %261 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %253, i32 %256, i32 %257, i32 %260)
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @pcm_copy_out(%struct.TYPE_10__* %262, i32 %263, i32 %264, i32 %265)
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 15
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %6, align 4
  %271 = add nsw i32 %269, %270
  %272 = load i32, i32* %9, align 4
  %273 = srem i32 %271, %272
  %274 = call i32 @li_write_swptr(i32* %268, i32 %273)
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 12
  %277 = load i64, i64* %12, align 8
  %278 = call i32 @spin_lock_irqsave(i32* %276, i64 %277)
  %279 = load i64, i64* %18, align 8
  %280 = load i64, i64* @HW_STOPPED, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %316

282:                                              ; preds = %245
  %283 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 15
  %286 = call i32 @li_activate_dma(i32* %285)
  %287 = load i64, i64* @HW_RUNNING, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 5
  store i64 %287, i64* %289, align 8
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 15
  %292 = call i32 @li_read_USTMSC(i32* %291, %struct.TYPE_12__* %21)
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 9
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 10
  %298 = load i32, i32* %297, align 4
  %299 = srem i32 %295, %298
  %300 = icmp eq i32 %299, 0
  %301 = zext i1 %300 to i32
  %302 = call i32 @ASSERT(i32 %301)
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 9
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 10
  %310 = load i32, i32* %309, align 4
  %311 = sdiv i32 %307, %310
  %312 = sext i32 %311 to i64
  %313 = sub nsw i64 %304, %312
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 14
  store i64 %313, i64* %315, align 8
  br label %316

316:                                              ; preds = %282, %245
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %318 = load i32, i32* %6, align 4
  %319 = call i32 @__swb_inc_i(%struct.TYPE_10__* %317, i32 %318)
  %320 = load i32, i32* %6, align 4
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 9
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %323, %320
  store i32 %324, i32* %322, align 8
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* %11, align 4
  %327 = sdiv i32 %325, %326
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 11
  %330 = load i32, i32* %329, align 8
  %331 = add nsw i32 %330, %327
  store i32 %331, i32* %329, align 8
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* %11, align 4
  %334 = srem i32 %332, %333
  %335 = icmp eq i32 %334, 0
  %336 = zext i1 %335 to i32
  %337 = call i32 @ASSERT(i32 %336)
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 13
  %340 = call i32 @wake_up(i32* %339)
  br label %87

341:                                              ; preds = %187, %176
  %342 = load i32, i32* @HW_BUSY, align 4
  %343 = xor i32 %342, -1
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %346, %343
  store i32 %347, i32* %345, align 8
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 12
  %350 = load i64, i64* %12, align 8
  %351 = call i32 @spin_unlock_irqrestore(i32* %349, i64 %350)
  %352 = call i32 (...) @DBGRV()
  br label %353

353:                                              ; preds = %341, %75, %62
  ret void
}

declare dso_local i32 @DBGEV(i8*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__swb_inc_u(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBGPV(i8*, ...) #1

declare dso_local i32 @li_read_hwptr(i32*) #1

declare dso_local i32 @li_read_swptr(i32*) #1

declare dso_local i32 @DBGP(i8*, i32, ...) #1

declare dso_local i32 @li_deactivate_dma(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @pcm_copy_out(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @li_write_swptr(i32*, i32) #1

declare dso_local i32 @li_activate_dma(i32*) #1

declare dso_local i32 @li_read_USTMSC(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @__swb_inc_i(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DBGRV(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
