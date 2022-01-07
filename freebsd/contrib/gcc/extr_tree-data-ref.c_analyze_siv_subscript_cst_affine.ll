; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_siv_subscript_cst_affine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_siv_subscript_cst_affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@integer_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"siv test failed: chrec is not positive.\0A\00", align 1
@dependence_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@chrec_dont_know = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"siv test failed: chrec not positive.\0A\00", align 1
@integer_zero_node = common dso_local global i64 0, align 8
@EXACT_DIV_EXPR = common dso_local global i32 0, align 4
@ABS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@chrec_known = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, i64*, i64*)* @analyze_siv_subscript_cst_affine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_siv_subscript_cst_affine(i64 %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %19 = load i32, i32* @integer_type_node, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @NULL_TREE, align 8
  %22 = call i64 @chrec_convert(i32 %19, i64 %20, i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* @integer_type_node, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @NULL_TREE, align 8
  %26 = call i64 @chrec_convert(i32 %23, i64 %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* @integer_type_node, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @initial_condition(i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @chrec_fold_minus(i32 %27, i32 %29, i64 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @initial_condition(i64 %32)
  %34 = call i32 @chrec_is_positive(i32 %33, i32* %11)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %5
  %37 = load i64, i64* @dump_file, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* @dump_flags, align 4
  %41 = load i32, i32* @TDF_DETAILS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* @dump_file, align 8
  %46 = call i32 @fprintf(i64 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39, %36
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %50 = load i64, i64* @chrec_dont_know, align 8
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* @chrec_dont_know, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* @chrec_dont_know, align 8
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  br label %252

56:                                               ; preds = %5
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %157

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @CHREC_RIGHT(i64 %60)
  %62 = call i32 @chrec_is_positive(i32 %61, i32* %12)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @dump_file, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* @dump_flags, align 4
  %69 = load i32, i32* @TDF_DETAILS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i64, i64* @dump_file, align 8
  %74 = call i32 @fprintf(i64 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67, %64
  %76 = load i64, i64* @chrec_dont_know, align 8
  %77 = load i64*, i64** %8, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* @chrec_dont_know, align 8
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* @chrec_dont_know, align 8
  %81 = load i64*, i64** %10, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  br label %252

84:                                               ; preds = %59
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %148

87:                                               ; preds = %84
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @CHREC_RIGHT(i64 %88)
  %90 = load i64, i64* %14, align 8
  %91 = call i64 @tree_fold_divides_p(i32 %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %139

93:                                               ; preds = %87
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @CHREC_VARIABLE(i64 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i64, i64* @integer_zero_node, align 8
  %97 = load i64*, i64** %8, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* @EXACT_DIV_EXPR, align 4
  %99 = load i32, i32* @integer_type_node, align 4
  %100 = load i32, i32* @ABS_EXPR, align 4
  %101 = load i32, i32* @integer_type_node, align 4
  %102 = load i64, i64* %14, align 8
  %103 = call i64 @fold_build1(i32 %100, i32 %101, i64 %102)
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @CHREC_RIGHT(i64 %104)
  %106 = call i64 @fold_build2(i32 %98, i32 %99, i64 %103, i32 %105)
  %107 = load i64*, i64** %9, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* @integer_one_node, align 8
  %109 = load i64*, i64** %10, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i64 @get_number_of_iters_for_loop(i32 %110)
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* @NULL_TREE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %93
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @TREE_CODE(i64 %117)
  %119 = load i64, i64* @INTEGER_CST, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = load i64, i64* %15, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @tree_int_cst_lt(i64 %122, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load i64, i64* @chrec_known, align 8
  %129 = load i64*, i64** %8, align 8
  store i64 %128, i64* %129, align 8
  %130 = load i64, i64* @chrec_known, align 8
  %131 = load i64*, i64** %9, align 8
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* @integer_zero_node, align 8
  %133 = load i64*, i64** %10, align 8
  store i64 %132, i64* %133, align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %252

136:                                              ; preds = %121, %115, %93
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  br label %252

139:                                              ; preds = %87
  %140 = load i64, i64* @chrec_known, align 8
  %141 = load i64*, i64** %8, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i64, i64* @chrec_known, align 8
  %143 = load i64*, i64** %9, align 8
  store i64 %142, i64* %143, align 8
  %144 = load i64, i64* @integer_zero_node, align 8
  %145 = load i64*, i64** %10, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %252

148:                                              ; preds = %84
  %149 = load i64, i64* @chrec_known, align 8
  %150 = load i64*, i64** %8, align 8
  store i64 %149, i64* %150, align 8
  %151 = load i64, i64* @chrec_known, align 8
  %152 = load i64*, i64** %9, align 8
  store i64 %151, i64* %152, align 8
  %153 = load i64, i64* @integer_zero_node, align 8
  %154 = load i64*, i64** %10, align 8
  store i64 %153, i64* %154, align 8
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %252

157:                                              ; preds = %56
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @CHREC_RIGHT(i64 %158)
  %160 = call i32 @chrec_is_positive(i32 %159, i32* %13)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %182, label %162

162:                                              ; preds = %157
  %163 = load i64, i64* @dump_file, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32, i32* @dump_flags, align 4
  %167 = load i32, i32* @TDF_DETAILS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i64, i64* @dump_file, align 8
  %172 = call i32 @fprintf(i64 %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %165, %162
  %174 = load i64, i64* @chrec_dont_know, align 8
  %175 = load i64*, i64** %8, align 8
  store i64 %174, i64* %175, align 8
  %176 = load i64, i64* @chrec_dont_know, align 8
  %177 = load i64*, i64** %9, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i64, i64* @chrec_dont_know, align 8
  %179 = load i64*, i64** %10, align 8
  store i64 %178, i64* %179, align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  br label %252

182:                                              ; preds = %157
  %183 = load i32, i32* %13, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %243

185:                                              ; preds = %182
  %186 = load i64, i64* %7, align 8
  %187 = call i32 @CHREC_RIGHT(i64 %186)
  %188 = load i64, i64* %14, align 8
  %189 = call i64 @tree_fold_divides_p(i32 %187, i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %234

191:                                              ; preds = %185
  %192 = load i64, i64* %7, align 8
  %193 = call i32 @CHREC_VARIABLE(i64 %192)
  store i32 %193, i32* %18, align 4
  %194 = load i64, i64* @integer_zero_node, align 8
  %195 = load i64*, i64** %8, align 8
  store i64 %194, i64* %195, align 8
  %196 = load i32, i32* @EXACT_DIV_EXPR, align 4
  %197 = load i32, i32* @integer_type_node, align 4
  %198 = load i64, i64* %14, align 8
  %199 = load i64, i64* %7, align 8
  %200 = call i32 @CHREC_RIGHT(i64 %199)
  %201 = call i64 @fold_build2(i32 %196, i32 %197, i64 %198, i32 %200)
  %202 = load i64*, i64** %9, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i64, i64* @integer_one_node, align 8
  %204 = load i64*, i64** %10, align 8
  store i64 %203, i64* %204, align 8
  %205 = load i32, i32* %18, align 4
  %206 = call i64 @get_number_of_iters_for_loop(i32 %205)
  store i64 %206, i64* %17, align 8
  %207 = load i64, i64* %17, align 8
  %208 = load i64, i64* @NULL_TREE, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %231

210:                                              ; preds = %191
  %211 = load i64*, i64** %9, align 8
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @TREE_CODE(i64 %212)
  %214 = load i64, i64* @INTEGER_CST, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %210
  %217 = load i64, i64* %17, align 8
  %218 = load i64*, i64** %9, align 8
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @tree_int_cst_lt(i64 %217, i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %216
  %223 = load i64, i64* @chrec_known, align 8
  %224 = load i64*, i64** %8, align 8
  store i64 %223, i64* %224, align 8
  %225 = load i64, i64* @chrec_known, align 8
  %226 = load i64*, i64** %9, align 8
  store i64 %225, i64* %226, align 8
  %227 = load i64, i64* @integer_zero_node, align 8
  %228 = load i64*, i64** %10, align 8
  store i64 %227, i64* %228, align 8
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %252

231:                                              ; preds = %216, %210, %191
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  br label %252

234:                                              ; preds = %185
  %235 = load i64, i64* @chrec_known, align 8
  %236 = load i64*, i64** %8, align 8
  store i64 %235, i64* %236, align 8
  %237 = load i64, i64* @chrec_known, align 8
  %238 = load i64*, i64** %9, align 8
  store i64 %237, i64* %238, align 8
  %239 = load i64, i64* @integer_zero_node, align 8
  %240 = load i64*, i64** %10, align 8
  store i64 %239, i64* %240, align 8
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %252

243:                                              ; preds = %182
  %244 = load i64, i64* @chrec_known, align 8
  %245 = load i64*, i64** %8, align 8
  store i64 %244, i64* %245, align 8
  %246 = load i64, i64* @chrec_known, align 8
  %247 = load i64*, i64** %9, align 8
  store i64 %246, i64* %247, align 8
  %248 = load i64, i64* @integer_zero_node, align 8
  %249 = load i64*, i64** %10, align 8
  store i64 %248, i64* %249, align 8
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %252

252:                                              ; preds = %243, %234, %231, %222, %173, %148, %139, %136, %127, %75, %47
  ret void
}

declare dso_local i64 @chrec_convert(i32, i64, i64) #1

declare dso_local i64 @chrec_fold_minus(i32, i32, i64) #1

declare dso_local i32 @initial_condition(i64) #1

declare dso_local i32 @chrec_is_positive(i32, i32*) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @CHREC_RIGHT(i64) #1

declare dso_local i64 @tree_fold_divides_p(i32, i64) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i32) #1

declare dso_local i64 @fold_build1(i32, i32, i64) #1

declare dso_local i64 @get_number_of_iters_for_loop(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
