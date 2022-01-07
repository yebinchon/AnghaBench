; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-sysv-tdep.c_ppc64_sysv_abi_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-sysv-tdep.c_ppc64_sysv_abi_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }
%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i64 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i64 0, align 8
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i32 0, align 4
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@TYPE_CODE_COMPLEX = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global %struct.gdbarch* null, align 8
@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc64_sysv_abi_return_value(%struct.gdbarch* %0, %struct.type* %1, %struct.regcache* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.regcache*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gdbarch_tdep*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.type*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.type*, align 8
  %23 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %7, align 8
  store %struct.type* %1, %struct.type** %8, align 8
  store %struct.regcache* %2, %struct.regcache** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %24 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %25 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %24)
  store %struct.gdbarch_tdep* %25, %struct.gdbarch_tdep** %12, align 8
  %26 = load %struct.type*, %struct.type** %8, align 8
  %27 = call i64 @TYPE_CODE(%struct.type* %26)
  %28 = load i64, i64* @TYPE_CODE_FLT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %5
  %31 = load %struct.type*, %struct.type** %8, align 8
  %32 = call i32 @TYPE_LENGTH(%struct.type* %31)
  %33 = icmp sle i32 %32, 8
  br i1 %33, label %34, label %68

34:                                               ; preds = %30
  %35 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %13, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  %39 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %40 = load i64, i64* @FP0_REGNUM, align 8
  %41 = call %struct.type* @register_type(%struct.gdbarch* %39, i64 %40)
  store %struct.type* %41, %struct.type** %15, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.type*, %struct.type** %8, align 8
  %47 = load %struct.type*, %struct.type** %15, align 8
  %48 = call i32 @convert_typed_floating(i8* %45, %struct.type* %46, i8* %38, %struct.type* %47)
  %49 = load %struct.regcache*, %struct.regcache** %9, align 8
  %50 = load i64, i64* @FP0_REGNUM, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @regcache_cooked_write(%struct.regcache* %49, i64 %51, i8* %38)
  br label %53

53:                                               ; preds = %44, %34
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.regcache*, %struct.regcache** %9, align 8
  %58 = load i64, i64* @FP0_REGNUM, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @regcache_cooked_read(%struct.regcache* %57, i64 %59, i8* %38)
  %61 = load %struct.type*, %struct.type** %15, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.type*, %struct.type** %8, align 8
  %64 = call i32 @convert_typed_floating(i8* %38, %struct.type* %61, i8* %62, %struct.type* %63)
  br label %65

65:                                               ; preds = %56, %53
  %66 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %66, i32* %6, align 4
  %67 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %396

68:                                               ; preds = %30, %5
  %69 = load %struct.type*, %struct.type** %8, align 8
  %70 = call i64 @TYPE_CODE(%struct.type* %69)
  %71 = load i64, i64* @TYPE_CODE_INT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %68
  %74 = load %struct.type*, %struct.type** %8, align 8
  %75 = call i32 @TYPE_LENGTH(%struct.type* %74)
  %76 = icmp sle i32 %75, 8
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.regcache*, %struct.regcache** %9, align 8
  %82 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %83 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 3
  %86 = load %struct.type*, %struct.type** %8, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @unpack_long(%struct.type* %86, i8* %87)
  %89 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %81, i64 %85, i32 %88)
  br label %90

90:                                               ; preds = %80, %77
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load %struct.regcache*, %struct.regcache** %9, align 8
  %95 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %96 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 3
  %99 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %94, i64 %98, i32* %16)
  %100 = load i8*, i8** %10, align 8
  %101 = load %struct.type*, %struct.type** %8, align 8
  %102 = call i32 @TYPE_LENGTH(%struct.type* %101)
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @store_unsigned_integer(i8* %100, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %93, %90
  %106 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %106, i32* %6, align 4
  br label %396

107:                                              ; preds = %73, %68
  %108 = load %struct.type*, %struct.type** %8, align 8
  %109 = call i64 @TYPE_CODE(%struct.type* %108)
  %110 = load i64, i64* @TYPE_CODE_PTR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.regcache*, %struct.regcache** %9, align 8
  %117 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %118 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 3
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @regcache_cooked_write(%struct.regcache* %116, i64 %120, i8* %121)
  br label %123

123:                                              ; preds = %115, %112
  %124 = load i8*, i8** %10, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load %struct.regcache*, %struct.regcache** %9, align 8
  %128 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %129 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 3
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @regcache_cooked_read(%struct.regcache* %127, i64 %131, i8* %132)
  br label %134

134:                                              ; preds = %126, %123
  %135 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %135, i32* %6, align 4
  br label %396

136:                                              ; preds = %107
  %137 = load %struct.type*, %struct.type** %8, align 8
  %138 = call i64 @TYPE_CODE(%struct.type* %137)
  %139 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %195

141:                                              ; preds = %136
  %142 = load %struct.type*, %struct.type** %8, align 8
  %143 = call i32 @TYPE_LENGTH(%struct.type* %142)
  %144 = icmp sle i32 %143, 8
  br i1 %144, label %145, label %195

145:                                              ; preds = %141
  %146 = load %struct.type*, %struct.type** %8, align 8
  %147 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %146)
  %148 = call i64 @TYPE_CODE(%struct.type* %147)
  %149 = load i64, i64* @TYPE_CODE_INT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %195

151:                                              ; preds = %145
  %152 = load %struct.type*, %struct.type** %8, align 8
  %153 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %152)
  %154 = call i32 @TYPE_LENGTH(%struct.type* %153)
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %195

156:                                              ; preds = %151
  %157 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %158 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %159 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 3
  %162 = call i32 @register_size(%struct.gdbarch* %157, i64 %161)
  %163 = load %struct.type*, %struct.type** %8, align 8
  %164 = call i32 @TYPE_LENGTH(%struct.type* %163)
  %165 = sub nsw i32 %162, %164
  store i32 %165, i32* %17, align 4
  %166 = load i8*, i8** %11, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %179

168:                                              ; preds = %156
  %169 = load %struct.regcache*, %struct.regcache** %9, align 8
  %170 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %171 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 3
  %174 = load i32, i32* %17, align 4
  %175 = load %struct.type*, %struct.type** %8, align 8
  %176 = call i32 @TYPE_LENGTH(%struct.type* %175)
  %177 = load i8*, i8** %11, align 8
  %178 = call i32 @regcache_cooked_write_part(%struct.regcache* %169, i64 %173, i32 %174, i32 %176, i8* %177)
  br label %179

179:                                              ; preds = %168, %156
  %180 = load i8*, i8** %10, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = load %struct.regcache*, %struct.regcache** %9, align 8
  %184 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %12, align 8
  %185 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 3
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.type*, %struct.type** %8, align 8
  %190 = call i32 @TYPE_LENGTH(%struct.type* %189)
  %191 = load i8*, i8** %10, align 8
  %192 = call i32 @regcache_cooked_read_part(%struct.regcache* %183, i64 %187, i32 %188, i32 %190, i8* %191)
  br label %193

193:                                              ; preds = %182, %179
  %194 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %194, i32* %6, align 4
  br label %396

195:                                              ; preds = %151, %145, %141, %136
  %196 = load %struct.type*, %struct.type** %8, align 8
  %197 = call i64 @TYPE_CODE(%struct.type* %196)
  %198 = load i64, i64* @TYPE_CODE_FLT, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %260

200:                                              ; preds = %195
  %201 = load %struct.type*, %struct.type** %8, align 8
  %202 = call i32 @TYPE_LENGTH(%struct.type* %201)
  %203 = icmp eq i32 %202, 16
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = load %struct.type*, %struct.type** %8, align 8
  %206 = call i32 @TYPE_LENGTH(%struct.type* %205)
  %207 = icmp eq i32 %206, 32
  br i1 %207, label %208, label %260

208:                                              ; preds = %204, %200
  %209 = load i8*, i8** %11, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** %10, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %258

214:                                              ; preds = %211, %208
  store i32 0, i32* %18, align 4
  br label %215

215:                                              ; preds = %254, %214
  %216 = load i32, i32* %18, align 4
  %217 = load %struct.type*, %struct.type** %8, align 8
  %218 = call i32 @TYPE_LENGTH(%struct.type* %217)
  %219 = sdiv i32 %218, 8
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %257

221:                                              ; preds = %215
  %222 = load i8*, i8** %11, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %237

224:                                              ; preds = %221
  %225 = load %struct.regcache*, %struct.regcache** %9, align 8
  %226 = load i64, i64* @FP0_REGNUM, align 8
  %227 = add nsw i64 %226, 1
  %228 = load i32, i32* %18, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %227, %229
  %231 = load i8*, i8** %11, align 8
  %232 = load i32, i32* %18, align 4
  %233 = mul nsw i32 %232, 8
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  %236 = call i32 @regcache_cooked_write(%struct.regcache* %225, i64 %230, i8* %235)
  br label %237

237:                                              ; preds = %224, %221
  %238 = load i8*, i8** %10, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %253

240:                                              ; preds = %237
  %241 = load %struct.regcache*, %struct.regcache** %9, align 8
  %242 = load i64, i64* @FP0_REGNUM, align 8
  %243 = add nsw i64 %242, 1
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %243, %245
  %247 = load i8*, i8** %10, align 8
  %248 = load i32, i32* %18, align 4
  %249 = mul nsw i32 %248, 8
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  %252 = call i32 @regcache_cooked_read(%struct.regcache* %241, i64 %246, i8* %251)
  br label %253

253:                                              ; preds = %240, %237
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %18, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %18, align 4
  br label %215

257:                                              ; preds = %215
  br label %258

258:                                              ; preds = %257, %211
  %259 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %259, i32* %6, align 4
  br label %396

260:                                              ; preds = %204, %195
  %261 = load %struct.type*, %struct.type** %8, align 8
  %262 = call i64 @TYPE_CODE(%struct.type* %261)
  %263 = load i64, i64* @TYPE_CODE_COMPLEX, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %339

265:                                              ; preds = %260
  %266 = load %struct.type*, %struct.type** %8, align 8
  %267 = call i32 @TYPE_LENGTH(%struct.type* %266)
  %268 = icmp eq i32 %267, 8
  br i1 %268, label %273, label %269

269:                                              ; preds = %265
  %270 = load %struct.type*, %struct.type** %8, align 8
  %271 = call i32 @TYPE_LENGTH(%struct.type* %270)
  %272 = icmp eq i32 %271, 16
  br i1 %272, label %273, label %339

273:                                              ; preds = %269, %265
  %274 = load %struct.regcache*, %struct.regcache** %9, align 8
  %275 = icmp ne %struct.regcache* %274, null
  br i1 %275, label %276, label %337

276:                                              ; preds = %273
  store i32 0, i32* %19, align 4
  br label %277

277:                                              ; preds = %333, %276
  %278 = load i32, i32* %19, align 4
  %279 = icmp slt i32 %278, 2
  br i1 %279, label %280, label %336

280:                                              ; preds = %277
  %281 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %282 = zext i32 %281 to i64
  %283 = call i8* @llvm.stacksave()
  store i8* %283, i8** %20, align 8
  %284 = alloca i8, i64 %282, align 16
  store i64 %282, i64* %21, align 8
  %285 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %286 = load i64, i64* @FP0_REGNUM, align 8
  %287 = call %struct.type* @register_type(%struct.gdbarch* %285, i64 %286)
  store %struct.type* %287, %struct.type** %22, align 8
  %288 = load i8*, i8** %11, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %309

290:                                              ; preds = %280
  %291 = load i8*, i8** %11, align 8
  %292 = load i32, i32* %19, align 4
  %293 = load %struct.type*, %struct.type** %8, align 8
  %294 = call i32 @TYPE_LENGTH(%struct.type* %293)
  %295 = sdiv i32 %294, 2
  %296 = mul nsw i32 %292, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %291, i64 %297
  %299 = load %struct.type*, %struct.type** %8, align 8
  %300 = load %struct.type*, %struct.type** %22, align 8
  %301 = call i32 @convert_typed_floating(i8* %298, %struct.type* %299, i8* %284, %struct.type* %300)
  %302 = load %struct.regcache*, %struct.regcache** %9, align 8
  %303 = load i64, i64* @FP0_REGNUM, align 8
  %304 = add nsw i64 %303, 1
  %305 = load i32, i32* %19, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %304, %306
  %308 = call i32 @regcache_cooked_write(%struct.regcache* %302, i64 %307, i8* %284)
  br label %309

309:                                              ; preds = %290, %280
  %310 = load i8*, i8** %10, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %331

312:                                              ; preds = %309
  %313 = load %struct.regcache*, %struct.regcache** %9, align 8
  %314 = load i64, i64* @FP0_REGNUM, align 8
  %315 = add nsw i64 %314, 1
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %315, %317
  %319 = call i32 @regcache_cooked_read(%struct.regcache* %313, i64 %318, i8* %284)
  %320 = load %struct.type*, %struct.type** %22, align 8
  %321 = load i8*, i8** %10, align 8
  %322 = load i32, i32* %19, align 4
  %323 = load %struct.type*, %struct.type** %8, align 8
  %324 = call i32 @TYPE_LENGTH(%struct.type* %323)
  %325 = sdiv i32 %324, 2
  %326 = mul nsw i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %321, i64 %327
  %329 = load %struct.type*, %struct.type** %8, align 8
  %330 = call i32 @convert_typed_floating(i8* %284, %struct.type* %320, i8* %328, %struct.type* %329)
  br label %331

331:                                              ; preds = %312, %309
  %332 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %332)
  br label %333

333:                                              ; preds = %331
  %334 = load i32, i32* %19, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %19, align 4
  br label %277

336:                                              ; preds = %277
  br label %337

337:                                              ; preds = %336, %273
  %338 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %338, i32* %6, align 4
  br label %396

339:                                              ; preds = %269, %260
  %340 = load %struct.type*, %struct.type** %8, align 8
  %341 = call i64 @TYPE_CODE(%struct.type* %340)
  %342 = load i64, i64* @TYPE_CODE_COMPLEX, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %394

344:                                              ; preds = %339
  %345 = load %struct.type*, %struct.type** %8, align 8
  %346 = call i32 @TYPE_LENGTH(%struct.type* %345)
  %347 = icmp eq i32 %346, 32
  br i1 %347, label %348, label %394

348:                                              ; preds = %344
  %349 = load %struct.regcache*, %struct.regcache** %9, align 8
  %350 = icmp ne %struct.regcache* %349, null
  br i1 %350, label %351, label %392

351:                                              ; preds = %348
  store i32 0, i32* %23, align 4
  br label %352

352:                                              ; preds = %388, %351
  %353 = load i32, i32* %23, align 4
  %354 = icmp slt i32 %353, 4
  br i1 %354, label %355, label %391

355:                                              ; preds = %352
  %356 = load i8*, i8** %11, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %358, label %371

358:                                              ; preds = %355
  %359 = load %struct.regcache*, %struct.regcache** %9, align 8
  %360 = load i64, i64* @FP0_REGNUM, align 8
  %361 = add nsw i64 %360, 1
  %362 = load i32, i32* %23, align 4
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %361, %363
  %365 = load i8*, i8** %11, align 8
  %366 = load i32, i32* %23, align 4
  %367 = mul nsw i32 %366, 8
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %365, i64 %368
  %370 = call i32 @regcache_cooked_write(%struct.regcache* %359, i64 %364, i8* %369)
  br label %371

371:                                              ; preds = %358, %355
  %372 = load i8*, i8** %10, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %387

374:                                              ; preds = %371
  %375 = load %struct.regcache*, %struct.regcache** %9, align 8
  %376 = load i64, i64* @FP0_REGNUM, align 8
  %377 = add nsw i64 %376, 1
  %378 = load i32, i32* %23, align 4
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %377, %379
  %381 = load i8*, i8** %10, align 8
  %382 = load i32, i32* %23, align 4
  %383 = mul nsw i32 %382, 8
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %381, i64 %384
  %386 = call i32 @regcache_cooked_read(%struct.regcache* %375, i64 %380, i8* %385)
  br label %387

387:                                              ; preds = %374, %371
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %23, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %23, align 4
  br label %352

391:                                              ; preds = %352
  br label %392

392:                                              ; preds = %391, %348
  %393 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %393, i32* %6, align 4
  br label %396

394:                                              ; preds = %344, %339
  %395 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %395, i32* %6, align 4
  br label %396

396:                                              ; preds = %394, %392, %337, %258, %193, %134, %105, %65
  %397 = load i32, i32* %6, align 4
  ret i32 %397
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.type* @register_type(%struct.gdbarch*, i64) #1

declare dso_local i32 @convert_typed_floating(i8*, %struct.type*, i8*, %struct.type*) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i64, i8*) #1

declare dso_local i32 @regcache_cooked_read(%struct.regcache*, i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @regcache_cooked_write_unsigned(%struct.regcache*, i64, i32) #1

declare dso_local i32 @unpack_long(%struct.type*, i8*) #1

declare dso_local i32 @regcache_cooked_read_unsigned(%struct.regcache*, i64, i32*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @register_size(%struct.gdbarch*, i64) #1

declare dso_local i32 @regcache_cooked_write_part(%struct.regcache*, i64, i32, i32, i8*) #1

declare dso_local i32 @regcache_cooked_read_part(%struct.regcache*, i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
