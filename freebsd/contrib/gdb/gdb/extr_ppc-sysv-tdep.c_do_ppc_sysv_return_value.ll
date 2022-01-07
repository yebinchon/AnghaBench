; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-sysv-tdep.c_do_ppc_sysv_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-sysv-tdep.c_do_ppc_sysv_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }
%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i32, i64, i64, i64 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i64 0, align 8
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i32 0, align 4
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.type*, %struct.regcache*, i8*, i8*, i32)* @do_ppc_sysv_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ppc_sysv_return_value(%struct.gdbarch* %0, %struct.type* %1, %struct.regcache* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gdbarch*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.regcache*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gdbarch_tdep*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.type*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.type*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %8, align 8
  store %struct.type* %1, %struct.type** %9, align 8
  store %struct.regcache* %2, %struct.regcache** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %32 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %33 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %32)
  store %struct.gdbarch_tdep* %33, %struct.gdbarch_tdep** %14, align 8
  %34 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %35 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 4
  %38 = zext i1 %37 to i32
  %39 = call i32 @gdb_assert(i32 %38)
  %40 = load %struct.type*, %struct.type** %9, align 8
  %41 = call i64 @TYPE_CODE(%struct.type* %40)
  %42 = load i64, i64* @TYPE_CODE_FLT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %6
  %45 = load %struct.type*, %struct.type** %9, align 8
  %46 = call i32 @TYPE_LENGTH(%struct.type* %45)
  %47 = icmp sle i32 %46, 8
  br i1 %47, label %48, label %95

48:                                               ; preds = %44
  %49 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %50 = call i64 @ppc_floating_point_unit_p(%struct.gdbarch* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %15, align 8
  %59 = alloca i8, i64 %57, align 16
  store i64 %57, i64* %16, align 8
  %60 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %61 = load i64, i64* @FP0_REGNUM, align 8
  %62 = add nsw i64 %61, 1
  %63 = call %struct.type* @register_type(%struct.gdbarch* %60, i64 %62)
  store %struct.type* %63, %struct.type** %17, align 8
  %64 = load %struct.regcache*, %struct.regcache** %10, align 8
  %65 = load i64, i64* @FP0_REGNUM, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @regcache_cooked_read(%struct.regcache* %64, i64 %66, i8* %59)
  %68 = load %struct.type*, %struct.type** %17, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.type*, %struct.type** %9, align 8
  %71 = call i32 @convert_typed_floating(i8* %59, %struct.type* %68, i8* %69, %struct.type* %70)
  %72 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %55, %52
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %18, align 8
  %80 = alloca i8, i64 %78, align 16
  store i64 %78, i64* %19, align 8
  %81 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %82 = load i64, i64* @FP0_REGNUM, align 8
  %83 = call %struct.type* @register_type(%struct.gdbarch* %81, i64 %82)
  store %struct.type* %83, %struct.type** %20, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.type*, %struct.type** %9, align 8
  %86 = load %struct.type*, %struct.type** %20, align 8
  %87 = call i32 @convert_typed_floating(i8* %84, %struct.type* %85, i8* %80, %struct.type* %86)
  %88 = load %struct.regcache*, %struct.regcache** %10, align 8
  %89 = load i64, i64* @FP0_REGNUM, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i32 @regcache_cooked_write(%struct.regcache* %88, i64 %90, i8* %80)
  %92 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %92)
  br label %93

93:                                               ; preds = %76, %73
  %94 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %94, i32* %7, align 4
  br label %492

95:                                               ; preds = %48, %44, %6
  %96 = load %struct.type*, %struct.type** %9, align 8
  %97 = call i64 @TYPE_CODE(%struct.type* %96)
  %98 = load i64, i64* @TYPE_CODE_INT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.type*, %struct.type** %9, align 8
  %102 = call i32 @TYPE_LENGTH(%struct.type* %101)
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %113, label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.type*, %struct.type** %9, align 8
  %106 = call i64 @TYPE_CODE(%struct.type* %105)
  %107 = load i64, i64* @TYPE_CODE_FLT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %155

109:                                              ; preds = %104
  %110 = load %struct.type*, %struct.type** %9, align 8
  %111 = call i32 @TYPE_LENGTH(%struct.type* %110)
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %155

113:                                              ; preds = %109, %100
  %114 = load i8*, i8** %11, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load %struct.regcache*, %struct.regcache** %10, align 8
  %118 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %119 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 3
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr i8, i8* %122, i64 0
  %124 = call i32 @regcache_cooked_read(%struct.regcache* %117, i64 %121, i8* %123)
  %125 = load %struct.regcache*, %struct.regcache** %10, align 8
  %126 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %127 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 4
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr i8, i8* %130, i64 4
  %132 = call i32 @regcache_cooked_read(%struct.regcache* %125, i64 %129, i8* %131)
  br label %133

133:                                              ; preds = %116, %113
  %134 = load i8*, i8** %12, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = load %struct.regcache*, %struct.regcache** %10, align 8
  %138 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %139 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 3
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr i8, i8* %142, i64 0
  %144 = call i32 @regcache_cooked_write(%struct.regcache* %137, i64 %141, i8* %143)
  %145 = load %struct.regcache*, %struct.regcache** %10, align 8
  %146 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %147 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 4
  %150 = load i8*, i8** %12, align 8
  %151 = getelementptr i8, i8* %150, i64 4
  %152 = call i32 @regcache_cooked_write(%struct.regcache* %145, i64 %149, i8* %151)
  br label %153

153:                                              ; preds = %136, %133
  %154 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %154, i32* %7, align 4
  br label %492

155:                                              ; preds = %109, %104
  %156 = load %struct.type*, %struct.type** %9, align 8
  %157 = call i64 @TYPE_CODE(%struct.type* %156)
  %158 = load i64, i64* @TYPE_CODE_INT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %197

160:                                              ; preds = %155
  %161 = load %struct.type*, %struct.type** %9, align 8
  %162 = call i32 @TYPE_LENGTH(%struct.type* %161)
  %163 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %164 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp sle i32 %162, %165
  br i1 %166, label %167, label %197

167:                                              ; preds = %160
  %168 = load i8*, i8** %11, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load %struct.regcache*, %struct.regcache** %10, align 8
  %172 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %173 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 3
  %176 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %171, i64 %175, i32* %21)
  %177 = load i8*, i8** %11, align 8
  %178 = load %struct.type*, %struct.type** %9, align 8
  %179 = call i32 @TYPE_LENGTH(%struct.type* %178)
  %180 = load i32, i32* %21, align 4
  %181 = call i32 @store_unsigned_integer(i8* %177, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %170, %167
  %183 = load i8*, i8** %12, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load %struct.regcache*, %struct.regcache** %10, align 8
  %187 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %188 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 3
  %191 = load %struct.type*, %struct.type** %9, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = call i32 @unpack_long(%struct.type* %191, i8* %192)
  %194 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %186, i64 %190, i32 %193)
  br label %195

195:                                              ; preds = %185, %182
  %196 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %196, i32* %7, align 4
  br label %492

197:                                              ; preds = %160, %155
  %198 = load %struct.type*, %struct.type** %9, align 8
  %199 = call i32 @TYPE_LENGTH(%struct.type* %198)
  %200 = icmp eq i32 %199, 16
  br i1 %200, label %201, label %239

201:                                              ; preds = %197
  %202 = load %struct.type*, %struct.type** %9, align 8
  %203 = call i64 @TYPE_CODE(%struct.type* %202)
  %204 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %239

206:                                              ; preds = %201
  %207 = load %struct.type*, %struct.type** %9, align 8
  %208 = call i64 @TYPE_VECTOR(%struct.type* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %206
  %211 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %212 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp sge i64 %213, 0
  br i1 %214, label %215, label %239

215:                                              ; preds = %210
  %216 = load i8*, i8** %11, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = load %struct.regcache*, %struct.regcache** %10, align 8
  %220 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %221 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, 2
  %224 = load i8*, i8** %11, align 8
  %225 = call i32 @regcache_cooked_read(%struct.regcache* %219, i64 %223, i8* %224)
  br label %226

226:                                              ; preds = %218, %215
  %227 = load i8*, i8** %12, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load %struct.regcache*, %struct.regcache** %10, align 8
  %231 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %232 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 2
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 @regcache_cooked_write(%struct.regcache* %230, i64 %234, i8* %235)
  br label %237

237:                                              ; preds = %229, %226
  %238 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %238, i32* %7, align 4
  br label %492

239:                                              ; preds = %210, %206, %201, %197
  %240 = load %struct.type*, %struct.type** %9, align 8
  %241 = call i32 @TYPE_LENGTH(%struct.type* %240)
  %242 = icmp eq i32 %241, 8
  br i1 %242, label %243, label %281

243:                                              ; preds = %239
  %244 = load %struct.type*, %struct.type** %9, align 8
  %245 = call i64 @TYPE_CODE(%struct.type* %244)
  %246 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %281

248:                                              ; preds = %243
  %249 = load %struct.type*, %struct.type** %9, align 8
  %250 = call i64 @TYPE_VECTOR(%struct.type* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %281

252:                                              ; preds = %248
  %253 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %254 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp sge i64 %255, 0
  br i1 %256, label %257, label %281

257:                                              ; preds = %252
  %258 = load i8*, i8** %11, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %268

260:                                              ; preds = %257
  %261 = load %struct.regcache*, %struct.regcache** %10, align 8
  %262 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %263 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 3
  %266 = load i8*, i8** %11, align 8
  %267 = call i32 @regcache_cooked_read(%struct.regcache* %261, i64 %265, i8* %266)
  br label %268

268:                                              ; preds = %260, %257
  %269 = load i8*, i8** %12, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = load %struct.regcache*, %struct.regcache** %10, align 8
  %273 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %274 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %275, 3
  %277 = load i8*, i8** %12, align 8
  %278 = call i32 @regcache_cooked_write(%struct.regcache* %272, i64 %276, i8* %277)
  br label %279

279:                                              ; preds = %271, %268
  %280 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %280, i32* %7, align 4
  br label %492

281:                                              ; preds = %252, %248, %243, %239
  %282 = load i32, i32* %13, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %390

284:                                              ; preds = %281
  %285 = load %struct.type*, %struct.type** %9, align 8
  %286 = call i32 @TYPE_LENGTH(%struct.type* %285)
  %287 = icmp sle i32 %286, 8
  br i1 %287, label %288, label %390

288:                                              ; preds = %284
  %289 = load i8*, i8** %11, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %338

291:                                              ; preds = %288
  store i32 0, i32* %22, align 4
  br label %292

292:                                              ; preds = %291, %314
  %293 = load %struct.type*, %struct.type** %9, align 8
  %294 = call i32 @TYPE_LENGTH(%struct.type* %293)
  %295 = load i32, i32* %22, align 4
  %296 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %297 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = mul nsw i32 %295, %298
  %300 = sub nsw i32 %294, %299
  store i32 %300, i32* %24, align 4
  %301 = load i32, i32* %24, align 4
  %302 = icmp sle i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %292
  br label %337

304:                                              ; preds = %292
  %305 = load i32, i32* %24, align 4
  %306 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %307 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp sgt i32 %305, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %312 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  store i32 %313, i32* %24, align 4
  br label %314

314:                                              ; preds = %310, %304
  %315 = load %struct.regcache*, %struct.regcache** %10, align 8
  %316 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %317 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %318, 3
  %320 = load i32, i32* %22, align 4
  %321 = sext i32 %320 to i64
  %322 = add nsw i64 %319, %321
  %323 = call i32 @regcache_cooked_read_unsigned(%struct.regcache* %315, i64 %322, i32* %23)
  %324 = load i8*, i8** %11, align 8
  %325 = load i32, i32* %22, align 4
  %326 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %327 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = mul nsw i32 %325, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr i8, i8* %324, i64 %330
  %332 = load i32, i32* %24, align 4
  %333 = load i32, i32* %23, align 4
  %334 = call i32 @store_unsigned_integer(i8* %331, i32 %332, i32 %333)
  %335 = load i32, i32* %22, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %22, align 4
  br label %292

337:                                              ; preds = %303
  br label %338

338:                                              ; preds = %337, %288
  %339 = load i8*, i8** %12, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %341, label %388

341:                                              ; preds = %338
  store i32 0, i32* %25, align 4
  br label %342

342:                                              ; preds = %341, %364
  %343 = load %struct.type*, %struct.type** %9, align 8
  %344 = call i32 @TYPE_LENGTH(%struct.type* %343)
  %345 = load i32, i32* %25, align 4
  %346 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %347 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = mul nsw i32 %345, %348
  %350 = sub nsw i32 %344, %349
  store i32 %350, i32* %27, align 4
  %351 = load i32, i32* %27, align 4
  %352 = icmp sle i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %342
  br label %387

354:                                              ; preds = %342
  %355 = load i32, i32* %27, align 4
  %356 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %357 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp sgt i32 %355, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %354
  %361 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %362 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  store i32 %363, i32* %27, align 4
  br label %364

364:                                              ; preds = %360, %354
  %365 = load i8*, i8** %12, align 8
  %366 = load i32, i32* %25, align 4
  %367 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %368 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = mul nsw i32 %366, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr i8, i8* %365, i64 %371
  %373 = load i32, i32* %27, align 4
  %374 = call i32 @extract_unsigned_integer(i8* %372, i32 %373)
  store i32 %374, i32* %26, align 4
  %375 = load %struct.regcache*, %struct.regcache** %10, align 8
  %376 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %377 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %376, i32 0, i32 3
  %378 = load i64, i64* %377, align 8
  %379 = add nsw i64 %378, 3
  %380 = load i32, i32* %25, align 4
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %379, %381
  %383 = load i32, i32* %26, align 4
  %384 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %375, i64 %382, i32 %383)
  %385 = load i32, i32* %25, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %25, align 4
  br label %342

387:                                              ; preds = %353
  br label %388

388:                                              ; preds = %387, %338
  %389 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %389, i32* %7, align 4
  br label %492

390:                                              ; preds = %284, %281
  %391 = load %struct.type*, %struct.type** %9, align 8
  %392 = call i32 @TYPE_LENGTH(%struct.type* %391)
  %393 = icmp sle i32 %392, 8
  br i1 %393, label %394, label %490

394:                                              ; preds = %390
  %395 = load i8*, i8** %11, align 8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %397, label %440

397:                                              ; preds = %394
  %398 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %399 = mul nsw i32 %398, 2
  %400 = zext i32 %399 to i64
  %401 = call i8* @llvm.stacksave()
  store i8* %401, i8** %28, align 8
  %402 = alloca i8, i64 %400, align 16
  store i64 %400, i64* %29, align 8
  %403 = load %struct.regcache*, %struct.regcache** %10, align 8
  %404 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %405 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = add nsw i64 %406, 3
  %408 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %409 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = mul nsw i32 0, %410
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %402, i64 %412
  %414 = call i32 @regcache_cooked_read(%struct.regcache* %403, i64 %407, i8* %413)
  %415 = load %struct.type*, %struct.type** %9, align 8
  %416 = call i32 @TYPE_LENGTH(%struct.type* %415)
  %417 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %418 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = icmp sgt i32 %416, %419
  br i1 %420, label %421, label %434

421:                                              ; preds = %397
  %422 = load %struct.regcache*, %struct.regcache** %10, align 8
  %423 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %424 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %423, i32 0, i32 3
  %425 = load i64, i64* %424, align 8
  %426 = add nsw i64 %425, 4
  %427 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %428 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = mul nsw i32 1, %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %402, i64 %431
  %433 = call i32 @regcache_cooked_read(%struct.regcache* %422, i64 %426, i8* %432)
  br label %434

434:                                              ; preds = %421, %397
  %435 = load i8*, i8** %11, align 8
  %436 = load %struct.type*, %struct.type** %9, align 8
  %437 = call i32 @TYPE_LENGTH(%struct.type* %436)
  %438 = call i32 @memcpy(i8* %435, i8* %402, i32 %437)
  %439 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %439)
  br label %440

440:                                              ; preds = %434, %394
  %441 = load i8*, i8** %12, align 8
  %442 = icmp ne i8* %441, null
  br i1 %442, label %443, label %488

443:                                              ; preds = %440
  %444 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %445 = mul nsw i32 %444, 2
  %446 = zext i32 %445 to i64
  %447 = call i8* @llvm.stacksave()
  store i8* %447, i8** %30, align 8
  %448 = alloca i8, i64 %446, align 16
  store i64 %446, i64* %31, align 8
  %449 = trunc i64 %446 to i32
  %450 = call i32 @memset(i8* %448, i32 0, i32 %449)
  %451 = load i8*, i8** %12, align 8
  %452 = load %struct.type*, %struct.type** %9, align 8
  %453 = call i32 @TYPE_LENGTH(%struct.type* %452)
  %454 = call i32 @memcpy(i8* %448, i8* %451, i32 %453)
  %455 = load %struct.regcache*, %struct.regcache** %10, align 8
  %456 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %457 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %456, i32 0, i32 3
  %458 = load i64, i64* %457, align 8
  %459 = add nsw i64 %458, 3
  %460 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %461 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = mul nsw i32 0, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i8, i8* %448, i64 %464
  %466 = call i32 @regcache_cooked_write(%struct.regcache* %455, i64 %459, i8* %465)
  %467 = load %struct.type*, %struct.type** %9, align 8
  %468 = call i32 @TYPE_LENGTH(%struct.type* %467)
  %469 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %470 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = icmp sgt i32 %468, %471
  br i1 %472, label %473, label %486

473:                                              ; preds = %443
  %474 = load %struct.regcache*, %struct.regcache** %10, align 8
  %475 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %476 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %475, i32 0, i32 3
  %477 = load i64, i64* %476, align 8
  %478 = add nsw i64 %477, 4
  %479 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %14, align 8
  %480 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = mul nsw i32 1, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i8, i8* %448, i64 %483
  %485 = call i32 @regcache_cooked_write(%struct.regcache* %474, i64 %478, i8* %484)
  br label %486

486:                                              ; preds = %473, %443
  %487 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %487)
  br label %488

488:                                              ; preds = %486, %440
  %489 = load i32, i32* @RETURN_VALUE_REGISTER_CONVENTION, align 4
  store i32 %489, i32* %7, align 4
  br label %492

490:                                              ; preds = %390
  %491 = load i32, i32* @RETURN_VALUE_STRUCT_CONVENTION, align 4
  store i32 %491, i32* %7, align 4
  br label %492

492:                                              ; preds = %490, %488, %388, %279, %237, %195, %153, %93
  %493 = load i32, i32* %7, align 4
  ret i32 %493
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @ppc_floating_point_unit_p(%struct.gdbarch*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.type* @register_type(%struct.gdbarch*, i64) #1

declare dso_local i32 @regcache_cooked_read(%struct.regcache*, i64, i8*) #1

declare dso_local i32 @convert_typed_floating(i8*, %struct.type*, i8*, %struct.type*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i64, i8*) #1

declare dso_local i32 @regcache_cooked_read_unsigned(%struct.regcache*, i64, i32*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @regcache_cooked_write_unsigned(%struct.regcache*, i64, i32) #1

declare dso_local i32 @unpack_long(%struct.type*, i8*) #1

declare dso_local i64 @TYPE_VECTOR(%struct.type*) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
