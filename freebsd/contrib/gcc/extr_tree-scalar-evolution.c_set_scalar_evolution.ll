; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_set_scalar_evolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_set_scalar_evolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"(set_scalar_evolution \0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  (scalar = \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c")\0A  (scalar_evolution = \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@TDF_STATS = common dso_local global i32 0, align 4
@nb_set_scev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_scalar_evolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_scalar_evolution(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @SSA_NAME, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32* @find_var_scev_info(i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i64, i64* @dump_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %11
  %17 = load i32, i32* @dump_flags, align 4
  %18 = load i32, i32* @TDF_DETAILS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i64, i64* @dump_file, align 8
  %23 = call i32 @fprintf(i64 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* @dump_file, align 8
  %25 = call i32 @fprintf(i64 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @dump_file, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @print_generic_expr(i64 %26, i32 %27, i32 0)
  %29 = load i64, i64* @dump_file, align 8
  %30 = call i32 @fprintf(i64 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* @dump_file, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @print_generic_expr(i64 %31, i32 %32, i32 0)
  %34 = load i64, i64* @dump_file, align 8
  %35 = call i32 @fprintf(i64 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %21, %16
  %37 = load i32, i32* @dump_flags, align 4
  %38 = load i32, i32* @TDF_STATS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @nb_set_scev, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @nb_set_scev, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %44, %11
  %46 = load i32, i32* %4, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %10
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32* @find_var_scev_info(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
