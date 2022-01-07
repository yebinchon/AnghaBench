; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_get_scalar_evolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_get_scalar_evolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"(get_scalar_evolution \0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  (scalar = \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@TDF_STATS = common dso_local global i32 0, align 4
@nb_get_scev = common dso_local global i32 0, align 4
@chrec_not_analyzed_yet = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"  (scalar_evolution = \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_scalar_evolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scalar_evolution(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @dump_file, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = load i32, i32* @dump_flags, align 4
  %8 = load i32, i32* @TDF_DETAILS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load i64, i64* @dump_file, align 8
  %13 = call i32 @fprintf(i64 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @dump_file, align 8
  %15 = call i32 @fprintf(i64 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* @dump_file, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @print_generic_expr(i64 %16, i32 %17, i32 0)
  %19 = load i64, i64* @dump_file, align 8
  %20 = call i32 @fprintf(i64 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %11, %6
  %22 = load i32, i32* @dump_flags, align 4
  %23 = load i32, i32* @TDF_STATS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @nb_get_scev, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @nb_get_scev, align 4
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @TREE_CODE(i32 %31)
  switch i32 %32, label %39 [
    i32 128, label %33
    i32 129, label %37
    i32 130, label %37
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = call i32* @find_var_scev_info(i32 %34)
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %30, %30
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @chrec_not_analyzed_yet, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37, %33
  %42 = load i64, i64* @dump_file, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i32, i32* @dump_flags, align 4
  %46 = load i32, i32* @TDF_DETAILS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i64, i64* @dump_file, align 8
  %51 = call i32 @fprintf(i64 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i64, i64* @dump_file, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @print_generic_expr(i64 %52, i32 %53, i32 0)
  %55 = load i64, i64* @dump_file, align 8
  %56 = call i32 @fprintf(i64 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %49, %44, %41
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32* @find_var_scev_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
