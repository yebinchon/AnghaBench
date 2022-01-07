; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_push_dummy_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_FUNC = common dso_local global i64 0, align 8
@IA64_CFM_REGNUM = common dso_local global i32 0, align 4
@IA64_BSP_REGNUM = common dso_local global i32 0, align 4
@IA64_PFS_REGNUM = common dso_local global i32 0, align 4
@IA64_FR8_REGNUM = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@IA64_FR16_REGNUM = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@builtin_type_ia64_ext = common dso_local global i32 0, align 4
@IA64_GR8_REGNUM = common dso_local global i32 0, align 4
@IA64_GR1_REGNUM = common dso_local global i32 0, align 4
@IA64_BR0_REGNUM = common dso_local global i32 0, align 4
@sp_regnum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.regcache*, i32, i32, %struct.value**, i32, i32, i32)* @ia64_push_dummy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regcache*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.value*, align 8
  %21 = alloca %struct.type*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.type*, align 8
  %38 = alloca [8 x i8], align 1
  %39 = alloca [8 x i8], align 1
  %40 = alloca i8*, align 8
  %41 = alloca i64, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.regcache* %2, %struct.regcache** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.value** %5, %struct.value*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %19, align 4
  br label %42

42:                                               ; preds = %81, %9
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load %struct.value**, %struct.value*** %15, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.value*, %struct.value** %47, i64 %49
  %51 = load %struct.value*, %struct.value** %50, align 8
  store %struct.value* %51, %struct.value** %20, align 8
  %52 = load %struct.value*, %struct.value** %20, align 8
  %53 = call i32 @VALUE_TYPE(%struct.value* %52)
  %54 = call %struct.type* @check_typedef(i32 %53)
  store %struct.type* %54, %struct.type** %21, align 8
  %55 = load %struct.type*, %struct.type** %21, align 8
  %56 = call i32 @TYPE_LENGTH(%struct.type* %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %24, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load %struct.type*, %struct.type** %21, align 8
  %62 = call i64 @slot_alignment_is_next_even(%struct.type* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %24, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %24, align 4
  br label %67

67:                                               ; preds = %64, %60, %46
  %68 = load %struct.type*, %struct.type** %21, align 8
  %69 = call i64 @TYPE_CODE(%struct.type* %68)
  %70 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %28, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %28, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %22, align 4
  %77 = add nsw i32 %76, 7
  %78 = sdiv i32 %77, 8
  %79 = load i32, i32* %24, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %24, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %19, align 4
  br label %42

84:                                               ; preds = %42
  %85 = load i32, i32* %24, align 4
  %86 = icmp sgt i32 %85, 8
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %24, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i32 [ 8, %87 ], [ %89, %88 ]
  store i32 %91, i32* %25, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %25, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %26, align 4
  %95 = load i32, i32* @IA64_CFM_REGNUM, align 4
  %96 = call i32 @read_register(i32 %95)
  store i32 %96, i32* %31, align 4
  %97 = load i32, i32* @IA64_BSP_REGNUM, align 4
  %98 = call i32 @read_register(i32 %97)
  store i32 %98, i32* %30, align 4
  %99 = load i32, i32* %30, align 4
  %100 = load i32, i32* %25, align 4
  %101 = call i32 @rse_address_add(i32 %99, i32 %100)
  store i32 %101, i32* %33, align 4
  %102 = load i32, i32* @IA64_BSP_REGNUM, align 4
  %103 = load i32, i32* %33, align 4
  %104 = call i32 @write_register(i32 %102, i32 %103)
  %105 = load i32, i32* @IA64_PFS_REGNUM, align 4
  %106 = call i32 @read_register(i32 %105)
  store i32 %106, i32* %32, align 4
  %107 = load i32, i32* %32, align 4
  %108 = sext i32 %107 to i64
  %109 = and i64 %108, -4611686018427387904
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %32, align 4
  %111 = load i32, i32* %31, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %112, 281474976710655
  %114 = load i32, i32* %32, align 4
  %115 = sext i32 %114 to i64
  %116 = or i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %32, align 4
  %118 = load i32, i32* @IA64_PFS_REGNUM, align 4
  %119 = load i32, i32* %32, align 4
  %120 = call i32 @write_register(i32 %118, i32 %119)
  %121 = load i32, i32* %31, align 4
  %122 = sext i32 %121 to i64
  %123 = and i64 %122, -4611686018427387904
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %31, align 4
  %125 = load i32, i32* %25, align 4
  %126 = load i32, i32* %31, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %31, align 4
  %128 = load i32, i32* @IA64_CFM_REGNUM, align 4
  %129 = load i32, i32* %31, align 4
  %130 = call i32 @write_register(i32 %128, i32 %129)
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %28, align 4
  %133 = mul nsw i32 %132, 16
  %134 = sub nsw i32 %131, %133
  store i32 %134, i32* %34, align 4
  %135 = load i32, i32* %34, align 4
  %136 = sext i32 %135 to i64
  %137 = and i64 %136, -16
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %34, align 4
  %139 = load i32, i32* %16, align 4
  %140 = sub nsw i32 %139, 16
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %28, align 4
  %143 = add nsw i32 %141, %142
  %144 = mul nsw i32 %143, 8
  %145 = sub nsw i32 %140, %144
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = and i64 %147, -16
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %16, align 4
  store i32 0, i32* %27, align 4
  %150 = load i32, i32* @IA64_FR8_REGNUM, align 4
  store i32 %150, i32* %29, align 4
  store i32 0, i32* %19, align 4
  br label %151

151:                                              ; preds = %312, %90
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %315

155:                                              ; preds = %151
  %156 = load %struct.value**, %struct.value*** %15, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.value*, %struct.value** %156, i64 %158
  %160 = load %struct.value*, %struct.value** %159, align 8
  store %struct.value* %160, %struct.value** %20, align 8
  %161 = load %struct.value*, %struct.value** %20, align 8
  %162 = call i32 @VALUE_TYPE(%struct.value* %161)
  %163 = call %struct.type* @check_typedef(i32 %162)
  store %struct.type* %163, %struct.type** %21, align 8
  %164 = load %struct.type*, %struct.type** %21, align 8
  %165 = call i32 @TYPE_LENGTH(%struct.type* %164)
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* %22, align 4
  %167 = icmp eq i32 %166, 8
  br i1 %167, label %168, label %208

168:                                              ; preds = %155
  %169 = load %struct.type*, %struct.type** %21, align 8
  %170 = call i64 @TYPE_CODE(%struct.type* %169)
  %171 = load i64, i64* @TYPE_CODE_PTR, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %208

173:                                              ; preds = %168
  %174 = load %struct.type*, %struct.type** %21, align 8
  %175 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %174)
  %176 = call i64 @TYPE_CODE(%struct.type* %175)
  %177 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %208

179:                                              ; preds = %173
  %180 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i64 0, i64 0
  %181 = load %struct.value*, %struct.value** %20, align 8
  %182 = call i64 @VALUE_CONTENTS(%struct.value* %181)
  %183 = call i32 @extract_unsigned_integer(i64 %182, i32 8)
  %184 = call i32 @find_func_descr(i32 %183, i32* %34)
  %185 = call i32 @store_unsigned_integer(i8* %180, i32 8, i32 %184)
  %186 = load i32, i32* %27, align 4
  %187 = load i32, i32* %25, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %179
  %190 = load i32, i32* %30, align 4
  %191 = load i32, i32* %27, align 4
  %192 = call i32 @rse_address_add(i32 %190, i32 %191)
  %193 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i64 0, i64 0
  %194 = call i32 @write_memory(i32 %192, i8* %193, i32 8)
  br label %205

195:                                              ; preds = %179
  %196 = load i32, i32* %16, align 4
  %197 = add nsw i32 %196, 16
  %198 = load i32, i32* %27, align 4
  %199 = load i32, i32* %25, align 4
  %200 = sub nsw i32 %198, %199
  %201 = mul nsw i32 8, %200
  %202 = add nsw i32 %197, %201
  %203 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i64 0, i64 0
  %204 = call i32 @write_memory(i32 %202, i8* %203, i32 8)
  br label %205

205:                                              ; preds = %195, %189
  %206 = load i32, i32* %27, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %27, align 4
  br label %312

208:                                              ; preds = %173, %168, %155
  %209 = load i32, i32* %27, align 4
  %210 = and i32 %209, 1
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load %struct.type*, %struct.type** %21, align 8
  %214 = call i64 @slot_alignment_is_next_even(%struct.type* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i32, i32* %27, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %27, align 4
  br label %219

219:                                              ; preds = %216, %212, %208
  store i32 0, i32* %23, align 4
  br label %220

220:                                              ; preds = %259, %219
  %221 = load i32, i32* %22, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %266

223:                                              ; preds = %220
  %224 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i64 0, i64 0
  %225 = call i32 @memset(i8* %224, i32 0, i32 8)
  %226 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i64 0, i64 0
  %227 = load %struct.value*, %struct.value** %20, align 8
  %228 = call i64 @VALUE_CONTENTS(%struct.value* %227)
  %229 = load i32, i32* %23, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %228, %230
  %232 = load i32, i32* %22, align 4
  %233 = icmp sgt i32 %232, 8
  br i1 %233, label %234, label %235

234:                                              ; preds = %223
  br label %237

235:                                              ; preds = %223
  %236 = load i32, i32* %22, align 4
  br label %237

237:                                              ; preds = %235, %234
  %238 = phi i32 [ 8, %234 ], [ %236, %235 ]
  %239 = call i32 @memcpy(i8* %226, i64 %231, i32 %238)
  %240 = load i32, i32* %27, align 4
  %241 = load i32, i32* %25, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %237
  %244 = load i32, i32* %30, align 4
  %245 = load i32, i32* %27, align 4
  %246 = call i32 @rse_address_add(i32 %244, i32 %245)
  %247 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i64 0, i64 0
  %248 = call i32 @write_memory(i32 %246, i8* %247, i32 8)
  br label %259

249:                                              ; preds = %237
  %250 = load i32, i32* %16, align 4
  %251 = add nsw i32 %250, 16
  %252 = load i32, i32* %27, align 4
  %253 = load i32, i32* %25, align 4
  %254 = sub nsw i32 %252, %253
  %255 = mul nsw i32 8, %254
  %256 = add nsw i32 %251, %255
  %257 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i64 0, i64 0
  %258 = call i32 @write_memory(i32 %256, i8* %257, i32 8)
  br label %259

259:                                              ; preds = %249, %243
  %260 = load i32, i32* %23, align 4
  %261 = add nsw i32 %260, 8
  store i32 %261, i32* %23, align 4
  %262 = load i32, i32* %22, align 4
  %263 = sub nsw i32 %262, 8
  store i32 %263, i32* %22, align 4
  %264 = load i32, i32* %27, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %27, align 4
  br label %220

266:                                              ; preds = %220
  %267 = load %struct.type*, %struct.type** %21, align 8
  %268 = call %struct.type* @is_float_or_hfa_type(%struct.type* %267)
  store %struct.type* %268, %struct.type** %37, align 8
  %269 = load %struct.type*, %struct.type** %37, align 8
  %270 = icmp ne %struct.type* %269, null
  br i1 %270, label %271, label %311

271:                                              ; preds = %266
  store i32 0, i32* %23, align 4
  %272 = load %struct.type*, %struct.type** %21, align 8
  %273 = call i32 @TYPE_LENGTH(%struct.type* %272)
  store i32 %273, i32* %22, align 4
  br label %274

274:                                              ; preds = %283, %271
  %275 = load i32, i32* %22, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load i32, i32* %29, align 4
  %279 = load i32, i32* @IA64_FR16_REGNUM, align 4
  %280 = icmp slt i32 %278, %279
  br label %281

281:                                              ; preds = %277, %274
  %282 = phi i1 [ false, %274 ], [ %280, %277 ]
  br i1 %282, label %283, label %310

283:                                              ; preds = %281
  %284 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %285 = zext i32 %284 to i64
  %286 = call i8* @llvm.stacksave()
  store i8* %286, i8** %40, align 8
  %287 = alloca i8, i64 %285, align 16
  store i64 %285, i64* %41, align 8
  %288 = load %struct.value*, %struct.value** %20, align 8
  %289 = call i64 @VALUE_CONTENTS(%struct.value* %288)
  %290 = load i32, i32* %23, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %289, %291
  %293 = load %struct.type*, %struct.type** %37, align 8
  %294 = load i32, i32* @builtin_type_ia64_ext, align 4
  %295 = call i32 @convert_typed_floating(i64 %292, %struct.type* %293, i8* %287, i32 %294)
  %296 = load %struct.regcache*, %struct.regcache** %12, align 8
  %297 = load i32, i32* %29, align 4
  %298 = call i32 @regcache_cooked_write(%struct.regcache* %296, i32 %297, i8* %287)
  %299 = load i32, i32* %29, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %29, align 4
  %301 = load %struct.type*, %struct.type** %37, align 8
  %302 = call i32 @TYPE_LENGTH(%struct.type* %301)
  %303 = load i32, i32* %23, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %23, align 4
  %305 = load %struct.type*, %struct.type** %37, align 8
  %306 = call i32 @TYPE_LENGTH(%struct.type* %305)
  %307 = load i32, i32* %22, align 4
  %308 = sub nsw i32 %307, %306
  store i32 %308, i32* %22, align 4
  %309 = load i8*, i8** %40, align 8
  call void @llvm.stackrestore(i8* %309)
  br label %274

310:                                              ; preds = %281
  br label %311

311:                                              ; preds = %310, %266
  br label %312

312:                                              ; preds = %311, %205
  %313 = load i32, i32* %19, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %19, align 4
  br label %151

315:                                              ; preds = %151
  %316 = load i32, i32* %17, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load %struct.regcache*, %struct.regcache** %12, align 8
  %320 = load i32, i32* @IA64_GR8_REGNUM, align 4
  %321 = load i32, i32* %18, align 4
  %322 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %319, i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %318, %315
  %324 = load i32, i32* %11, align 4
  %325 = call i32 @FIND_GLOBAL_POINTER(i32 %324)
  store i32 %325, i32* %36, align 4
  %326 = load i32, i32* %36, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %323
  %329 = load i32, i32* @IA64_GR1_REGNUM, align 4
  %330 = load i32, i32* %36, align 4
  %331 = call i32 @write_register(i32 %329, i32 %330)
  br label %332

332:                                              ; preds = %328, %323
  %333 = load i32, i32* @IA64_BR0_REGNUM, align 4
  %334 = load i32, i32* %13, align 4
  %335 = call i32 @write_register(i32 %333, i32 %334)
  %336 = load i32, i32* @sp_regnum, align 4
  %337 = load i32, i32* %16, align 4
  %338 = call i32 @write_register(i32 %336, i32 %337)
  %339 = load i32, i32* %16, align 4
  ret i32 %339
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @slot_alignment_is_next_even(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @read_register(i32) #1

declare dso_local i32 @rse_address_add(i32, i32) #1

declare dso_local i32 @write_register(i32, i32) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @find_func_descr(i32, i32*) #1

declare dso_local i32 @extract_unsigned_integer(i64, i32) #1

declare dso_local i64 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local %struct.type* @is_float_or_hfa_type(%struct.type*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @convert_typed_floating(i64, %struct.type*, i8*, i32) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @regcache_cooked_write_unsigned(%struct.regcache*, i32, i32) #1

declare dso_local i32 @FIND_GLOBAL_POINTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
