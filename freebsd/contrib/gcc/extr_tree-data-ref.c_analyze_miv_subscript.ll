; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_miv_subscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_miv_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@dependence_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(analyze_miv_subscript \0A\00", align 1
@integer_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i64 0, align 8
@chrec_known = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"analyze_miv_subscript test failed: unimplemented.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, i64*, i64*)* @analyze_miv_subscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_miv_subscript(i64 %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 1, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 3), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 3), align 4
  %15 = load i64, i64* @dump_file, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32, i32* @dump_flags, align 4
  %19 = load i32, i32* @TDF_DETAILS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* @dump_file, align 8
  %24 = call i32 @fprintf(i64 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17, %5
  %26 = load i32, i32* @integer_type_node, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @NULL_TREE, align 4
  %29 = call i64 @chrec_convert(i32 %26, i64 %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* @integer_type_node, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @NULL_TREE, align 4
  %33 = call i64 @chrec_convert(i32 %30, i64 %31, i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* @integer_type_node, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @chrec_fold_minus(i32 %34, i64 %35, i64 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @eq_evolutions_p(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %25
  %43 = load i64, i64* @integer_zero_node, align 8
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* @integer_zero_node, align 8
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @CHREC_VARIABLE(i64 %47)
  %49 = call i64 @get_number_of_iters_for_loop(i32 %48)
  %50 = load i64*, i64** %10, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  br label %149

53:                                               ; preds = %25
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @evolution_function_is_constant_p(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @chrec_steps_divide_constant_p(i64 %58, i64 %59, i32* %11)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @chrec_known, align 8
  %67 = load i64*, i64** %8, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @chrec_known, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* @integer_zero_node, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  br label %148

74:                                               ; preds = %62, %57, %53
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @evolution_function_is_affine_multivariate_p(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %127

78:                                               ; preds = %74
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @chrec_contains_symbols(i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %127, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @evolution_function_is_affine_multivariate_p(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %127

86:                                               ; preds = %82
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @chrec_contains_symbols(i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %127, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = call i32 @analyze_subscript_affine_affine(i64 %91, i64 %92, i64* %93, i64* %94, i64* %95)
  %97 = load i64*, i64** %8, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @chrec_dont_know, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %90
  %102 = load i64*, i64** %9, align 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @chrec_dont_know, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101, %90
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %126

109:                                              ; preds = %101
  %110 = load i64*, i64** %8, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @chrec_known, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i64*, i64** %9, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @chrec_known, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %109
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  br label %125

122:                                              ; preds = %114
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %106
  br label %147

127:                                              ; preds = %86, %82, %78, %74
  %128 = load i64, i64* @dump_file, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32, i32* @dump_flags, align 4
  %132 = load i32, i32* @TDF_DETAILS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i64, i64* @dump_file, align 8
  %137 = call i32 @fprintf(i64 %136, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %130, %127
  %139 = load i64, i64* @chrec_dont_know, align 8
  %140 = load i64*, i64** %8, align 8
  store i64 %139, i64* %140, align 8
  %141 = load i64, i64* @chrec_dont_know, align 8
  %142 = load i64*, i64** %9, align 8
  store i64 %141, i64* %142, align 8
  %143 = load i64, i64* @chrec_dont_know, align 8
  %144 = load i64*, i64** %10, align 8
  store i64 %143, i64* %144, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %147

147:                                              ; preds = %138, %126
  br label %148

148:                                              ; preds = %147, %65
  br label %149

149:                                              ; preds = %148, %42
  %150 = load i64, i64* @dump_file, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32, i32* @dump_flags, align 4
  %154 = load i32, i32* @TDF_DETAILS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i64, i64* @dump_file, align 8
  %159 = call i32 @fprintf(i64 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %152, %149
  ret void
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i64 @chrec_convert(i32, i64, i32) #1

declare dso_local i64 @chrec_fold_minus(i32, i64, i64) #1

declare dso_local i64 @eq_evolutions_p(i64, i64) #1

declare dso_local i64 @get_number_of_iters_for_loop(i32) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

declare dso_local i64 @evolution_function_is_constant_p(i64) #1

declare dso_local i64 @chrec_steps_divide_constant_p(i64, i64, i32*) #1

declare dso_local i64 @evolution_function_is_affine_multivariate_p(i64) #1

declare dso_local i32 @chrec_contains_symbols(i64) #1

declare dso_local i32 @analyze_subscript_affine_affine(i64, i64, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
