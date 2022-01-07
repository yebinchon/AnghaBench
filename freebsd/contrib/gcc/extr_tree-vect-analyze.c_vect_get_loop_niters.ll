; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-analyze.c_vect_get_loop_niters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-analyze.c_vect_get_loop_niters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"=== get_loop_niters ===\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"==> get_loop_niters:\00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, i64*)* @vect_get_loop_niters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vect_get_loop_niters(%struct.loop* %0, i64* %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i32, i32* @REPORT_DETAILS, align 4
  %7 = call i64 @vect_print_dump_info(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @vect_dump, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.loop*, %struct.loop** %3, align 8
  %14 = call i64 @number_of_iterations_in_loop(%struct.loop* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @NULL_TREE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @chrec_dont_know, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64*, i64** %4, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* @REPORT_DETAILS, align 4
  %26 = call i64 @vect_print_dump_info(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @vect_dump, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @vect_dump, align 4
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @TDF_SLIM, align 4
  %35 = call i32 @print_generic_expr(i32 %31, i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %22
  br label %37

37:                                               ; preds = %36, %18, %12
  %38 = load %struct.loop*, %struct.loop** %3, align 8
  %39 = call i64 @get_loop_exit_condition(%struct.loop* %38)
  ret i64 %39
}

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @number_of_iterations_in_loop(%struct.loop*) #1

declare dso_local i32 @print_generic_expr(i32, i64, i32) #1

declare dso_local i64 @get_loop_exit_condition(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
