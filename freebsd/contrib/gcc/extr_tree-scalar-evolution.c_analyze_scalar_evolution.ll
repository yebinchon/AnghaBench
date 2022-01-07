; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_scalar_evolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_scalar_evolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"(analyze_scalar_evolution \0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  (loop_nb = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"  (scalar = \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@SSA_NAME = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @analyze_scalar_evolution(%struct.loop* %0, i64 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @dump_file, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load i32, i32* @dump_flags, align 4
  %10 = load i32, i32* @TDF_DETAILS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load i64, i64* @dump_file, align 8
  %15 = call i32 (i64, i8*, ...) @fprintf(i64 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @dump_file, align 8
  %17 = load %struct.loop*, %struct.loop** %3, align 8
  %18 = getelementptr inbounds %struct.loop, %struct.loop* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i64, i8*, ...) @fprintf(i64 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @dump_file, align 8
  %22 = call i32 (i64, i8*, ...) @fprintf(i64 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i64, i64* @dump_file, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @print_generic_expr(i64 %23, i64 %24, i32 0)
  %26 = load i64, i64* @dump_file, align 8
  %27 = call i32 (i64, i8*, ...) @fprintf(i64 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %13, %8, %2
  %29 = load %struct.loop*, %struct.loop** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @get_scalar_evolution(i64 %31)
  %33 = call i64 @analyze_scalar_evolution_1(%struct.loop* %29, i64 %30, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @SSA_NAME, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @chrec_dont_know, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %38, %28
  %45 = load i64, i64* @dump_file, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* @dump_flags, align 4
  %49 = load i32, i32* @TDF_DETAILS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* @dump_file, align 8
  %54 = call i32 (i64, i8*, ...) @fprintf(i64 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47, %44
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i64 @analyze_scalar_evolution_1(%struct.loop*, i64, i32) #1

declare dso_local i32 @get_scalar_evolution(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
