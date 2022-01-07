; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-object-size.c_collect_object_sizes_for.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-object-size.c_collect_object_sizes_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_size_info = type { i32, i64, i32, i32 }

@computed = common dso_local global i32* null, align 8
@object_sizes = common dso_local global i32** null, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Found a dependency loop at \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Visiting use-def links for \00", align 1
@CALL_EXPR = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@unknown = common dso_local global i32* null, align 8
@PARM_DECL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Need to reexamine \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_size_info*, i32)* @collect_object_sizes_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_object_sizes_for(%struct.object_size_info* %0, i32 %1) #0 {
  %3 = alloca %struct.object_size_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.object_size_info* %0, %struct.object_size_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %15 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SSA_NAME_VERSION(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** @computed, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @bitmap_bit_p(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %314

28:                                               ; preds = %2
  %29 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %30 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  %34 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %35 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @bitmap_bit_p(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %42 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @bitmap_set_bit(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 -1, i32 0
  %51 = load i32**, i32*** @object_sizes, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %50, i32* %58, align 4
  br label %82

59:                                               ; preds = %33
  %60 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %61 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @bitmap_set_bit(i32 %62, i32 %63)
  %65 = load i64, i64* @dump_file, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32, i32* @dump_flags, align 4
  %69 = load i32, i32* @TDF_DETAILS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i64, i64* @dump_file, align 8
  %74 = call i32 @fprintf(i64 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %75 = load i64, i64* @dump_file, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @dump_flags, align 4
  %78 = call i32 @print_generic_expr(i64 %75, i32 %76, i32 %77)
  %79 = load i64, i64* @dump_file, align 8
  %80 = call i32 @fprintf(i64 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %72, %67, %59
  br label %314

82:                                               ; preds = %40
  br label %83

83:                                               ; preds = %82, %28
  %84 = load i64, i64* @dump_file, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load i32, i32* @dump_flags, align 4
  %88 = load i32, i32* @TDF_DETAILS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i64, i64* @dump_file, align 8
  %93 = call i32 @fprintf(i64 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i64, i64* @dump_file, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @dump_flags, align 4
  %97 = call i32 @print_generic_expr(i64 %94, i32 %95, i32 %96)
  %98 = load i64, i64* @dump_file, align 8
  %99 = call i32 @fprintf(i64 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %91, %86, %83
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @SSA_NAME_DEF_STMT(i32 %101)
  store i32 %102, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @TREE_CODE(i32 %103)
  switch i32 %104, label %257 [
    i32 128, label %105
    i32 131, label %114
    i32 132, label %163
    i32 130, label %177
    i32 129, label %203
  ]

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @TREE_OPERAND(i32 %106, i32 0)
  %108 = call i32 @TREE_CODE(i32 %107)
  %109 = icmp eq i32 %108, 131
  %110 = zext i1 %109 to i32
  %111 = call i32 @gcc_assert(i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @TREE_OPERAND(i32 %112, i32 0)
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %100, %105
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @TREE_OPERAND(i32 %115, i32 1)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @STRIP_NOPS(i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @TREE_CODE(i32 %119)
  %121 = load i32, i32* @CALL_EXPR, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %114
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @pass_through_call(i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %128, %123
  br label %131

131:                                              ; preds = %130, %114
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @TREE_CODE(i32 %132)
  %134 = load i32, i32* @SSA_NAME, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @TREE_TYPE(i32 %137)
  %139 = call i32 @POINTER_TYPE_P(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @merge_object_sizes(%struct.object_size_info* %142, i32 %143, i32 %144, i32 0)
  store i32 %145, i32* %8, align 4
  br label %162

146:                                              ; preds = %136, %131
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @TREE_CODE(i32 %147)
  %149 = load i32, i32* @PLUS_EXPR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @plus_expr_object_size(%struct.object_size_info* %152, i32 %153, i32 %154)
  store i32 %155, i32* %8, align 4
  br label %161

156:                                              ; preds = %146
  %157 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @expr_object_size(%struct.object_size_info* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %151
  br label %162

162:                                              ; preds = %161, %141
  br label %259

163:                                              ; preds = %100
  %164 = load i32*, i32** @unknown, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32**, i32*** @object_sizes, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %168, i32* %176, align 4
  br label %259

177:                                              ; preds = %100
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @SSA_NAME_VAR(i32 %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @IS_EMPTY_STMT(i32 %180)
  %182 = call i32 @gcc_assert(i32 %181)
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @TREE_CODE(i32 %183)
  %185 = load i32, i32* @PARM_DECL, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %177
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @DECL_INITIAL(i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @DECL_INITIAL(i32 %194)
  %196 = call i32 @expr_object_size(%struct.object_size_info* %192, i32 %193, i32 %195)
  br label %202

197:                                              ; preds = %187, %177
  %198 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @expr_object_size(%struct.object_size_info* %198, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %197, %191
  br label %259

203:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %204

204:                                              ; preds = %253, %203
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @PHI_NUM_ARGS(i32 %206)
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %256

209:                                              ; preds = %204
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @PHI_ARG_DEF(i32 %210, i32 %211)
  store i32 %212, i32* %13, align 4
  %213 = load i32**, i32*** @object_sizes, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** @unknown, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %221, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %209
  br label %256

229:                                              ; preds = %209
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @TREE_CODE(i32 %230)
  %232 = load i32, i32* @SSA_NAME, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @merge_object_sizes(%struct.object_size_info* %235, i32 %236, i32 %237, i32 0)
  %239 = load i32, i32* %8, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %8, align 4
  br label %252

241:                                              ; preds = %229
  %242 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %243 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @expr_object_size(%struct.object_size_info* %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %246, %241
  br label %252

252:                                              ; preds = %251, %234
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  br label %204

256:                                              ; preds = %228, %204
  br label %259

257:                                              ; preds = %100
  %258 = call i32 (...) @gcc_unreachable()
  br label %259

259:                                              ; preds = %257, %256, %202, %163, %162
  %260 = load i32, i32* %8, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %259
  %263 = load i32**, i32*** @object_sizes, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %263, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %6, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** @unknown, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %271, %276
  br i1 %277, label %278, label %291

278:                                              ; preds = %262, %259
  %279 = load i32*, i32** @computed, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %6, align 4
  %285 = call i32 @bitmap_set_bit(i32 %283, i32 %284)
  %286 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %287 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %6, align 4
  %290 = call i32 @bitmap_clear_bit(i32 %288, i32 %289)
  br label %314

291:                                              ; preds = %262
  %292 = load %struct.object_size_info*, %struct.object_size_info** %3, align 8
  %293 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = call i32 @bitmap_set_bit(i32 %294, i32 %295)
  %297 = load i64, i64* @dump_file, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %313

299:                                              ; preds = %291
  %300 = load i32, i32* @dump_flags, align 4
  %301 = load i32, i32* @TDF_DETAILS, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %299
  %305 = load i64, i64* @dump_file, align 8
  %306 = call i32 @fprintf(i64 %305, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %307 = load i64, i64* @dump_file, align 8
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @dump_flags, align 4
  %310 = call i32 @print_generic_expr(i64 %307, i32 %308, i32 %309)
  %311 = load i64, i64* @dump_file, align 8
  %312 = call i32 @fprintf(i64 %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %313

313:                                              ; preds = %304, %299, %291
  br label %314

314:                                              ; preds = %27, %81, %313, %278
  ret void
}

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i32 @pass_through_call(i32) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @merge_object_sizes(%struct.object_size_info*, i32, i32, i32) #1

declare dso_local i32 @plus_expr_object_size(%struct.object_size_info*, i32, i32) #1

declare dso_local i32 @expr_object_size(%struct.object_size_info*, i32, i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i32 @IS_EMPTY_STMT(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i32) #1

declare dso_local i32 @PHI_ARG_DEF(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @bitmap_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
