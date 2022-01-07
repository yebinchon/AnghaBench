; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000-c.c_altivec_resolve_overloaded_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000-c.c_altivec_resolve_overloaded_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i32)* }
%struct.altivec_builtin_types = type { i32, i64, i64, i64 }

@ALTIVEC_BUILTIN_OVERLOADED_FIRST = common dso_local global i32 0, align 4
@ALTIVEC_BUILTIN_OVERLOADED_LAST = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@const_ptr_type_node = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"passing arg %d of %qE discards qualifiers frompointer target type\00", align 1
@ALTIVEC_BUILTIN_VEC_STEP = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i64 0, align 8
@altivec_overloaded_builtins = common dso_local global %struct.altivec_builtin_types* null, align 8
@RS6000_BTI_NOT_OPAQUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"invalid parameter combination for AltiVec intrinsic\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @altivec_resolve_overloaded_builtin(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca [3 x i64], align 16
  %10 = alloca %struct.altivec_builtin_types*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @DECL_FUNCTION_CODE(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_TYPE(i64 %17)
  %19 = call i64 @TYPE_ARG_TYPES(i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ALTIVEC_BUILTIN_OVERLOADED_FIRST, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ALTIVEC_BUILTIN_OVERLOADED_LAST, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %2
  %28 = load i64, i64* @NULL_TREE, align 8
  store i64 %28, i64* %3, align 8
  br label %252

29:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %133, %29
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @TREE_VALUE(i64 %31)
  %33 = call i32 @VOID_TYPE_P(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i1 [ false, %30 ], [ %37, %35 ]
  br i1 %39, label %40, label %140

40:                                               ; preds = %38
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @TREE_VALUE(i64 %41)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @TREE_VALUE(i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @error_mark_node, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i64, i64* @error_mark_node, align 8
  store i64 %49, i64* %3, align 8
  br label %252

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = icmp sge i32 %51, 3
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @abort() #3
  unreachable

55:                                               ; preds = %50
  %56 = load i64, i64* %13, align 8
  %57 = call i64 @default_conversion(i64 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @TREE_TYPE(i64 %58)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i64 @POINTER_TYPE_P(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %55
  %64 = load i64, i64* %13, align 8
  %65 = call i64 @TREE_CODE(i64 %64)
  %66 = load i64, i64* @NOP_EXPR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load i64 (i64, i32)*, i64 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @TREE_TYPE(i64 %70)
  %72 = load i32, i32* @const_ptr_type_node, align 4
  %73 = call i64 %69(i64 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load i64 (i64, i32)*, i64 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @TREE_OPERAND(i64 %77, i32 0)
  %79 = call i64 @TREE_TYPE(i64 %78)
  %80 = load i32, i32* @ptr_type_node, align 4
  %81 = call i64 %76(i64 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i64, i64* %13, align 8
  %85 = call i64 @TREE_OPERAND(i64 %84, i32 0)
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i64 @TREE_TYPE(i64 %86)
  store i64 %87, i64* %14, align 8
  br label %88

88:                                               ; preds = %83, %75, %68, %63, %55
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @POINTER_TYPE_P(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %88
  %93 = load i64, i64* %14, align 8
  %94 = call i64 @POINTER_TYPE_P(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  %98 = call i64 @TREE_TYPE(i64 %97)
  %99 = call i64 @TYPE_QUALS(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %96
  %102 = load i64, i64* %14, align 8
  %103 = call i64 @TREE_TYPE(i64 %102)
  %104 = call i64 @TYPE_READONLY(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i64, i64* %12, align 8
  %108 = call i64 @TREE_TYPE(i64 %107)
  %109 = call i64 @TYPE_READONLY(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @warning(i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %113, i64 %114)
  br label %116

116:                                              ; preds = %111, %106, %101
  %117 = load i64, i64* %14, align 8
  %118 = call i64 @TREE_TYPE(i64 %117)
  %119 = call i32 @build_qualified_type(i64 %118, i32 0)
  %120 = call i64 @build_pointer_type(i32 %119)
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @fold_convert(i64 %121, i64 %122)
  store i64 %123, i64* %13, align 8
  br label %124

124:                                              ; preds = %116, %96, %92, %88
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %127
  store i64 %125, i64* %128, align 8
  %129 = load i64, i64* %14, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 %131
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %124
  %134 = load i64, i64* %7, align 8
  %135 = call i64 @TREE_CHAIN(i64 %134)
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %5, align 8
  %137 = call i64 @TREE_CHAIN(i64 %136)
  store i64 %137, i64* %5, align 8
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %30

140:                                              ; preds = %38
  %141 = load i64, i64* %7, align 8
  %142 = call i64 @TREE_VALUE(i64 %141)
  %143 = call i32 @VOID_TYPE_P(i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i64, i64* %5, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145, %140
  store i64 0, i64* %3, align 8
  br label %252

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 (...) @abort() #3
  unreachable

154:                                              ; preds = %149
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @ALTIVEC_BUILTIN_VEC_STEP, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %160 = load i64, i64* %159, align 16
  %161 = call i64 @TREE_CODE(i64 %160)
  %162 = load i64, i64* @VECTOR_TYPE, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %249

165:                                              ; preds = %158
  %166 = load i64, i64* @NULL_TREE, align 8
  %167 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %168 = load i64, i64* %167, align 16
  %169 = call i32 @TYPE_VECTOR_SUBPARTS(i64 %168)
  %170 = call i64 @build_int_cst(i64 %166, i32 %169)
  store i64 %170, i64* %3, align 8
  br label %252

171:                                              ; preds = %154
  %172 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** @altivec_overloaded_builtins, align 8
  store %struct.altivec_builtin_types* %172, %struct.altivec_builtin_types** %10, align 8
  br label %173

173:                                              ; preds = %187, %171
  %174 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %175 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %180 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %181, %182
  br label %184

184:                                              ; preds = %178, %173
  %185 = phi i1 [ false, %173 ], [ %183, %178 ]
  br i1 %185, label %186, label %190

186:                                              ; preds = %184
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %189 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %188, i32 1
  store %struct.altivec_builtin_types* %189, %struct.altivec_builtin_types** %10, align 8
  br label %173

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %245, %190
  %192 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %193 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %248

197:                                              ; preds = %191
  %198 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %199 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @RS6000_BTI_NOT_OPAQUE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %211, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %205 = load i64, i64* %204, align 16
  %206 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %207 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @rs6000_builtin_type_compatible(i64 %205, i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %244

211:                                              ; preds = %203, %197
  %212 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %213 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @RS6000_BTI_NOT_OPAQUE, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %225, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %221 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @rs6000_builtin_type_compatible(i64 %219, i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %244

225:                                              ; preds = %217, %211
  %226 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %227 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @RS6000_BTI_NOT_OPAQUE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %239, label %231

231:                                              ; preds = %225
  %232 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %233 = load i64, i64* %232, align 16
  %234 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %235 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = call i64 @rs6000_builtin_type_compatible(i64 %233, i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %231, %225
  %240 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %243 = call i64 @altivec_build_resolved_builtin(i64* %240, i32 %241, %struct.altivec_builtin_types* %242)
  store i64 %243, i64* %3, align 8
  br label %252

244:                                              ; preds = %231, %217, %203
  br label %245

245:                                              ; preds = %244
  %246 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %10, align 8
  %247 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %246, i32 1
  store %struct.altivec_builtin_types* %247, %struct.altivec_builtin_types** %10, align 8
  br label %191

248:                                              ; preds = %191
  br label %249

249:                                              ; preds = %248, %164
  %250 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %251 = load i64, i64* @error_mark_node, align 8
  store i64 %251, i64* %3, align 8
  br label %252

252:                                              ; preds = %249, %239, %165, %148, %48, %27
  %253 = load i64, i64* %3, align 8
  ret i64 %253
}

declare dso_local i32 @DECL_FUNCTION_CODE(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @VOID_TYPE_P(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @default_conversion(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TYPE_QUALS(i64) #1

declare dso_local i64 @TYPE_READONLY(i64) #1

declare dso_local i32 @warning(i32, i8*, i32, i64) #1

declare dso_local i64 @build_pointer_type(i32) #1

declare dso_local i32 @build_qualified_type(i64, i32) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i64) #1

declare dso_local i64 @rs6000_builtin_type_compatible(i64, i64) #1

declare dso_local i64 @altivec_build_resolved_builtin(i64*, i32, %struct.altivec_builtin_types*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
