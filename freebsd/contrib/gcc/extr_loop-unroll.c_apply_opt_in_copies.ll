; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_apply_opt_in_copies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_apply_opt_in_copies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_info = type { i32, i64, i32*, i64, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.iv_to_split = type { i64 }
%struct.var_to_expand = type { i64 }

@allocate_basic_variable = common dso_local global i32 0, align 4
@last_basic_block = common dso_local global i64 0, align 8
@insert_var_expansion_initialization = common dso_local global i32 0, align 4
@combine_var_copies_in_loop_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opt_info*, i32, i32, i32)* @apply_opt_in_copies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_opt_in_copies(%struct.opt_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.opt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.iv_to_split, align 8
  %17 = alloca %struct.iv_to_split*, align 8
  %18 = alloca %struct.var_to_expand, align 8
  %19 = alloca %struct.var_to_expand*, align 8
  store %struct.opt_info* %0, %struct.opt_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %4
  %26 = phi i1 [ true, %4 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  %29 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %30 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %35 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @allocate_basic_variable, align 4
  %38 = call i32 @htab_traverse(i64 %36, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %41 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %164, %39
  %44 = load i32, i32* %9, align 4
  %45 = load i64, i64* @last_basic_block, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %48, label %167

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.TYPE_9__* @BASIC_BLOCK(i32 %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %11, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %52 = call %struct.TYPE_9__* @get_bb_original(%struct.TYPE_9__* %51)
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %12, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @determine_split_iv_delta(i64 %55, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = call i64 @BB_HEAD(%struct.TYPE_9__* %61)
  store i64 %62, i64* %14, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = call i64 @BB_HEAD(%struct.TYPE_9__* %63)
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %161, %48
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %68 = call i64 @BB_END(%struct.TYPE_9__* %67)
  %69 = call i64 @NEXT_INSN(i64 %68)
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %163

71:                                               ; preds = %65
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @NEXT_INSN(i64 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @INSN_P(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %161

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %84, %78
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @INSN_P(i64 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* %14, align 8
  %86 = call i64 @NEXT_INSN(i64 %85)
  store i64 %86, i64* %14, align 8
  br label %79

87:                                               ; preds = %79
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %16, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %18, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %93 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %87
  %97 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %98 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = bitcast %struct.iv_to_split* %16 to %struct.var_to_expand*
  %101 = call %struct.var_to_expand* @htab_find(i64 %99, %struct.var_to_expand* %100)
  %102 = bitcast %struct.var_to_expand* %101 to %struct.iv_to_split*
  store %struct.iv_to_split* %102, %struct.iv_to_split** %17, align 8
  %103 = load %struct.iv_to_split*, %struct.iv_to_split** %17, align 8
  %104 = icmp ne %struct.iv_to_split* %103, null
  br i1 %104, label %105, label %128

105:                                              ; preds = %96
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @PATTERN(i64 %106)
  %108 = call i64 @GET_CODE(i32 %107)
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @PATTERN(i64 %109)
  %111 = call i64 @GET_CODE(i32 %110)
  %112 = icmp eq i64 %108, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @gcc_assert(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %105
  %118 = load %struct.iv_to_split*, %struct.iv_to_split** %17, align 8
  %119 = bitcast %struct.iv_to_split* %118 to %struct.var_to_expand*
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @insert_base_initialization(%struct.var_to_expand* %119, i64 %120)
  br label %122

122:                                              ; preds = %117, %105
  %123 = load %struct.iv_to_split*, %struct.iv_to_split** %17, align 8
  %124 = bitcast %struct.iv_to_split* %123 to %struct.var_to_expand*
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @split_iv(%struct.var_to_expand* %124, i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %96
  br label %129

129:                                              ; preds = %128, %87
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %129
  %133 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %134 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %132
  %138 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %139 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call %struct.var_to_expand* @htab_find(i64 %140, %struct.var_to_expand* %18)
  store %struct.var_to_expand* %141, %struct.var_to_expand** %19, align 8
  %142 = load %struct.var_to_expand*, %struct.var_to_expand** %19, align 8
  %143 = icmp ne %struct.var_to_expand* %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %137
  %145 = load i64, i64* %13, align 8
  %146 = call i32 @PATTERN(i64 %145)
  %147 = call i64 @GET_CODE(i32 %146)
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @PATTERN(i64 %148)
  %150 = call i64 @GET_CODE(i32 %149)
  %151 = icmp eq i64 %147, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @gcc_assert(i32 %152)
  %154 = load %struct.var_to_expand*, %struct.var_to_expand** %19, align 8
  %155 = load i64, i64* %13, align 8
  %156 = call i32 @expand_var_during_unrolling(%struct.var_to_expand* %154, i64 %155)
  br label %157

157:                                              ; preds = %144, %137
  br label %158

158:                                              ; preds = %157, %132, %129
  %159 = load i64, i64* %14, align 8
  %160 = call i64 @NEXT_INSN(i64 %159)
  store i64 %160, i64* %14, align 8
  br label %161

161:                                              ; preds = %158, %77
  %162 = load i64, i64* %15, align 8
  store i64 %162, i64* %13, align 8
  br label %65

163:                                              ; preds = %65
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %9, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %43

167:                                              ; preds = %43
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  br label %269

171:                                              ; preds = %167
  %172 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %173 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %171
  %177 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %178 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @insert_var_expansion_initialization, align 4
  %181 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %182 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @htab_traverse(i64 %179, i32 %180, i32* %183)
  %185 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %186 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @combine_var_copies_in_loop_exit, align 4
  %189 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %190 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @htab_traverse(i64 %187, i32 %188, i32* %191)
  br label %193

193:                                              ; preds = %176, %171
  %194 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %195 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %266, %193
  %198 = load i32, i32* %9, align 4
  %199 = load i64, i64* @last_basic_block, align 8
  %200 = trunc i64 %199 to i32
  %201 = icmp ult i32 %198, %200
  br i1 %201, label %202, label %269

202:                                              ; preds = %197
  %203 = load i32, i32* %9, align 4
  %204 = call %struct.TYPE_9__* @BASIC_BLOCK(i32 %203)
  store %struct.TYPE_9__* %204, %struct.TYPE_9__** %11, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %206 = call %struct.TYPE_9__* @get_bb_original(%struct.TYPE_9__* %205)
  store %struct.TYPE_9__* %206, %struct.TYPE_9__** %12, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %208 = call %struct.TYPE_9__* @get_bb_copy(%struct.TYPE_9__* %207)
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %210 = icmp ne %struct.TYPE_9__* %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %202
  br label %266

212:                                              ; preds = %202
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @determine_split_iv_delta(i64 0, i32 %213, i32 %214)
  store i32 %215, i32* %10, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %217 = call i64 @BB_HEAD(%struct.TYPE_9__* %216)
  store i64 %217, i64* %14, align 8
  br label %218

218:                                              ; preds = %263, %212
  %219 = load i64, i64* %14, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %221 = call i64 @BB_END(%struct.TYPE_9__* %220)
  %222 = call i64 @NEXT_INSN(i64 %221)
  %223 = icmp ne i64 %219, %222
  br i1 %223, label %224, label %265

224:                                              ; preds = %218
  %225 = load i64, i64* %14, align 8
  %226 = call i64 @NEXT_INSN(i64 %225)
  store i64 %226, i64* %15, align 8
  %227 = load i64, i64* %14, align 8
  %228 = call i32 @INSN_P(i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %224
  br label %263

231:                                              ; preds = %224
  %232 = load i64, i64* %14, align 8
  %233 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %16, i32 0, i32 0
  store i64 %232, i64* %233, align 8
  %234 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %235 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %231
  %239 = load %struct.opt_info*, %struct.opt_info** %5, align 8
  %240 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = bitcast %struct.iv_to_split* %16 to %struct.var_to_expand*
  %243 = call %struct.var_to_expand* @htab_find(i64 %241, %struct.var_to_expand* %242)
  %244 = bitcast %struct.var_to_expand* %243 to %struct.iv_to_split*
  store %struct.iv_to_split* %244, %struct.iv_to_split** %17, align 8
  %245 = load %struct.iv_to_split*, %struct.iv_to_split** %17, align 8
  %246 = icmp ne %struct.iv_to_split* %245, null
  br i1 %246, label %247, label %261

247:                                              ; preds = %238
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %247
  %251 = load %struct.iv_to_split*, %struct.iv_to_split** %17, align 8
  %252 = bitcast %struct.iv_to_split* %251 to %struct.var_to_expand*
  %253 = load i64, i64* %14, align 8
  %254 = call i32 @insert_base_initialization(%struct.var_to_expand* %252, i64 %253)
  br label %255

255:                                              ; preds = %250, %247
  %256 = load %struct.iv_to_split*, %struct.iv_to_split** %17, align 8
  %257 = bitcast %struct.iv_to_split* %256 to %struct.var_to_expand*
  %258 = load i64, i64* %14, align 8
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @split_iv(%struct.var_to_expand* %257, i64 %258, i32 %259)
  br label %263

261:                                              ; preds = %238
  br label %262

262:                                              ; preds = %261, %231
  br label %263

263:                                              ; preds = %262, %255, %230
  %264 = load i64, i64* %15, align 8
  store i64 %264, i64* %14, align 8
  br label %218

265:                                              ; preds = %218
  br label %266

266:                                              ; preds = %265, %211
  %267 = load i32, i32* %9, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %9, align 4
  br label %197

269:                                              ; preds = %170, %197
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @htab_traverse(i64, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @BASIC_BLOCK(i32) #1

declare dso_local %struct.TYPE_9__* @get_bb_original(%struct.TYPE_9__*) #1

declare dso_local i32 @determine_split_iv_delta(i64, i32, i32) #1

declare dso_local i64 @BB_HEAD(%struct.TYPE_9__*) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_9__*) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local %struct.var_to_expand* @htab_find(i64, %struct.var_to_expand*) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i32 @insert_base_initialization(%struct.var_to_expand*, i64) #1

declare dso_local i32 @split_iv(%struct.var_to_expand*, i64, i32) #1

declare dso_local i32 @expand_var_during_unrolling(%struct.var_to_expand*, i64) #1

declare dso_local %struct.TYPE_9__* @get_bb_copy(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
