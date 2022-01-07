; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_scan_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_scan_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.arm_prologue_cache = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ARM_SP_REGNUM = common dso_local global i64 0, align 8
@ARM_FP_REGNUM = common dso_local global i64 0, align 8
@ARM_LR_REGNUM = common dso_local global i64 0, align 8
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, %struct.arm_prologue_cache*)* @arm_scan_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_scan_prologue(%struct.frame_info* %0, %struct.arm_prologue_cache* %1) #0 {
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca %struct.arm_prologue_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  store %struct.arm_prologue_cache* %1, %struct.arm_prologue_cache** %4, align 8
  %28 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %29 = call i64 @frame_pc_unwind(%struct.frame_info* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* @ARM_SP_REGNUM, align 8
  %31 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %32 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %34 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %36 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %35, i32 0, i32 2
  store i32 0, i32* %36, align 4
  br i1 true, label %37, label %39

37:                                               ; preds = %2
  %38 = call i32 @frame_tdep_pc_fixup(i64* %12)
  br label %39

39:                                               ; preds = %37, %2
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @arm_pc_is_thumb(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %46 = call i32 @thumb_scan_prologue(i64 %44, %struct.arm_prologue_cache* %45)
  br label %365

47:                                               ; preds = %39
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @find_pc_partial_function(i64 %48, i32* null, i64* %9, i64* %10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, 64
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, 64
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %56, %51
  br label %75

60:                                               ; preds = %47
  %61 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %62 = load i64, i64* @ARM_FP_REGNUM, align 8
  %63 = call i64 @frame_unwind_register_unsigned(%struct.frame_info* %61, i64 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @safe_read_memory_integer(i64 %64, i32 4, i32* %14)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %365

68:                                               ; preds = %60
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @ADDR_BITS_REMOVE(i32 %69)
  %71 = sub nsw i64 %70, 8
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, 64
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %79, %75
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %343, %81
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %346

87:                                               ; preds = %83
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @read_memory_unsigned_integer(i64 %88, i32 4)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, -509558771
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %343

93:                                               ; preds = %87
  %94 = load i32, i32* %15, align 4
  %95 = and i32 %94, -4096
  %96 = icmp eq i32 %95, -494026752
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = and i32 %98, 255
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = and i32 %100, 3840
  %102 = lshr i32 %101, 7
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = lshr i32 %103, %104
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sub i32 32, %107
  %109 = shl i32 %106, %108
  %110 = or i32 %105, %109
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %8, align 4
  br label %343

112:                                              ; preds = %93
  %113 = load i32, i32* %15, align 4
  %114 = and i32 %113, -4096
  %115 = icmp eq i32 %114, -498221056
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i32, i32* %15, align 4
  %118 = and i32 %117, 255
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %15, align 4
  %120 = and i32 %119, 3840
  %121 = lshr i32 %120, 7
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %19, align 4
  %124 = lshr i32 %122, %123
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %19, align 4
  %127 = sub i32 32, %126
  %128 = shl i32 %125, %127
  %129 = or i32 %124, %128
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = sub i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %343

132:                                              ; preds = %112
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, -449978364
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 %136, 4
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %140 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i64, i64* @ARM_LR_REGNUM, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i32 %138, i32* %144, align 4
  br label %343

145:                                              ; preds = %132
  %146 = load i32, i32* %15, align 4
  %147 = and i32 %146, -65536
  %148 = icmp eq i32 %147, -382926848
  br i1 %148, label %149, label %178

149:                                              ; preds = %145
  %150 = load i32, i32* %15, align 4
  %151 = and i32 %150, 65535
  store i32 %151, i32* %20, align 4
  %152 = load i32, i32* @ARM_PC_REGNUM, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %174, %149
  %154 = load i32, i32* %5, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %153
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %5, align 4
  %159 = shl i32 1, %158
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load i32, i32* %6, align 4
  %164 = sub nsw i32 %163, 4
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %167 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %166, i32 0, i32 3
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i32 %165, i32* %172, align 4
  br label %173

173:                                              ; preds = %162, %156
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %5, align 4
  br label %153

177:                                              ; preds = %153
  br label %338

178:                                              ; preds = %145
  %179 = load i32, i32* %15, align 4
  %180 = and i32 %179, -16384
  %181 = icmp eq i32 %180, -448069632
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %15, align 4
  %184 = and i32 %183, -16144
  %185 = icmp eq i32 %184, -515178320
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %15, align 4
  %188 = and i32 %187, -16384
  %189 = icmp eq i32 %188, -452263936
  br i1 %189, label %190, label %191

190:                                              ; preds = %186, %182, %178
  br label %343

191:                                              ; preds = %186
  %192 = load i32, i32* %15, align 4
  %193 = and i32 %192, -16384
  %194 = icmp eq i32 %193, -439549952
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = load i32, i32* %15, align 4
  %197 = and i32 %196, -16144
  %198 = icmp eq i32 %197, -506658640
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %15, align 4
  %201 = and i32 %200, -16384
  %202 = icmp eq i32 %201, -443744256
  br i1 %202, label %203, label %204

203:                                              ; preds = %199, %195, %191
  br label %343

204:                                              ; preds = %199
  %205 = load i32, i32* %15, align 4
  %206 = and i32 %205, -4096
  %207 = icmp eq i32 %206, -498290688
  br i1 %207, label %208, label %229

208:                                              ; preds = %204
  %209 = load i32, i32* %15, align 4
  %210 = and i32 %209, 255
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %15, align 4
  %212 = and i32 %211, 3840
  %213 = lshr i32 %212, 7
  store i32 %213, i32* %22, align 4
  %214 = load i32, i32* %21, align 4
  %215 = load i32, i32* %22, align 4
  %216 = lshr i32 %214, %215
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* %22, align 4
  %219 = sub i32 32, %218
  %220 = shl i32 %217, %219
  %221 = or i32 %216, %220
  store i32 %221, i32* %21, align 4
  %222 = load i32, i32* %21, align 4
  %223 = sub i32 0, %222
  %224 = load i32, i32* %8, align 4
  %225 = add i32 %223, %224
  store i32 %225, i32* %7, align 4
  %226 = load i64, i64* @ARM_FP_REGNUM, align 8
  %227 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %228 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  br label %335

229:                                              ; preds = %204
  %230 = load i32, i32* %15, align 4
  %231 = and i32 %230, -4096
  %232 = icmp eq i32 %231, -498216960
  br i1 %232, label %233, label %250

233:                                              ; preds = %229
  %234 = load i32, i32* %15, align 4
  %235 = and i32 %234, 255
  store i32 %235, i32* %23, align 4
  %236 = load i32, i32* %15, align 4
  %237 = and i32 %236, 3840
  %238 = lshr i32 %237, 7
  store i32 %238, i32* %24, align 4
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* %24, align 4
  %241 = lshr i32 %239, %240
  %242 = load i32, i32* %23, align 4
  %243 = load i32, i32* %24, align 4
  %244 = sub i32 32, %243
  %245 = shl i32 %242, %244
  %246 = or i32 %241, %245
  store i32 %246, i32* %23, align 4
  %247 = load i32, i32* %23, align 4
  %248 = load i32, i32* %6, align 4
  %249 = sub i32 %248, %247
  store i32 %249, i32* %6, align 4
  br label %334

250:                                              ; preds = %229
  %251 = load i32, i32* %15, align 4
  %252 = and i32 %251, -32769
  %253 = icmp eq i32 %252, -311623421
  br i1 %253, label %254, label %270

254:                                              ; preds = %250
  %255 = load i32, i32* %6, align 4
  %256 = sub nsw i32 %255, 12
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* @ARM_F0_REGNUM, align 4
  %258 = load i32, i32* %15, align 4
  %259 = lshr i32 %258, 12
  %260 = and i32 %259, 7
  %261 = add i32 %257, %260
  store i32 %261, i32* %5, align 4
  %262 = load i32, i32* %6, align 4
  %263 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %264 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %263, i32 0, i32 3
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  store i32 %262, i32* %269, align 4
  br label %333

270:                                              ; preds = %250
  %271 = load i32, i32* %15, align 4
  %272 = and i32 %271, -4255745
  %273 = icmp eq i32 %272, -332594688
  br i1 %273, label %274, label %321

274:                                              ; preds = %270
  %275 = load i32, i32* %15, align 4
  %276 = and i32 %275, 2048
  %277 = icmp eq i32 %276, 2048
  br i1 %277, label %278, label %285

278:                                              ; preds = %274
  %279 = load i32, i32* %15, align 4
  %280 = and i32 %279, 262144
  %281 = icmp eq i32 %280, 262144
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i32 3, i32* %25, align 4
  br label %284

283:                                              ; preds = %278
  store i32 1, i32* %25, align 4
  br label %284

284:                                              ; preds = %283, %282
  br label %292

285:                                              ; preds = %274
  %286 = load i32, i32* %15, align 4
  %287 = and i32 %286, 262144
  %288 = icmp eq i32 %287, 262144
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  store i32 2, i32* %25, align 4
  br label %291

290:                                              ; preds = %285
  store i32 4, i32* %25, align 4
  br label %291

291:                                              ; preds = %290, %289
  br label %292

292:                                              ; preds = %291, %284
  %293 = load i32, i32* @ARM_F0_REGNUM, align 4
  %294 = load i32, i32* %15, align 4
  %295 = lshr i32 %294, 12
  %296 = and i32 %295, 7
  %297 = add i32 %293, %296
  store i32 %297, i32* %26, align 4
  %298 = load i32, i32* %26, align 4
  %299 = load i32, i32* %25, align 4
  %300 = add i32 %298, %299
  store i32 %300, i32* %27, align 4
  br label %301

301:                                              ; preds = %317, %292
  %302 = load i32, i32* %26, align 4
  %303 = load i32, i32* %27, align 4
  %304 = icmp ult i32 %302, %303
  br i1 %304, label %305, label %320

305:                                              ; preds = %301
  %306 = load i32, i32* %6, align 4
  %307 = sub nsw i32 %306, 12
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %310 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %309, i32 0, i32 3
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** %310, align 8
  %312 = load i32, i32* %26, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %26, align 4
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 0
  store i32 %308, i32* %316, align 4
  br label %317

317:                                              ; preds = %305
  %318 = load i32, i32* %26, align 4
  %319 = add i32 %318, 1
  store i32 %319, i32* %26, align 4
  br label %301

320:                                              ; preds = %301
  br label %332

321:                                              ; preds = %270
  %322 = load i32, i32* %15, align 4
  %323 = and i32 %322, -268435456
  %324 = icmp ne i32 %323, -536870912
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %346

326:                                              ; preds = %321
  %327 = load i32, i32* %15, align 4
  %328 = and i32 %327, -31457280
  %329 = icmp eq i32 %328, -400556032
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  br label %346

331:                                              ; preds = %326
  br label %343

332:                                              ; preds = %320
  br label %333

333:                                              ; preds = %332, %254
  br label %334

334:                                              ; preds = %333, %233
  br label %335

335:                                              ; preds = %334, %208
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337, %177
  br label %339

339:                                              ; preds = %338
  br label %340

340:                                              ; preds = %339
  br label %341

341:                                              ; preds = %340
  br label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342, %331, %203, %190, %135, %116, %97, %92
  %344 = load i64, i64* %11, align 8
  %345 = add nsw i64 %344, 4
  store i64 %345, i64* %11, align 8
  br label %83

346:                                              ; preds = %330, %325, %83
  %347 = load i32, i32* %6, align 4
  %348 = sub nsw i32 0, %347
  %349 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %350 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %349, i32 0, i32 1
  store i32 %348, i32* %350, align 8
  %351 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %352 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @ARM_FP_REGNUM, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %362

356:                                              ; preds = %346
  %357 = load i32, i32* %7, align 4
  %358 = load i32, i32* %6, align 4
  %359 = sub nsw i32 %357, %358
  %360 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %361 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %360, i32 0, i32 2
  store i32 %359, i32* %361, align 4
  br label %365

362:                                              ; preds = %346
  %363 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %4, align 8
  %364 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %363, i32 0, i32 2
  store i32 0, i32* %364, align 4
  br label %365

365:                                              ; preds = %43, %67, %362, %356
  ret void
}

declare dso_local i64 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i32 @frame_tdep_pc_fixup(i64*) #1

declare dso_local i64 @arm_pc_is_thumb(i64) #1

declare dso_local i32 @thumb_scan_prologue(i64, %struct.arm_prologue_cache*) #1

declare dso_local i64 @find_pc_partial_function(i64, i32*, i64*, i64*) #1

declare dso_local i64 @frame_unwind_register_unsigned(%struct.frame_info*, i64) #1

declare dso_local i32 @safe_read_memory_integer(i64, i32, i32*) #1

declare dso_local i64 @ADDR_BITS_REMOVE(i32) #1

declare dso_local i32 @read_memory_unsigned_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
