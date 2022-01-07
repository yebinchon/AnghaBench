; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-sysv-tdep.c_ppc64_sysv_abi_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-sysv-tdep.c_ppc64_sysv_abi_push_dummy_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.value = type { i32 }
%struct.gdbarch_tdep = type { i32, i32, i64, i32 }
%struct.type = type { i32 }
%struct.minimal_symbol = type { i32 }
%struct.obj_section = type { i32* }

@current_gdbarch = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@SP_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc64_sysv_abi_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regcache*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.gdbarch_tdep*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.value*, align 8
  %31 = alloca %struct.type*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.type*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca i64, align 8
  %42 = alloca i32, align 4
  %43 = alloca %struct.minimal_symbol*, align 8
  %44 = alloca %struct.obj_section*, align 8
  %45 = alloca %struct.minimal_symbol*, align 8
  %46 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.regcache* %2, %struct.regcache** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.value** %5, %struct.value*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %47 = load i32, i32* @current_gdbarch, align 4
  %48 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %47)
  store %struct.gdbarch_tdep* %48, %struct.gdbarch_tdep** %19, align 8
  %49 = call i32 (...) @read_sp()
  store i32 %49, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %50 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %51 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 8
  %54 = zext i1 %53 to i32
  %55 = call i32 @gdb_assert(i32 %54)
  store i32 0, i32* %21, align 4
  br label %56

56:                                               ; preds = %416, %9
  %57 = load i32, i32* %21, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %419

59:                                               ; preds = %56
  store i32 1, i32* %25, align 4
  store i32 3, i32* %26, align 4
  store i32 2, i32* %27, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  br label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %22, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 @align_down(i32 %66, i32 16)
  store i32 %67, i32* %29, align 4
  %68 = load i32, i32* %29, align 4
  %69 = load i32, i32* %23, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @align_down(i32 %70, i32 16)
  store i32 %71, i32* %28, align 4
  %72 = load i32, i32* %28, align 4
  %73 = sub nsw i32 %72, 48
  %74 = call i32 @align_down(i32 %73, i32 16)
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %63, %62
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load i32, i32* %21, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.regcache*, %struct.regcache** %12, align 8
  %83 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %84 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %26, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @regcache_cooked_write_signed(%struct.regcache* %82, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %78
  %91 = load i32, i32* %26, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %26, align 4
  %93 = load i32, i32* %28, align 4
  %94 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %95 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %99 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @align_up(i32 %97, i32 %100)
  store i32 %101, i32* %28, align 4
  br label %102

102:                                              ; preds = %90, %75
  store i32 0, i32* %24, align 4
  br label %103

103:                                              ; preds = %397, %102
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %400

107:                                              ; preds = %103
  %108 = load %struct.value**, %struct.value*** %15, align 8
  %109 = load i32, i32* %24, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.value*, %struct.value** %108, i64 %110
  %112 = load %struct.value*, %struct.value** %111, align 8
  store %struct.value* %112, %struct.value** %30, align 8
  %113 = load %struct.value*, %struct.value** %30, align 8
  %114 = call i32 @VALUE_TYPE(%struct.value* %113)
  %115 = call %struct.type* @check_typedef(i32 %114)
  store %struct.type* %115, %struct.type** %31, align 8
  %116 = load %struct.value*, %struct.value** %30, align 8
  %117 = call i8* @VALUE_CONTENTS(%struct.value* %116)
  store i8* %117, i8** %32, align 8
  %118 = load %struct.type*, %struct.type** %31, align 8
  %119 = call i64 @TYPE_CODE(%struct.type* %118)
  %120 = load i64, i64* @TYPE_CODE_FLT, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %195

122:                                              ; preds = %107
  %123 = load %struct.type*, %struct.type** %31, align 8
  %124 = call i32 @TYPE_LENGTH(%struct.type* %123)
  %125 = icmp sle i32 %124, 8
  br i1 %125, label %126, label %195

126:                                              ; preds = %122
  %127 = load i32, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %182

129:                                              ; preds = %126
  %130 = load i32, i32* @current_gdbarch, align 4
  %131 = call i64 @ppc_floating_point_unit_p(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load i32, i32* %25, align 4
  %135 = icmp sle i32 %134, 13
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %138 = zext i32 %137 to i64
  %139 = call i8* @llvm.stacksave()
  store i8* %139, i8** %33, align 8
  %140 = alloca i8, i64 %138, align 16
  store i64 %138, i64* %34, align 8
  %141 = load %struct.gdbarch*, %struct.gdbarch** %10, align 8
  %142 = load i32, i32* @FP0_REGNUM, align 4
  %143 = call %struct.type* @register_type(%struct.gdbarch* %141, i32 %142)
  store %struct.type* %143, %struct.type** %35, align 8
  %144 = load i8*, i8** %32, align 8
  %145 = load %struct.type*, %struct.type** %31, align 8
  %146 = load %struct.type*, %struct.type** %35, align 8
  %147 = call i32 @convert_typed_floating(i8* %144, %struct.type* %145, i8* %140, %struct.type* %146)
  %148 = load %struct.regcache*, %struct.regcache** %12, align 8
  %149 = load i32, i32* @FP0_REGNUM, align 4
  %150 = load i32, i32* %25, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i32 @regcache_cooked_write(%struct.regcache* %148, i32 %151, i8* %140)
  %153 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %153)
  br label %154

154:                                              ; preds = %136, %133, %129
  %155 = load i32, i32* %26, align 4
  %156 = icmp sle i32 %155, 10
  br i1 %156, label %157, label %176

157:                                              ; preds = %154
  %158 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %159 = zext i32 %158 to i64
  %160 = call i8* @llvm.stacksave()
  store i8* %160, i8** %36, align 8
  %161 = alloca i8, i64 %159, align 16
  store i64 %159, i64* %37, align 8
  %162 = trunc i64 %159 to i32
  %163 = call i32 @memset(i8* %161, i32 0, i32 %162)
  %164 = load i8*, i8** %32, align 8
  %165 = load %struct.type*, %struct.type** %31, align 8
  %166 = call i32 @TYPE_LENGTH(%struct.type* %165)
  %167 = call i32 @memcpy(i8* %161, i8* %164, i32 %166)
  %168 = load %struct.regcache*, %struct.regcache** %12, align 8
  %169 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %170 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %26, align 4
  %173 = add nsw i32 %171, %172
  %174 = call i32 @regcache_cooked_write(%struct.regcache* %168, i32 %173, i8* %161)
  %175 = load i8*, i8** %36, align 8
  call void @llvm.stackrestore(i8* %175)
  br label %176

176:                                              ; preds = %157, %154
  %177 = load i32, i32* %28, align 4
  %178 = load i8*, i8** %32, align 8
  %179 = load %struct.type*, %struct.type** %31, align 8
  %180 = call i32 @TYPE_LENGTH(%struct.type* %179)
  %181 = call i32 @write_memory(i32 %177, i8* %178, i32 %180)
  br label %182

182:                                              ; preds = %176, %126
  %183 = load i32, i32* %25, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %25, align 4
  %185 = load i32, i32* %26, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %26, align 4
  %187 = load i32, i32* %28, align 4
  %188 = load %struct.type*, %struct.type** %31, align 8
  %189 = call i32 @TYPE_LENGTH(%struct.type* %188)
  %190 = add nsw i32 %187, %189
  %191 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %192 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @align_up(i32 %190, i32 %193)
  store i32 %194, i32* %28, align 4
  br label %396

195:                                              ; preds = %122, %107
  %196 = load %struct.type*, %struct.type** %31, align 8
  %197 = call i32 @TYPE_LENGTH(%struct.type* %196)
  %198 = icmp eq i32 %197, 16
  br i1 %198, label %199, label %249

199:                                              ; preds = %195
  %200 = load %struct.type*, %struct.type** %31, align 8
  %201 = call i64 @TYPE_VECTOR(%struct.type* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %249

203:                                              ; preds = %199
  %204 = load %struct.type*, %struct.type** %31, align 8
  %205 = call i64 @TYPE_CODE(%struct.type* %204)
  %206 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %249

208:                                              ; preds = %203
  %209 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %210 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp sge i64 %211, 0
  br i1 %212, label %213, label %249

213:                                              ; preds = %208
  %214 = load i32, i32* %27, align 4
  %215 = icmp sle i32 %214, 13
  br i1 %215, label %216, label %233

216:                                              ; preds = %213
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %216
  %220 = load %struct.regcache*, %struct.regcache** %12, align 8
  %221 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %222 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %27, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = trunc i64 %226 to i32
  %228 = load i8*, i8** %32, align 8
  %229 = call i32 @regcache_cooked_write(%struct.regcache* %220, i32 %227, i8* %228)
  br label %230

230:                                              ; preds = %219, %216
  %231 = load i32, i32* %27, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %27, align 4
  br label %248

233:                                              ; preds = %213
  %234 = load i32, i32* %21, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load i32, i32* %29, align 4
  %238 = load i8*, i8** %32, align 8
  %239 = load %struct.type*, %struct.type** %31, align 8
  %240 = call i32 @TYPE_LENGTH(%struct.type* %239)
  %241 = call i32 @write_memory(i32 %237, i8* %238, i32 %240)
  br label %242

242:                                              ; preds = %236, %233
  %243 = load i32, i32* %29, align 4
  %244 = load %struct.type*, %struct.type** %31, align 8
  %245 = call i32 @TYPE_LENGTH(%struct.type* %244)
  %246 = add nsw i32 %243, %245
  %247 = call i32 @align_up(i32 %246, i32 16)
  store i32 %247, i32* %29, align 4
  br label %248

248:                                              ; preds = %242, %230
  br label %395

249:                                              ; preds = %208, %203, %199, %195
  %250 = load %struct.type*, %struct.type** %31, align 8
  %251 = call i64 @TYPE_CODE(%struct.type* %250)
  %252 = load i64, i64* @TYPE_CODE_INT, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load %struct.type*, %struct.type** %31, align 8
  %256 = call i64 @TYPE_CODE(%struct.type* %255)
  %257 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %299

259:                                              ; preds = %254, %249
  %260 = load %struct.type*, %struct.type** %31, align 8
  %261 = call i32 @TYPE_LENGTH(%struct.type* %260)
  %262 = icmp sle i32 %261, 8
  br i1 %262, label %263, label %299

263:                                              ; preds = %259
  %264 = load i32, i32* %21, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %288

266:                                              ; preds = %263
  %267 = load %struct.type*, %struct.type** %31, align 8
  %268 = load i8*, i8** %32, align 8
  %269 = call i32 @unpack_long(%struct.type* %267, i8* %268)
  store i32 %269, i32* %38, align 4
  %270 = load i32, i32* %26, align 4
  %271 = icmp sle i32 %270, 10
  br i1 %271, label %272, label %281

272:                                              ; preds = %266
  %273 = load %struct.regcache*, %struct.regcache** %12, align 8
  %274 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %275 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %26, align 4
  %278 = add nsw i32 %276, %277
  %279 = load i32, i32* %38, align 4
  %280 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %273, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %272, %266
  %282 = load i32, i32* %28, align 4
  %283 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %284 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %38, align 4
  %287 = call i32 @write_memory_unsigned_integer(i32 %282, i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %281, %263
  %289 = load i32, i32* %26, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %26, align 4
  %291 = load i32, i32* %28, align 4
  %292 = load %struct.type*, %struct.type** %31, align 8
  %293 = call i32 @TYPE_LENGTH(%struct.type* %292)
  %294 = add nsw i32 %291, %293
  %295 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %296 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @align_up(i32 %294, i32 %297)
  store i32 %298, i32* %28, align 4
  br label %394

299:                                              ; preds = %259, %254
  store i32 0, i32* %39, align 4
  br label %300

300:                                              ; preds = %370, %299
  %301 = load i32, i32* %39, align 4
  %302 = load %struct.type*, %struct.type** %31, align 8
  %303 = call i32 @TYPE_LENGTH(%struct.type* %302)
  %304 = icmp slt i32 %301, %303
  br i1 %304, label %305, label %376

305:                                              ; preds = %300
  %306 = load i32, i32* %21, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %367

308:                                              ; preds = %305
  %309 = load i32, i32* %26, align 4
  %310 = icmp sle i32 %309, 10
  br i1 %310, label %311, label %367

311:                                              ; preds = %308
  %312 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %313 = zext i32 %312 to i64
  %314 = call i8* @llvm.stacksave()
  store i8* %314, i8** %40, align 8
  %315 = alloca i8, i64 %313, align 16
  store i64 %313, i64* %41, align 8
  %316 = load %struct.type*, %struct.type** %31, align 8
  %317 = call i32 @TYPE_LENGTH(%struct.type* %316)
  %318 = load i32, i32* %39, align 4
  %319 = sub nsw i32 %317, %318
  store i32 %319, i32* %42, align 4
  %320 = load i32, i32* %42, align 4
  %321 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %322 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp sgt i32 %320, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %311
  %326 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %327 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  store i32 %328, i32* %42, align 4
  br label %329

329:                                              ; preds = %325, %311
  %330 = trunc i64 %313 to i32
  %331 = call i32 @memset(i8* %315, i32 0, i32 %330)
  %332 = load i8*, i8** %32, align 8
  %333 = load i32, i32* %39, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %332, i64 %334
  %336 = load i32, i32* %42, align 4
  %337 = call i32 @memcpy(i8* %315, i8* %335, i32 %336)
  %338 = load i32, i32* %42, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %346, label %340

340:                                              ; preds = %329
  %341 = load i32, i32* %42, align 4
  %342 = icmp eq i32 %341, 2
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = load i32, i32* %42, align 4
  %345 = icmp eq i32 %344, 4
  br i1 %345, label %346, label %362

346:                                              ; preds = %343, %340, %329
  %347 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %348 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %315, i64 %350
  %352 = load i32, i32* %42, align 4
  %353 = sext i32 %352 to i64
  %354 = sub i64 0, %353
  %355 = getelementptr inbounds i8, i8* %351, i64 %354
  %356 = load i8*, i8** %32, align 8
  %357 = load i32, i32* %39, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %356, i64 %358
  %360 = load i32, i32* %42, align 4
  %361 = call i32 @memcpy(i8* %355, i8* %359, i32 %360)
  br label %362

362:                                              ; preds = %346, %343
  %363 = load %struct.regcache*, %struct.regcache** %12, align 8
  %364 = load i32, i32* %26, align 4
  %365 = call i32 @regcache_cooked_write(%struct.regcache* %363, i32 %364, i8* %315)
  %366 = load i8*, i8** %40, align 8
  call void @llvm.stackrestore(i8* %366)
  br label %367

367:                                              ; preds = %362, %308, %305
  %368 = load i32, i32* %26, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %26, align 4
  br label %370

370:                                              ; preds = %367
  %371 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %372 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* %39, align 4
  %375 = add nsw i32 %374, %373
  store i32 %375, i32* %39, align 4
  br label %300

376:                                              ; preds = %300
  %377 = load i32, i32* %21, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %376
  %380 = load i32, i32* %28, align 4
  %381 = load i8*, i8** %32, align 8
  %382 = load %struct.type*, %struct.type** %31, align 8
  %383 = call i32 @TYPE_LENGTH(%struct.type* %382)
  %384 = call i32 @write_memory(i32 %380, i8* %381, i32 %383)
  br label %385

385:                                              ; preds = %379, %376
  %386 = load i32, i32* %28, align 4
  %387 = load %struct.type*, %struct.type** %31, align 8
  %388 = call i32 @TYPE_LENGTH(%struct.type* %387)
  %389 = add nsw i32 %386, %388
  %390 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %391 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @align_up(i32 %389, i32 %392)
  store i32 %393, i32* %28, align 4
  br label %394

394:                                              ; preds = %385, %288
  br label %395

395:                                              ; preds = %394, %248
  br label %396

396:                                              ; preds = %395, %182
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %24, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %24, align 4
  br label %103

400:                                              ; preds = %103
  %401 = load i32, i32* %21, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %415, label %403

403:                                              ; preds = %400
  %404 = load i32, i32* %29, align 4
  store i32 %404, i32* %22, align 4
  %405 = load i32, i32* %26, align 4
  %406 = icmp slt i32 %405, 8
  br i1 %406, label %407, label %412

407:                                              ; preds = %403
  %408 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %409 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = mul nsw i32 8, %410
  store i32 %411, i32* %23, align 4
  br label %414

412:                                              ; preds = %403
  %413 = load i32, i32* %28, align 4
  store i32 %413, i32* %23, align 4
  br label %414

414:                                              ; preds = %412, %407
  br label %415

415:                                              ; preds = %414, %400
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %21, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %21, align 4
  br label %56

419:                                              ; preds = %56
  %420 = load %struct.regcache*, %struct.regcache** %12, align 8
  %421 = load i32, i32* @SP_REGNUM, align 4
  %422 = load i32, i32* %16, align 4
  %423 = call i32 @regcache_cooked_write_signed(%struct.regcache* %420, i32 %421, i32 %422)
  %424 = load i32, i32* %16, align 4
  %425 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %426 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* %20, align 4
  %429 = call i32 @write_memory_signed_integer(i32 %424, i32 %427, i32 %428)
  %430 = load %struct.regcache*, %struct.regcache** %12, align 8
  %431 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %432 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* %13, align 4
  %435 = call i32 @regcache_cooked_write_signed(%struct.regcache* %430, i32 %433, i32 %434)
  %436 = load i32, i32* %11, align 4
  %437 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %436)
  store %struct.minimal_symbol* %437, %struct.minimal_symbol** %43, align 8
  %438 = load %struct.minimal_symbol*, %struct.minimal_symbol** %43, align 8
  %439 = icmp ne %struct.minimal_symbol* %438, null
  br i1 %439, label %440, label %487

440:                                              ; preds = %419
  %441 = load %struct.minimal_symbol*, %struct.minimal_symbol** %43, align 8
  %442 = call i8* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %441)
  %443 = getelementptr inbounds i8, i8* %442, i64 0
  %444 = load i8, i8* %443, align 1
  %445 = sext i8 %444 to i32
  %446 = icmp eq i32 %445, 46
  br i1 %446, label %447, label %487

447:                                              ; preds = %440
  %448 = load i32, i32* %11, align 4
  %449 = call %struct.obj_section* @find_pc_section(i32 %448)
  store %struct.obj_section* %449, %struct.obj_section** %44, align 8
  %450 = load %struct.obj_section*, %struct.obj_section** %44, align 8
  %451 = icmp ne %struct.obj_section* %450, null
  br i1 %451, label %452, label %486

452:                                              ; preds = %447
  %453 = load %struct.obj_section*, %struct.obj_section** %44, align 8
  %454 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = icmp ne i32* %455, null
  br i1 %456, label %457, label %486

457:                                              ; preds = %452
  %458 = load %struct.minimal_symbol*, %struct.minimal_symbol** %43, align 8
  %459 = call i8* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %458)
  %460 = getelementptr inbounds i8, i8* %459, i64 1
  %461 = load %struct.obj_section*, %struct.obj_section** %44, align 8
  %462 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %461, i32 0, i32 0
  %463 = load i32*, i32** %462, align 8
  %464 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %460, i32* null, i32* %463)
  store %struct.minimal_symbol* %464, %struct.minimal_symbol** %45, align 8
  %465 = load %struct.minimal_symbol*, %struct.minimal_symbol** %45, align 8
  %466 = icmp ne %struct.minimal_symbol* %465, null
  br i1 %466, label %467, label %485

467:                                              ; preds = %457
  %468 = load %struct.minimal_symbol*, %struct.minimal_symbol** %45, align 8
  %469 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %468)
  %470 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %471 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = add nsw i32 %469, %472
  %474 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %475 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = call i32 @read_memory_unsigned_integer(i32 %473, i32 %476)
  store i32 %477, i32* %46, align 4
  %478 = load %struct.regcache*, %struct.regcache** %12, align 8
  %479 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %19, align 8
  %480 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = add nsw i32 %481, 2
  %483 = load i32, i32* %46, align 4
  %484 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %478, i32 %482, i32 %483)
  br label %485

485:                                              ; preds = %467, %457
  br label %486

486:                                              ; preds = %485, %452, %447
  br label %487

487:                                              ; preds = %486, %440, %419
  %488 = load i32, i32* %16, align 4
  ret i32 %488
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @read_sp(...) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @align_down(i32, i32) #1

declare dso_local i32 @regcache_cooked_write_signed(%struct.regcache*, i32, i32) #1

declare dso_local i32 @align_up(i32, i32) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @ppc_floating_point_unit_p(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.type* @register_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @convert_typed_floating(i8*, %struct.type*, i8*, %struct.type*) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i64 @TYPE_VECTOR(%struct.type*) #1

declare dso_local i32 @unpack_long(%struct.type*, i8*) #1

declare dso_local i32 @regcache_cooked_write_unsigned(%struct.regcache*, i32, i32) #1

declare dso_local i32 @write_memory_unsigned_integer(i32, i32, i32) #1

declare dso_local i32 @write_memory_signed_integer(i32, i32, i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i8* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol*) #1

declare dso_local %struct.obj_section* @find_pc_section(i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i32 @read_memory_unsigned_integer(i32, i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
