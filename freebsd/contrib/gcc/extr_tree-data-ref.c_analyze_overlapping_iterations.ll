; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_overlapping_iterations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_overlapping_iterations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@dependence_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"(analyze_overlapping_iterations \0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"  (chrec_a = \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c")\0A  (chrec_b = \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"  (overlap_iterations_a = \00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c")\0A  (overlap_iterations_b = \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, i64*, i64*)* @analyze_overlapping_iterations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_overlapping_iterations(i64 %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %13 = load i64, i64* @dump_file, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %5
  %16 = load i32, i32* @dump_flags, align 4
  %17 = load i32, i32* @TDF_DETAILS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i64, i64* @dump_file, align 8
  %22 = call i32 @fprintf(i64 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @dump_file, align 8
  %24 = call i32 @fprintf(i64 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* @dump_file, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @print_generic_expr(i64 %25, i64 %26, i32 0)
  %28 = load i64, i64* @dump_file, align 8
  %29 = call i32 @fprintf(i64 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i64, i64* @dump_file, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @print_generic_expr(i64 %30, i64 %31, i32 0)
  %33 = load i64, i64* @dump_file, align 8
  %34 = call i32 @fprintf(i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %20, %15, %5
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @NULL_TREE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @NULL_TREE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @chrec_contains_undetermined(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @chrec_contains_undetermined(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %43, %39, %35
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %54 = load i64, i64* @chrec_dont_know, align 8
  %55 = load i64*, i64** %8, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* @chrec_dont_know, align 8
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  br label %134

58:                                               ; preds = %47
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @eq_evolutions_p(i64 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @evolution_function_is_affine_multivariate_p(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %70 = load i64, i64* @integer_zero_node, align 8
  %71 = load i64*, i64** %8, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* @integer_zero_node, align 8
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* @chrec_dont_know, align 8
  %75 = load i64*, i64** %10, align 8
  store i64 %74, i64* %75, align 8
  br label %133

76:                                               ; preds = %63, %58
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @chrec_contains_symbols(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @chrec_contains_symbols(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80, %76
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @evolution_function_is_affine_multivariate_p(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, i64* %7, align 8
  %90 = call i64 @evolution_function_is_affine_multivariate_p(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %95 = load i64, i64* @chrec_dont_know, align 8
  %96 = load i64*, i64** %8, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* @chrec_dont_know, align 8
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  br label %132

99:                                               ; preds = %88, %80
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @ziv_subscript_p(i64 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = load i64*, i64** %10, align 8
  %110 = call i32 @analyze_ziv_subscript(i64 %105, i64 %106, i64* %107, i64* %108, i64* %109)
  br label %131

111:                                              ; preds = %99
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i64 @siv_subscript_p(i64 %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i64*, i64** %8, align 8
  %120 = load i64*, i64** %9, align 8
  %121 = load i64*, i64** %10, align 8
  %122 = call i32 @analyze_siv_subscript(i64 %117, i64 %118, i64* %119, i64* %120, i64* %121)
  br label %130

123:                                              ; preds = %111
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = load i64*, i64** %9, align 8
  %128 = load i64*, i64** %10, align 8
  %129 = call i32 @analyze_miv_subscript(i64 %124, i64 %125, i64* %126, i64* %127, i64* %128)
  br label %130

130:                                              ; preds = %123, %116
  br label %131

131:                                              ; preds = %130, %104
  br label %132

132:                                              ; preds = %131, %92
  br label %133

133:                                              ; preds = %132, %67
  br label %134

134:                                              ; preds = %133, %51
  %135 = load i64, i64* @dump_file, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %134
  %138 = load i32, i32* @dump_flags, align 4
  %139 = load i32, i32* @TDF_DETAILS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %137
  %143 = load i64, i64* @dump_file, align 8
  %144 = call i32 @fprintf(i64 %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i64, i64* @dump_file, align 8
  %146 = load i64*, i64** %8, align 8
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @print_generic_expr(i64 %145, i64 %147, i32 0)
  %149 = load i64, i64* @dump_file, align 8
  %150 = call i32 @fprintf(i64 %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i64, i64* @dump_file, align 8
  %152 = load i64*, i64** %9, align 8
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @print_generic_expr(i64 %151, i64 %153, i32 0)
  %155 = load i64, i64* @dump_file, align 8
  %156 = call i32 @fprintf(i64 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %157 = load i64, i64* @dump_file, align 8
  %158 = call i32 @fprintf(i64 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %159

159:                                              ; preds = %142, %137, %134
  ret void
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i64 @chrec_contains_undetermined(i64) #1

declare dso_local i64 @eq_evolutions_p(i64, i64) #1

declare dso_local i64 @evolution_function_is_affine_multivariate_p(i64) #1

declare dso_local i64 @chrec_contains_symbols(i64) #1

declare dso_local i64 @ziv_subscript_p(i64, i64) #1

declare dso_local i32 @analyze_ziv_subscript(i64, i64, i64*, i64*, i64*) #1

declare dso_local i64 @siv_subscript_p(i64, i64) #1

declare dso_local i32 @analyze_siv_subscript(i64, i64, i64*, i64*, i64*) #1

declare dso_local i32 @analyze_miv_subscript(i64, i64, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
