; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_gather_chrec_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_gather_chrec_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chrec_stats = type { i32, i32, i32, i32, i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"(classify_chrec \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"  affine_univariate\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"  affine_multivariate\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  higher_degree_polynomial\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"  undetermined\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.chrec_stats*)* @gather_chrec_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_chrec_stats(i64 %0, %struct.chrec_stats* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.chrec_stats*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.chrec_stats* %1, %struct.chrec_stats** %4, align 8
  %5 = load i64, i64* @dump_file, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, i32* @dump_flags, align 4
  %9 = load i32, i32* @TDF_STATS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i64, i64* @dump_file, align 8
  %14 = call i32 @fprintf(i64 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @dump_file, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @print_generic_expr(i64 %15, i64 %16, i32 0)
  %18 = load i64, i64* @dump_file, align 8
  %19 = call i32 @fprintf(i64 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %12, %7, %2
  %21 = load %struct.chrec_stats*, %struct.chrec_stats** %4, align 8
  %22 = getelementptr inbounds %struct.chrec_stats, %struct.chrec_stats* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @NULL_TREE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.chrec_stats*, %struct.chrec_stats** %4, align 8
  %30 = getelementptr inbounds %struct.chrec_stats, %struct.chrec_stats* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %126

33:                                               ; preds = %20
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @TREE_CODE(i64 %34)
  switch i32 %35, label %94 [
    i32 128, label %36
  ]

36:                                               ; preds = %33
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @evolution_function_is_affine_p(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i64, i64* @dump_file, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* @dump_flags, align 4
  %45 = load i32, i32* @TDF_STATS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, i64* @dump_file, align 8
  %50 = call i32 @fprintf(i64 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43, %40
  %52 = load %struct.chrec_stats*, %struct.chrec_stats** %4, align 8
  %53 = getelementptr inbounds %struct.chrec_stats, %struct.chrec_stats* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %93

56:                                               ; preds = %36
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @evolution_function_is_affine_multivariate_p(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i64, i64* @dump_file, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* @dump_flags, align 4
  %65 = load i32, i32* @TDF_STATS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i64, i64* @dump_file, align 8
  %70 = call i32 @fprintf(i64 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63, %60
  %72 = load %struct.chrec_stats*, %struct.chrec_stats** %4, align 8
  %73 = getelementptr inbounds %struct.chrec_stats, %struct.chrec_stats* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %92

76:                                               ; preds = %56
  %77 = load i64, i64* @dump_file, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, i32* @dump_flags, align 4
  %81 = load i32, i32* @TDF_STATS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* @dump_file, align 8
  %86 = call i32 @fprintf(i64 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79, %76
  %88 = load %struct.chrec_stats*, %struct.chrec_stats** %4, align 8
  %89 = getelementptr inbounds %struct.chrec_stats, %struct.chrec_stats* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %71
  br label %93

93:                                               ; preds = %92, %51
  br label %95

94:                                               ; preds = %33
  br label %95

95:                                               ; preds = %94, %93
  %96 = load i64, i64* %3, align 8
  %97 = call i64 @chrec_contains_undetermined(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i64, i64* @dump_file, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* @dump_flags, align 4
  %104 = load i32, i32* @TDF_STATS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, i64* @dump_file, align 8
  %109 = call i32 @fprintf(i64 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102, %99
  %111 = load %struct.chrec_stats*, %struct.chrec_stats** %4, align 8
  %112 = getelementptr inbounds %struct.chrec_stats, %struct.chrec_stats* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %110, %95
  %116 = load i64, i64* @dump_file, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load i32, i32* @dump_flags, align 4
  %120 = load i32, i32* @TDF_STATS, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i64, i64* @dump_file, align 8
  %125 = call i32 @fprintf(i64 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %28, %123, %118, %115
  ret void
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @evolution_function_is_affine_p(i64) #1

declare dso_local i32 @evolution_function_is_affine_multivariate_p(i64) #1

declare dso_local i64 @chrec_contains_undetermined(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
