; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_ziv_subscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_ziv_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@dependence_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(analyze_ziv_subscript \0A\00", align 1
@integer_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@chrec_dont_know = common dso_local global i32 0, align 4
@chrec_known = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ziv test failed: difference is non-integer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32*)* @analyze_ziv_subscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_ziv_subscript(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 3), align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 3), align 4
  %14 = load i64, i64* @dump_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* @dump_flags, align 4
  %18 = load i32, i32* @TDF_DETAILS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* @dump_file, align 8
  %23 = call i32 @fprintf(i64 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16, %5
  %25 = load i32, i32* @integer_type_node, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = call i32 @chrec_convert(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @integer_type_node, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @NULL_TREE, align 4
  %32 = call i32 @chrec_convert(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @integer_type_node, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @chrec_fold_minus(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @TREE_CODE(i32 %37)
  switch i32 %38, label %62 [
    i32 128, label %39
  ]

39:                                               ; preds = %24
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @integer_zerop(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* @integer_zero_node, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @integer_zero_node, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @chrec_dont_know, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 2), align 4
  br label %61

52:                                               ; preds = %39
  %53 = load i32, i32* @chrec_known, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @chrec_known, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @integer_zero_node, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 1), align 4
  br label %61

61:                                               ; preds = %52, %43
  br label %82

62:                                               ; preds = %24
  %63 = load i64, i64* @dump_file, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* @dump_flags, align 4
  %67 = load i32, i32* @TDF_DETAILS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* @dump_file, align 8
  %72 = call i32 @fprintf(i64 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %65, %62
  %74 = load i32, i32* @chrec_dont_know, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @chrec_dont_know, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @chrec_dont_know, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dependence_stats, i32 0, i32 0), align 4
  br label %82

82:                                               ; preds = %73, %61
  %83 = load i64, i64* @dump_file, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* @dump_flags, align 4
  %87 = load i32, i32* @TDF_DETAILS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i64, i64* @dump_file, align 8
  %92 = call i32 @fprintf(i64 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %85, %82
  ret void
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @chrec_convert(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_minus(i32, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @integer_zerop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
