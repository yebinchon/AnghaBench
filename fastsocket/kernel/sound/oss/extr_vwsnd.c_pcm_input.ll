; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_pcm_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_pcm_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"(devc=0x%p, erflown=%d, nb=%d)\0A\00", align 1
@ERFLOWN = common dso_local global i32 0, align 4
@HW_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"returning: HW BUSY or !swbuf\0A\00", align 1
@DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"returning: DISABLED\0A\00", align 1
@SW_RUN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"stopping.  hwstate = %d\0A\00", align 1
@HW_STOPPED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"nb = %d, fragsize = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"hw_avail = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"sw_avail = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"hwsize = %d, swptr = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"swsize = %d, swidx = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"copying hwb[%d..%d] to swb[%d..%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32)* @pcm_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm_input(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
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
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DBGEV(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 11
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %3
  %45 = load i32, i32* @ERFLOWN, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @__swb_inc_u(%struct.TYPE_8__* %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HW_BUSY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60, %50
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 11
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %280

71:                                               ; preds = %60
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DISABLED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 11
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %280

84:                                               ; preds = %71
  %85 = load i32, i32* @HW_BUSY, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %210
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %18, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %19, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 13
  %99 = call i32 @li_read_hwptr(i32* %98)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 13
  %102 = call i32 @li_read_swptr(i32* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %9, align 4
  %109 = srem i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 0, %110
  %112 = and i32 %109, %111
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %90
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %116, %90
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 0, %122
  %124 = and i32 %121, %123
  store i32 %124, i32* %16, align 4
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* @SW_RUN, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %118
  %129 = load i64, i64* %18, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* @HW_STOPPED, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 13
  %138 = call i32 @li_deactivate_dma(i32* %137)
  %139 = load i64, i64* @HW_STOPPED, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 5
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %135, %128
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 12
  %145 = call i32 @wake_up(i32* %144)
  br label %268

146:                                              ; preds = %118
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149, %146
  br label %268

153:                                              ; preds = %149
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 11
  %156 = load i64, i64* %12, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* %16, align 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %165, %153
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %13, align 4
  %171 = sub nsw i32 %169, %170
  %172 = icmp sgt i32 %168, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %13, align 4
  %176 = sub nsw i32 %174, %175
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %173, %167
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %17, align 4
  %181 = sub nsw i32 %179, %180
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %17, align 4
  %186 = sub nsw i32 %184, %185
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %183, %177
  %188 = load i32, i32* %6, align 4
  %189 = icmp sgt i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @ASSERT(i32 %190)
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %11, align 4
  %194 = srem i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %187
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %197, i32 %198)
  %200 = load i32, i32* %15, align 4
  %201 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %16, align 4
  %203 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %13, align 4
  %206 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %204, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %17, align 4
  %209 = call i32 (i8*, i32, ...) @DBGP(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %196, %187
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %11, align 4
  %213 = srem i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = call i32 @ASSERT(i32 %216)
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %223, %224
  %226 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %218, i32 %221, i32 %222, i32 %225)
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @pcm_copy_in(%struct.TYPE_8__* %227, i32 %228, i32 %229, i32 %230)
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 13
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %9, align 4
  %238 = srem i32 %236, %237
  %239 = call i32 @li_write_swptr(i32* %233, i32 %238)
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 11
  %242 = load i64, i64* %12, align 8
  %243 = call i32 @spin_lock_irqsave(i32* %241, i64 %242)
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %245 = load i32, i32* %6, align 4
  %246 = call i32 @__swb_inc_i(%struct.TYPE_8__* %244, i32 %245)
  %247 = load i32, i32* %6, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* %11, align 4
  %254 = sdiv i32 %252, %253
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 10
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %11, align 4
  %261 = srem i32 %259, %260
  %262 = icmp eq i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = call i32 @ASSERT(i32 %263)
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 12
  %267 = call i32 @wake_up(i32* %266)
  br label %90

268:                                              ; preds = %152, %142
  %269 = load i32, i32* @HW_BUSY, align 4
  %270 = xor i32 %269, -1
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, %270
  store i32 %274, i32* %272, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 11
  %277 = load i64, i64* %12, align 8
  %278 = call i32 @spin_unlock_irqrestore(i32* %276, i64 %277)
  %279 = call i32 (...) @DBGRV()
  br label %280

280:                                              ; preds = %268, %78, %65
  ret void
}

declare dso_local i32 @DBGEV(i8*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__swb_inc_u(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBGPV(i8*, ...) #1

declare dso_local i32 @li_read_hwptr(i32*) #1

declare dso_local i32 @li_read_swptr(i32*) #1

declare dso_local i32 @DBGP(i8*, i32, ...) #1

declare dso_local i32 @li_deactivate_dma(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @pcm_copy_in(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @li_write_swptr(i32*, i32) #1

declare dso_local i32 @__swb_inc_i(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DBGRV(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
