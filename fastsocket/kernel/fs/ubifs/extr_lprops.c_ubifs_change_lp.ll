; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_change_lp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_change_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_lprops = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"LEB %d, free %d, dirty %d, flags %d\00", align 1
@LPROPS_NC = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ubifs_lprops*, align 8
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.ubifs_lprops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_lprops*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %9, align 8
  store %struct.ubifs_lprops* %17, %struct.ubifs_lprops** %14, align 8
  %18 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %19 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @dbg_lp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 7
  %27 = call i32 @mutex_is_locked(i32* %26)
  %28 = call i32 @ubifs_assert(i32 %27)
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %6
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  br label %43

43:                                               ; preds = %34, %6
  %44 = phi i1 [ false, %6 ], [ %42, %34 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @ubifs_assert(i32 %45)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ubifs_assert(i32 %51)
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ubifs_assert(i32 %60)
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ubifs_assert(i32 %67)
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sle i64 %72, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ubifs_assert(i32 %78)
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 7
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %43
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 7
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %86, %43
  %95 = phi i1 [ false, %43 ], [ %93, %86 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @ubifs_assert(i32 %96)
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 7
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %94
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 7
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %104, %94
  %113 = phi i1 [ false, %94 ], [ %111, %104 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @ubifs_assert(i32 %114)
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 7
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @ubifs_assert(i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @LPROPS_NC, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %131, label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %10, align 4
  %130 = icmp sge i32 %129, 0
  br label %131

131:                                              ; preds = %128, %112
  %132 = phi i1 [ true, %112 ], [ %130, %128 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @ubifs_assert(i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @LPROPS_NC, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %141, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %11, align 4
  %140 = icmp sge i32 %139, 0
  br label %141

141:                                              ; preds = %138, %131
  %142 = phi i1 [ true, %131 ], [ %140, %138 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @ubifs_assert(i32 %143)
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %146 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %147 = call i32 @is_lprops_dirty(%struct.ubifs_info* %145, %struct.ubifs_lprops* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %141
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %151 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %152 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %150, i32 %153)
  store %struct.ubifs_lprops* %154, %struct.ubifs_lprops** %14, align 8
  %155 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %156 = call i64 @IS_ERR(%struct.ubifs_lprops* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  store %struct.ubifs_lprops* %159, %struct.ubifs_lprops** %7, align 8
  br label %458

160:                                              ; preds = %149
  br label %171

161:                                              ; preds = %141
  %162 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %164 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %165 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %163, i32 %166)
  %168 = icmp eq %struct.ubifs_lprops* %162, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @ubifs_assert(i32 %169)
  br label %171

171:                                              ; preds = %161, %160
  %172 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %173 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 7
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %171
  %178 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %179 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 7
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  br label %184

184:                                              ; preds = %177, %171
  %185 = phi i1 [ false, %171 ], [ %183, %177 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @ubifs_assert(i32 %186)
  %188 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %189 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %188, i32 0, i32 5
  %190 = call i32 @spin_lock(i32* %189)
  %191 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %192 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @LPROPS_TAKEN, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %184
  %198 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %199 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %202 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %197
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %207 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %209, 1
  store i64 %210, i64* %208, align 8
  br label %211

211:                                              ; preds = %205, %197, %184
  %212 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %213 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @LPROPS_INDEX, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %260, label %218

218:                                              ; preds = %211
  %219 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %220 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %223 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %221, %224
  store i32 %225, i32* %15, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %228 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %218
  %232 = load i32, i32* %15, align 4
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %234 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %236, %232
  store i32 %237, i32* %235, align 8
  br label %249

238:                                              ; preds = %218
  %239 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %240 = load i32, i32* %15, align 4
  %241 = call i64 @ubifs_calc_dark(%struct.ubifs_info* %239, i32 %240)
  %242 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %243 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = sub nsw i64 %246, %241
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 4
  br label %249

249:                                              ; preds = %238, %231
  %250 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %251 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sub nsw i32 %252, %253
  %255 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %256 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %255, i32 0, i32 6
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = sub nsw i32 %258, %254
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %249, %211
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* @LPROPS_NC, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %316

264:                                              ; preds = %260
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @ALIGN(i32 %265, i32 8)
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %269 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %267, %270
  %272 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %273 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %272, i32 0, i32 6
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, %271
  store i32 %276, i32* %274, align 8
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %279 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %277, %280
  br i1 %281, label %282, label %297

282:                                              ; preds = %264
  %283 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %284 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %287 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %285, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %282
  %291 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %292 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, 1
  store i64 %295, i64* %293, align 8
  br label %296

296:                                              ; preds = %290, %282
  br label %312

297:                                              ; preds = %264
  %298 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %299 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %302 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %300, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %297
  %306 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %307 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %306, i32 0, i32 6
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = sub nsw i64 %309, 1
  store i64 %310, i64* %308, align 8
  br label %311

311:                                              ; preds = %305, %297
  br label %312

312:                                              ; preds = %311, %296
  %313 = load i32, i32* %10, align 4
  %314 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %315 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 4
  br label %316

316:                                              ; preds = %312, %260
  %317 = load i32, i32* %11, align 4
  %318 = load i32, i32* @LPROPS_NC, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %336

320:                                              ; preds = %316
  %321 = load i32, i32* %11, align 4
  %322 = call i32 @ALIGN(i32 %321, i32 8)
  store i32 %322, i32* %11, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %325 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %323, %326
  %328 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %329 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %328, i32 0, i32 6
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, %327
  store i32 %332, i32* %330, align 4
  %333 = load i32, i32* %11, align 4
  %334 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %335 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %320, %316
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* @LPROPS_NC, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %375

340:                                              ; preds = %336
  %341 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %342 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @LPROPS_INDEX, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %340
  %348 = load i32, i32* %12, align 4
  %349 = load i32, i32* @LPROPS_INDEX, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %347
  %353 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %354 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %353, i32 0, i32 6
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  store i32 %357, i32* %355, align 4
  br label %358

358:                                              ; preds = %352, %347
  br label %371

359:                                              ; preds = %340
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* @LPROPS_INDEX, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %359
  %365 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %366 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %365, i32 0, i32 6
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %364, %359
  br label %371

371:                                              ; preds = %370, %358
  %372 = load i32, i32* %12, align 4
  %373 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %374 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %373, i32 0, i32 2
  store i32 %372, i32* %374, align 4
  br label %375

375:                                              ; preds = %371, %336
  %376 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %377 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @LPROPS_INDEX, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %424, label %382

382:                                              ; preds = %375
  %383 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %384 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %387 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %385, %388
  store i32 %389, i32* %16, align 4
  %390 = load i32, i32* %16, align 4
  %391 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %392 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %390, %393
  br i1 %394, label %395, label %402

395:                                              ; preds = %382
  %396 = load i32, i32* %16, align 4
  %397 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %398 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %397, i32 0, i32 6
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 8
  %401 = add nsw i32 %400, %396
  store i32 %401, i32* %399, align 8
  br label %413

402:                                              ; preds = %382
  %403 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %404 = load i32, i32* %16, align 4
  %405 = call i64 @ubifs_calc_dark(%struct.ubifs_info* %403, i32 %404)
  %406 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %407 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %406, i32 0, i32 6
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %405
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %408, align 4
  br label %413

413:                                              ; preds = %402, %395
  %414 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %415 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %16, align 4
  %418 = sub nsw i32 %416, %417
  %419 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %420 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %419, i32 0, i32 6
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 6
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, %418
  store i32 %423, i32* %421, align 8
  br label %424

424:                                              ; preds = %413, %375
  %425 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %426 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @LPROPS_TAKEN, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %445

431:                                              ; preds = %424
  %432 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %433 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %436 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  %438 = icmp eq i32 %434, %437
  br i1 %438, label %439, label %445

439:                                              ; preds = %431
  %440 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %441 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %440, i32 0, i32 6
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %443, 1
  store i64 %444, i64* %442, align 8
  br label %445

445:                                              ; preds = %439, %431, %424
  %446 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %447 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  %448 = call i32 @change_category(%struct.ubifs_info* %446, %struct.ubifs_lprops* %447)
  %449 = load i32, i32* %13, align 4
  %450 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %451 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  %453 = add nsw i32 %452, %449
  store i32 %453, i32* %451, align 8
  %454 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %455 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %454, i32 0, i32 5
  %456 = call i32 @spin_unlock(i32* %455)
  %457 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %14, align 8
  store %struct.ubifs_lprops* %457, %struct.ubifs_lprops** %7, align 8
  br label %458

458:                                              ; preds = %445, %158
  %459 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %7, align 8
  ret %struct.ubifs_lprops* %459
}

declare dso_local i32 @dbg_lp(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @is_lprops_dirty(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ubifs_calc_dark(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @change_category(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
