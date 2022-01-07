; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_compute_defs_uses_and_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_compute_defs_uses_and_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_23__*, i64 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__*, i32, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }

@n_basic_blocks = common dso_local global i32 0, align 4
@NUM_FIXED_BLOCKS = common dso_local global i32 0, align 4
@first_btr = common dso_local global i32 0, align 4
@last_btr = common dso_local global i32 0, align 4
@all_btrs = common dso_local global i32 0, align 4
@current_function_has_nonlocal_label = common dso_local global i64 0, align 8
@ASM_INPUT = common dso_local global i64 0, align 8
@call_used_reg_set = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@RETURN = common dso_local global i64 0, align 8
@regno_reg_rtx = common dso_local global i32* null, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@btrs_live = common dso_local global i32* null, align 8
@btrs_live_at_end = common dso_local global i32* null, align 8
@dump_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_24__**, %struct.TYPE_23__**, i32*, i32*, i32*)* @compute_defs_uses_and_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_defs_uses_and_gen(i32 %0, %struct.TYPE_24__** %1, %struct.TYPE_23__** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__**, align 8
  %9 = alloca %struct.TYPE_23__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_22__, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca %struct.TYPE_23__*, align 8
  %27 = alloca %struct.TYPE_23__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_24__** %1, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_23__** %2, %struct.TYPE_23__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @n_basic_blocks, align 4
  %37 = call i32 @sbitmap_vector_zero(i32* %35, i32 %36)
  %38 = load i32, i32* @NUM_FIXED_BLOCKS, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %459, %6
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @n_basic_blocks, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %462

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = call %struct.TYPE_25__* @BASIC_BLOCK(i32 %44)
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %19, align 8
  store i32 0, i32* %22, align 4
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %46, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  store i32* %53, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CLEAR_HARD_REG_SET(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @CLEAR_HARD_REG_SET(i32 %59)
  %61 = load i32, i32* @first_btr, align 4
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %87, %43
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @last_btr, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load i32, i32* @all_btrs, align 4
  %68 = load i32, i32* %18, align 4
  %69 = call i64 @TEST_HARD_REG_BIT(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i64 @REGNO_REG_SET_P(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @SET_HARD_REG_BIT(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %71, %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %18, align 4
  br label %62

90:                                               ; preds = %62
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %92 = call i64 @BB_HEAD(%struct.TYPE_25__* %91)
  store i64 %92, i64* %20, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %94 = call i64 @BB_END(%struct.TYPE_25__* %93)
  %95 = call i64 @NEXT_INSN(i64 %94)
  store i64 %95, i64* %21, align 8
  br label %96

96:                                               ; preds = %350, %90
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %21, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %355

100:                                              ; preds = %96
  %101 = load i64, i64* %20, align 8
  %102 = call i64 @INSN_P(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %349

104:                                              ; preds = %100
  %105 = load i64, i64* %20, align 8
  %106 = call i32 @INSN_UID(i64 %105)
  store i32 %106, i32* %24, align 4
  %107 = load i64, i64* %20, align 8
  %108 = call i64 @insn_sets_btr_p(i64 %107, i32 0, i32* %23)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %176

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i64, i64* %20, align 8
  %115 = load i32, i32* %23, align 4
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %23, align 4
  %119 = call i64 @TEST_HARD_REG_BIT(i32 %117, i32 %118)
  %120 = call %struct.TYPE_24__* @add_btr_def(i32 %111, %struct.TYPE_25__* %112, i32 %113, i64 %114, i32 %115, i64 %119, i32** %15)
  store %struct.TYPE_24__* %120, %struct.TYPE_24__** %25, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %122 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %122, i64 %124
  store %struct.TYPE_24__* %121, %struct.TYPE_24__** %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @SET_HARD_REG_BIT(i32 %127, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %23, align 4
  %133 = call i32 @SET_HARD_REG_BIT(i32 %131, i32 %132)
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* @first_btr, align 4
  %147 = sub nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @sbitmap_difference(i32 %138, i32 %143, i32 %150)
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %24, align 4
  %158 = call i32 @SET_BIT(i32 %156, i32 %157)
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  store %struct.TYPE_24__* %159, %struct.TYPE_24__** %161, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  store %struct.TYPE_24__* %162, %struct.TYPE_24__** %19, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* @first_btr, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %24, align 4
  %171 = call i32 @SET_BIT(i32 %169, i32 %170)
  %172 = load i32, i32* %23, align 4
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %173, align 8
  %175 = call i32 @note_other_use_this_block(i32 %172, %struct.TYPE_23__* %174)
  br label %348

176:                                              ; preds = %104
  %177 = load i64, i64* @current_function_has_nonlocal_label, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %216

179:                                              ; preds = %176
  %180 = load i64, i64* %20, align 8
  %181 = call i64 @PATTERN(i64 %180)
  %182 = call i64 @GET_CODE(i64 %181)
  %183 = load i64, i64* @ASM_INPUT, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %216

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %186, align 8
  store %struct.TYPE_23__* %187, %struct.TYPE_23__** %26, align 8
  br label %188

188:                                              ; preds = %200, %185
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %190 = icmp ne %struct.TYPE_23__* %189, null
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  br label %199

199:                                              ; preds = %196, %191
  br label %200

200:                                              ; preds = %199
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %202, align 8
  store %struct.TYPE_23__* %203, %struct.TYPE_23__** %26, align 8
  br label %188

204:                                              ; preds = %188
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @all_btrs, align 4
  %208 = call i32 @IOR_HARD_REG_SET(i32 %206, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @all_btrs, align 4
  %212 = call i32 @IOR_HARD_REG_SET(i32 %210, i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @sbitmap_zero(i32 %214)
  br label %347

216:                                              ; preds = %179, %176
  %217 = load i64, i64* %20, align 8
  %218 = call i64 @PATTERN(i64 %217)
  %219 = call i64 @btr_referenced_p(i64 %218, i32* null)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %287

221:                                              ; preds = %216
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %223 = load i32, i32* %14, align 4
  %224 = load i64, i64* %20, align 8
  %225 = call %struct.TYPE_23__* @new_btr_user(%struct.TYPE_25__* %222, i32 %223, i64 %224)
  store %struct.TYPE_23__* %225, %struct.TYPE_23__** %27, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %227 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %9, align 8
  %228 = load i32, i32* %24, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %227, i64 %229
  store %struct.TYPE_23__* %226, %struct.TYPE_23__** %230, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %221
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @REGNO(i64 %240)
  %242 = call i32 @SET_HARD_REG_BIT(i32 %237, i32 %241)
  br label %280

243:                                              ; preds = %221
  %244 = load i32, i32* @first_btr, align 4
  store i32 %244, i32* %28, align 4
  br label %245

245:                                              ; preds = %273, %243
  %246 = load i32, i32* %28, align 4
  %247 = load i32, i32* @last_btr, align 4
  %248 = icmp sle i32 %246, %247
  br i1 %248, label %249, label %276

249:                                              ; preds = %245
  %250 = load i32, i32* @all_btrs, align 4
  %251 = load i32, i32* %28, align 4
  %252 = call i64 @TEST_HARD_REG_BIT(i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %272

254:                                              ; preds = %249
  %255 = load i32, i32* %28, align 4
  %256 = load i32, i32* %28, align 4
  %257 = add nsw i32 %256, 1
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @refers_to_regno_p(i32 %255, i32 %257, i64 %260, i32* null)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %254
  %264 = load i32, i32* %28, align 4
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = call i32 @note_other_use_this_block(i32 %264, %struct.TYPE_23__* %266)
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %28, align 4
  %271 = call i32 @SET_HARD_REG_BIT(i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %263, %254, %249
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %28, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %28, align 4
  br label %245

276:                                              ; preds = %245
  %277 = load i64, i64* %20, align 8
  %278 = call i64 @PATTERN(i64 %277)
  %279 = call i32 @note_stores(i64 %278, i32 (i32, i32, %struct.TYPE_22__*)* @note_btr_set, %struct.TYPE_22__* %16)
  br label %280

280:                                              ; preds = %276, %235
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %281, align 8
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 2
  store %struct.TYPE_23__* %282, %struct.TYPE_23__** %284, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  store %struct.TYPE_23__* %285, %struct.TYPE_23__** %286, align 8
  br label %287

287:                                              ; preds = %280, %216
  %288 = load i64, i64* %20, align 8
  %289 = call i64 @CALL_P(i64 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %346

291:                                              ; preds = %287
  store i32* @call_used_reg_set, i32** %29, align 8
  %292 = load i64, i64* %20, align 8
  %293 = call i64 @PATTERN(i64 %292)
  store i64 %293, i64* %31, align 8
  %294 = load i64, i64* %31, align 8
  %295 = call i64 @GET_CODE(i64 %294)
  %296 = load i64, i64* @PARALLEL, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %321

298:                                              ; preds = %291
  %299 = load i64, i64* %31, align 8
  %300 = call i32 @XVECLEN(i64 %299, i32 0)
  %301 = sub nsw i32 %300, 1
  store i32 %301, i32* %32, align 4
  br label %302

302:                                              ; preds = %317, %298
  %303 = load i32, i32* %32, align 4
  %304 = icmp sge i32 %303, 0
  br i1 %304, label %305, label %320

305:                                              ; preds = %302
  %306 = load i64, i64* %31, align 8
  %307 = load i32, i32* %32, align 4
  %308 = call i64 @XVECEXP(i64 %306, i32 0, i32 %307)
  %309 = call i64 @GET_CODE(i64 %308)
  %310 = load i64, i64* @RETURN, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %316

312:                                              ; preds = %305
  %313 = load i32, i32* %30, align 4
  %314 = load i32, i32* @call_used_reg_set, align 4
  %315 = call i32 @COMPL_HARD_REG_SET(i32 %313, i32 %314)
  store i32* %30, i32** %29, align 8
  br label %316

316:                                              ; preds = %312, %305
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %32, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %32, align 4
  br label %302

320:                                              ; preds = %302
  br label %321

321:                                              ; preds = %320, %291
  %322 = load i32, i32* @first_btr, align 4
  store i32 %322, i32* %23, align 4
  br label %323

323:                                              ; preds = %342, %321
  %324 = load i32, i32* %23, align 4
  %325 = load i32, i32* @last_btr, align 4
  %326 = icmp sle i32 %324, %325
  br i1 %326, label %327, label %345

327:                                              ; preds = %323
  %328 = load i32*, i32** %29, align 8
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %23, align 4
  %331 = call i64 @TEST_HARD_REG_BIT(i32 %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %341

333:                                              ; preds = %327
  %334 = load i32*, i32** @regno_reg_rtx, align 8
  %335 = load i32, i32* %23, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @NULL_RTX, align 4
  %340 = call i32 @note_btr_set(i32 %338, i32 %339, %struct.TYPE_22__* %16)
  br label %341

341:                                              ; preds = %333, %327
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %23, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %23, align 4
  br label %323

345:                                              ; preds = %323
  br label %346

346:                                              ; preds = %345, %287
  br label %347

347:                                              ; preds = %346, %204
  br label %348

348:                                              ; preds = %347, %110
  br label %349

349:                                              ; preds = %348, %100
  br label %350

350:                                              ; preds = %349
  %351 = load i64, i64* %20, align 8
  %352 = call i64 @NEXT_INSN(i64 %351)
  store i64 %352, i64* %20, align 8
  %353 = load i32, i32* %14, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %14, align 4
  br label %96

355:                                              ; preds = %96
  %356 = load i32*, i32** @btrs_live, align 8
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @COPY_HARD_REG_SET(i32 %360, i32 %362)
  %364 = load i32*, i32** %12, align 8
  %365 = load i32, i32* %13, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @COPY_HARD_REG_SET(i32 %368, i32 %370)
  %372 = load i32*, i32** @btrs_live_at_end, align 8
  %373 = load i32, i32* %13, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %378 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @REG_SET_TO_HARD_REG_SET(i32 %376, i32 %382)
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %385 = call i64 @BB_END(%struct.TYPE_25__* %384)
  store i64 %385, i64* %20, align 8
  br label %386

386:                                              ; preds = %398, %355
  %387 = load i64, i64* %20, align 8
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %389 = call i64 @BB_HEAD(%struct.TYPE_25__* %388)
  %390 = icmp ne i64 %387, %389
  br i1 %390, label %391, label %396

391:                                              ; preds = %386
  %392 = load i64, i64* %20, align 8
  %393 = call i64 @INSN_P(i64 %392)
  %394 = icmp ne i64 %393, 0
  %395 = xor i1 %394, true
  br label %396

396:                                              ; preds = %391, %386
  %397 = phi i1 [ false, %386 ], [ %395, %391 ]
  br i1 %397, label %398, label %401

398:                                              ; preds = %396
  %399 = load i64, i64* %20, align 8
  %400 = call i64 @PREV_INSN(i64 %399)
  store i64 %400, i64* %20, align 8
  br label %386

401:                                              ; preds = %396
  %402 = load i64, i64* %20, align 8
  %403 = call i64 @can_throw_internal(i64 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %419

405:                                              ; preds = %401
  %406 = load i32, i32* %33, align 4
  %407 = load i32, i32* @call_used_reg_set, align 4
  %408 = call i32 @COPY_HARD_REG_SET(i32 %406, i32 %407)
  %409 = load i32, i32* %33, align 4
  %410 = load i32, i32* @all_btrs, align 4
  %411 = call i32 @AND_HARD_REG_SET(i32 %409, i32 %410)
  %412 = load i32*, i32** @btrs_live_at_end, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %33, align 4
  %418 = call i32 @IOR_HARD_REG_SET(i32 %416, i32 %417)
  store i32 1, i32* %22, align 4
  br label %419

419:                                              ; preds = %405, %401
  %420 = load i32, i32* %22, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %426, label %422

422:                                              ; preds = %419
  %423 = load i64, i64* %20, align 8
  %424 = call i64 @JUMP_P(i64 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %452

426:                                              ; preds = %422, %419
  %427 = load i32, i32* @first_btr, align 4
  store i32 %427, i32* %34, align 4
  br label %428

428:                                              ; preds = %448, %426
  %429 = load i32, i32* %34, align 4
  %430 = load i32, i32* @last_btr, align 4
  %431 = icmp sle i32 %429, %430
  br i1 %431, label %432, label %451

432:                                              ; preds = %428
  %433 = load i32, i32* %34, align 4
  %434 = load i32, i32* %34, align 4
  %435 = add nsw i32 %434, 1
  %436 = load i64, i64* %20, align 8
  %437 = call i64 @refers_to_regno_p(i32 %433, i32 %435, i64 %436, i32* null)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %447

439:                                              ; preds = %432
  %440 = load i32*, i32** @btrs_live_at_end, align 8
  %441 = load i32, i32* %13, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %34, align 4
  %446 = call i32 @SET_HARD_REG_BIT(i32 %444, i32 %445)
  br label %447

447:                                              ; preds = %439, %432
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %34, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %34, align 4
  br label %428

451:                                              ; preds = %428
  br label %452

452:                                              ; preds = %451, %422
  %453 = load i64, i64* @dump_file, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %452
  %456 = load i32, i32* %13, align 4
  %457 = call i32 @dump_btrs_live(i32 %456)
  br label %458

458:                                              ; preds = %455, %452
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %13, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %13, align 4
  br label %39

462:                                              ; preds = %39
  ret void
}

declare dso_local i32 @sbitmap_vector_zero(i32*, i32) #1

declare dso_local %struct.TYPE_25__* @BASIC_BLOCK(i32) #1

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @REGNO_REG_SET_P(i32, i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @BB_HEAD(%struct.TYPE_25__*) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_25__*) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @INSN_UID(i64) #1

declare dso_local i64 @insn_sets_btr_p(i64, i32, i32*) #1

declare dso_local %struct.TYPE_24__* @add_btr_def(i32, %struct.TYPE_25__*, i32, i64, i32, i64, i32**) #1

declare dso_local i32 @sbitmap_difference(i32, i32, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @note_other_use_this_block(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @IOR_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i64 @btr_referenced_p(i64, i32*) #1

declare dso_local %struct.TYPE_23__* @new_btr_user(%struct.TYPE_25__*, i32, i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @refers_to_regno_p(i32, i32, i64, i32*) #1

declare dso_local i32 @note_stores(i64, i32 (i32, i32, %struct.TYPE_22__*)*, %struct.TYPE_22__*) #1

declare dso_local i32 @note_btr_set(i32, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @COMPL_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @COPY_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @REG_SET_TO_HARD_REG_SET(i32, i32) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @can_throw_internal(i64) #1

declare dso_local i32 @AND_HARD_REG_SET(i32, i32) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i32 @dump_btrs_live(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
