; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_record_jump_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_record_jump_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qty_table_elem = type { i32, i32, i64 }
%struct.table_elt = type { i64, i32 }

@EQ = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@NE = common dso_local global i32 0, align 4
@do_not_record = common dso_local global i64 0, align 8
@hash_arg_in_memory = common dso_local global i32 0, align 4
@qty_table = common dso_local global %struct.qty_table_elem* null, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i64, i32)* @record_jump_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_jump_cond(i32 %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.table_elt*, align 8
  %16 = alloca %struct.table_elt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.qty_table_elem*, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EQ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %5
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @GET_CODE(i64 %31)
  %33 = load i64, i64* @SUBREG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @GET_MODE(i64 %36)
  %38 = call i64 @GET_MODE_SIZE(i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @SUBREG_REG(i64 %39)
  %41 = call i32 @GET_MODE(i64 %40)
  %42 = call i64 @GET_MODE_SIZE(i32 %41)
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @SUBREG_REG(i64 %45)
  %47 = call i32 @GET_MODE(i64 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @record_jump_cond_subreg(i32 %48, i64 %49)
  store i64 %50, i64* %18, align 8
  %51 = load i64, i64* %18, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @SUBREG_REG(i64 %56)
  %58 = load i64, i64* %18, align 8
  %59 = load i32, i32* %10, align 4
  call void @record_jump_cond(i32 %54, i32 %55, i64 %57, i64 %58, i32 %59)
  br label %60

60:                                               ; preds = %53, %44
  br label %61

61:                                               ; preds = %60, %35, %30, %5
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @EQ, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @GET_CODE(i64 %66)
  %68 = load i64, i64* @SUBREG, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @GET_MODE(i64 %71)
  %73 = call i64 @GET_MODE_SIZE(i32 %72)
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @SUBREG_REG(i64 %74)
  %76 = call i32 @GET_MODE(i64 %75)
  %77 = call i64 @GET_MODE_SIZE(i32 %76)
  %78 = icmp sgt i64 %73, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %70
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @SUBREG_REG(i64 %80)
  %82 = call i32 @GET_MODE(i64 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @record_jump_cond_subreg(i32 %83, i64 %84)
  store i64 %85, i64* %20, align 8
  %86 = load i64, i64* %20, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @SUBREG_REG(i64 %91)
  %93 = load i64, i64* %20, align 8
  %94 = load i32, i32* %10, align 4
  call void @record_jump_cond(i32 %89, i32 %90, i64 %92, i64 %93, i32 %94)
  br label %95

95:                                               ; preds = %88, %79
  br label %96

96:                                               ; preds = %95, %70, %65, %61
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @NE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %96
  %101 = load i64, i64* %8, align 8
  %102 = call i64 @GET_CODE(i64 %101)
  %103 = load i64, i64* @SUBREG, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %100
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @subreg_lowpart_p(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @GET_MODE(i64 %110)
  %112 = call i64 @GET_MODE_SIZE(i32 %111)
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @SUBREG_REG(i64 %113)
  %115 = call i32 @GET_MODE(i64 %114)
  %116 = call i64 @GET_MODE_SIZE(i32 %115)
  %117 = icmp slt i64 %112, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %109
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @SUBREG_REG(i64 %119)
  %121 = call i32 @GET_MODE(i64 %120)
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i64, i64* %9, align 8
  %124 = call i64 @record_jump_cond_subreg(i32 %122, i64 %123)
  store i64 %124, i64* %22, align 8
  %125 = load i64, i64* %22, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i64, i64* %8, align 8
  %131 = call i64 @SUBREG_REG(i64 %130)
  %132 = load i64, i64* %22, align 8
  %133 = load i32, i32* %10, align 4
  call void @record_jump_cond(i32 %128, i32 %129, i64 %131, i64 %132, i32 %133)
  br label %134

134:                                              ; preds = %127, %118
  br label %135

135:                                              ; preds = %134, %109, %105, %100, %96
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @NE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %174

139:                                              ; preds = %135
  %140 = load i64, i64* %9, align 8
  %141 = call i64 @GET_CODE(i64 %140)
  %142 = load i64, i64* @SUBREG, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %174

144:                                              ; preds = %139
  %145 = load i64, i64* %9, align 8
  %146 = call i64 @subreg_lowpart_p(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @GET_MODE(i64 %149)
  %151 = call i64 @GET_MODE_SIZE(i32 %150)
  %152 = load i64, i64* %9, align 8
  %153 = call i64 @SUBREG_REG(i64 %152)
  %154 = call i32 @GET_MODE(i64 %153)
  %155 = call i64 @GET_MODE_SIZE(i32 %154)
  %156 = icmp slt i64 %151, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %148
  %158 = load i64, i64* %9, align 8
  %159 = call i64 @SUBREG_REG(i64 %158)
  %160 = call i32 @GET_MODE(i64 %159)
  store i32 %160, i32* %23, align 4
  %161 = load i32, i32* %23, align 4
  %162 = load i64, i64* %8, align 8
  %163 = call i64 @record_jump_cond_subreg(i32 %161, i64 %162)
  store i64 %163, i64* %24, align 8
  %164 = load i64, i64* %24, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %157
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i64, i64* %9, align 8
  %170 = call i64 @SUBREG_REG(i64 %169)
  %171 = load i64, i64* %24, align 8
  %172 = load i32, i32* %10, align 4
  call void @record_jump_cond(i32 %167, i32 %168, i64 %170, i64 %171, i32 %172)
  br label %173

173:                                              ; preds = %166, %157
  br label %174

174:                                              ; preds = %173, %148, %144, %139, %135
  store i64 0, i64* @do_not_record, align 8
  store i32 0, i32* @hash_arg_in_memory, align 4
  %175 = load i64, i64* %8, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @HASH(i64 %175, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* @hash_arg_in_memory, align 4
  store i32 %178, i32* %13, align 4
  %179 = load i64, i64* @do_not_record, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %385

182:                                              ; preds = %174
  store i64 0, i64* @do_not_record, align 8
  store i32 0, i32* @hash_arg_in_memory, align 4
  %183 = load i64, i64* %9, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @HASH(i64 %183, i32 %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* @hash_arg_in_memory, align 4
  store i32 %186, i32* %14, align 4
  %187 = load i64, i64* @do_not_record, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %385

190:                                              ; preds = %182
  %191 = load i64, i64* %8, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call %struct.table_elt* @lookup(i64 %191, i32 %192, i32 %193)
  store %struct.table_elt* %194, %struct.table_elt** %15, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call %struct.table_elt* @lookup(i64 %195, i32 %196, i32 %197)
  store %struct.table_elt* %198, %struct.table_elt** %16, align 8
  %199 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %200 = icmp ne %struct.table_elt* %199, null
  br i1 %200, label %201, label %212

201:                                              ; preds = %190
  %202 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  %203 = icmp ne %struct.table_elt* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %206 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  %209 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %207, %210
  br i1 %211, label %221, label %212

212:                                              ; preds = %204, %201, %190
  %213 = load i64, i64* %8, align 8
  %214 = load i64, i64* %9, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %221, label %216

216:                                              ; preds = %212
  %217 = load i64, i64* %8, align 8
  %218 = load i64, i64* %9, align 8
  %219 = call i64 @rtx_equal_p(i64 %217, i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216, %212, %204
  br label %385

222:                                              ; preds = %216
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @EQ, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = load i64, i64* %8, align 8
  %228 = call i32 @GET_MODE(i64 %227)
  %229 = call i64 @FLOAT_MODE_P(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %339

231:                                              ; preds = %226, %222
  %232 = load i64, i64* %9, align 8
  %233 = call i64 @REG_P(i64 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %231
  %236 = load i64, i64* %9, align 8
  %237 = call i64 @equiv_constant(i64 %236)
  store i64 %237, i64* %9, align 8
  br label %238

238:                                              ; preds = %235, %231
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32, i32* %7, align 4
  %243 = call i64 @FLOAT_MODE_P(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %241, %238
  %246 = load i64, i64* %8, align 8
  %247 = call i64 @REG_P(i64 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i64, i64* %9, align 8
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249, %245, %241
  br label %385

253:                                              ; preds = %249
  %254 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %255 = icmp eq %struct.table_elt* %254, null
  br i1 %255, label %256, label %282

256:                                              ; preds = %253
  %257 = load i64, i64* %8, align 8
  %258 = call i64 @insert_regs(i64 %257, i32* null, i32 0)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %274

260:                                              ; preds = %256
  %261 = load i64, i64* %8, align 8
  %262 = call i32 @rehash_using_reg(i64 %261)
  %263 = load i64, i64* %8, align 8
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @HASH(i64 %263, i32 %264)
  store i32 %265, i32* %11, align 4
  %266 = load i64, i64* %9, align 8
  %267 = call i32 @CONSTANT_P(i64 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %260
  %270 = load i64, i64* %9, align 8
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @HASH(i64 %270, i32 %271)
  store i32 %272, i32* %12, align 4
  br label %273

273:                                              ; preds = %269, %260
  br label %274

274:                                              ; preds = %273, %256
  %275 = load i64, i64* %8, align 8
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %7, align 4
  %278 = call %struct.table_elt* @insert(i64 %275, i32* null, i32 %276, i32 %277)
  store %struct.table_elt* %278, %struct.table_elt** %15, align 8
  %279 = load i32, i32* %13, align 4
  %280 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %281 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  br label %282

282:                                              ; preds = %274, %253
  %283 = load i64, i64* %8, align 8
  %284 = call i32 @REGNO(i64 %283)
  %285 = call i8* @REG_QTY(i32 %284)
  %286 = ptrtoint i8* %285 to i32
  store i32 %286, i32* %26, align 4
  %287 = load %struct.qty_table_elem*, %struct.qty_table_elem** @qty_table, align 8
  %288 = load i32, i32* %26, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %287, i64 %289
  store %struct.qty_table_elem* %290, %struct.qty_table_elem** %25, align 8
  %291 = load i32, i32* %6, align 4
  %292 = load %struct.qty_table_elem*, %struct.qty_table_elem** %25, align 8
  %293 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  %294 = load i64, i64* %9, align 8
  %295 = call i64 @REG_P(i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %332

297:                                              ; preds = %282
  %298 = load i64, i64* %9, align 8
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* %7, align 4
  %301 = call %struct.table_elt* @lookup(i64 %298, i32 %299, i32 %300)
  store %struct.table_elt* %301, %struct.table_elt** %16, align 8
  %302 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  %303 = icmp eq %struct.table_elt* %302, null
  br i1 %303, label %304, label %322

304:                                              ; preds = %297
  %305 = load i64, i64* %9, align 8
  %306 = call i64 @insert_regs(i64 %305, i32* null, i32 0)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %304
  %309 = load i64, i64* %9, align 8
  %310 = call i32 @rehash_using_reg(i64 %309)
  %311 = load i64, i64* %9, align 8
  %312 = load i32, i32* %7, align 4
  %313 = call i32 @HASH(i64 %311, i32 %312)
  store i32 %313, i32* %12, align 4
  br label %314

314:                                              ; preds = %308, %304
  %315 = load i64, i64* %9, align 8
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* %7, align 4
  %318 = call %struct.table_elt* @insert(i64 %315, i32* null, i32 %316, i32 %317)
  store %struct.table_elt* %318, %struct.table_elt** %16, align 8
  %319 = load i32, i32* %14, align 4
  %320 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  %321 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %314, %297
  %323 = load i64, i64* @NULL_RTX, align 8
  %324 = load %struct.qty_table_elem*, %struct.qty_table_elem** %25, align 8
  %325 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %324, i32 0, i32 2
  store i64 %323, i64* %325, align 8
  %326 = load i64, i64* %9, align 8
  %327 = call i32 @REGNO(i64 %326)
  %328 = call i8* @REG_QTY(i32 %327)
  %329 = ptrtoint i8* %328 to i32
  %330 = load %struct.qty_table_elem*, %struct.qty_table_elem** %25, align 8
  %331 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %330, i32 0, i32 1
  store i32 %329, i32* %331, align 4
  br label %338

332:                                              ; preds = %282
  %333 = load i64, i64* %9, align 8
  %334 = load %struct.qty_table_elem*, %struct.qty_table_elem** %25, align 8
  %335 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %334, i32 0, i32 2
  store i64 %333, i64* %335, align 8
  %336 = load %struct.qty_table_elem*, %struct.qty_table_elem** %25, align 8
  %337 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %336, i32 0, i32 1
  store i32 -1, i32* %337, align 4
  br label %338

338:                                              ; preds = %332, %322
  br label %385

339:                                              ; preds = %226
  %340 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %341 = icmp eq %struct.table_elt* %340, null
  br i1 %341, label %342, label %360

342:                                              ; preds = %339
  %343 = load i64, i64* %8, align 8
  %344 = call i64 @insert_regs(i64 %343, i32* null, i32 0)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %342
  %347 = load i64, i64* %8, align 8
  %348 = call i32 @rehash_using_reg(i64 %347)
  %349 = load i64, i64* %8, align 8
  %350 = load i32, i32* %7, align 4
  %351 = call i32 @HASH(i64 %349, i32 %350)
  store i32 %351, i32* %11, align 4
  br label %352

352:                                              ; preds = %346, %342
  %353 = load i64, i64* %8, align 8
  %354 = load i32, i32* %11, align 4
  %355 = load i32, i32* %7, align 4
  %356 = call %struct.table_elt* @insert(i64 %353, i32* null, i32 %354, i32 %355)
  store %struct.table_elt* %356, %struct.table_elt** %15, align 8
  %357 = load i32, i32* %13, align 4
  %358 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %359 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %358, i32 0, i32 1
  store i32 %357, i32* %359, align 8
  br label %360

360:                                              ; preds = %352, %339
  %361 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  %362 = icmp eq %struct.table_elt* %361, null
  br i1 %362, label %363, label %381

363:                                              ; preds = %360
  %364 = load i64, i64* %9, align 8
  %365 = call i64 @insert_regs(i64 %364, i32* null, i32 0)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %363
  %368 = load i64, i64* %9, align 8
  %369 = call i32 @rehash_using_reg(i64 %368)
  %370 = load i64, i64* %9, align 8
  %371 = load i32, i32* %7, align 4
  %372 = call i32 @HASH(i64 %370, i32 %371)
  store i32 %372, i32* %12, align 4
  br label %373

373:                                              ; preds = %367, %363
  %374 = load i64, i64* %9, align 8
  %375 = load i32, i32* %12, align 4
  %376 = load i32, i32* %7, align 4
  %377 = call %struct.table_elt* @insert(i64 %374, i32* null, i32 %375, i32 %376)
  store %struct.table_elt* %377, %struct.table_elt** %16, align 8
  %378 = load i32, i32* %14, align 4
  %379 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  %380 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %379, i32 0, i32 1
  store i32 %378, i32* %380, align 8
  br label %381

381:                                              ; preds = %373, %360
  %382 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %383 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  %384 = call i32 @merge_equiv_classes(%struct.table_elt* %382, %struct.table_elt* %383)
  br label %385

385:                                              ; preds = %381, %338, %252, %221, %189, %181
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @record_jump_cond_subreg(i32, i64) #1

declare dso_local i64 @subreg_lowpart_p(i64) #1

declare dso_local i32 @HASH(i64, i32) #1

declare dso_local %struct.table_elt* @lookup(i64, i32, i32) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @equiv_constant(i64) #1

declare dso_local i64 @insert_regs(i64, i32*, i32) #1

declare dso_local i32 @rehash_using_reg(i64) #1

declare dso_local i32 @CONSTANT_P(i64) #1

declare dso_local %struct.table_elt* @insert(i64, i32*, i32, i32) #1

declare dso_local i8* @REG_QTY(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @merge_equiv_classes(%struct.table_elt*, %struct.table_elt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
