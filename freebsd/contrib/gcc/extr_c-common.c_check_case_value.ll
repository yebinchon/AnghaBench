; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_check_case_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_check_case_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"case label does not reduce to an integer constant\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @check_case_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_case_value(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @NULL_TREE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %2, align 8
  br label %41

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @STRIP_TYPE_NOPS(i64 %10)
  %12 = call i64 (...) @c_dialect_cxx()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @decl_constant_value(i64 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @STRIP_TYPE_NOPS(i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @fold(i64 %19)
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %14, %9
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @INTEGER_CST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @perform_integral_promotions(i64 %27)
  store i64 %28, i64* %3, align 8
  br label %37

29:                                               ; preds = %21
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @error_mark_node, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @error_mark_node, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @constant_expression_warning(i64 %38)
  %40 = load i64, i64* %3, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %37, %7
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @STRIP_TYPE_NOPS(i64) #1

declare dso_local i64 @c_dialect_cxx(...) #1

declare dso_local i64 @decl_constant_value(i64) #1

declare dso_local i64 @fold(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @perform_integral_promotions(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @constant_expression_warning(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
