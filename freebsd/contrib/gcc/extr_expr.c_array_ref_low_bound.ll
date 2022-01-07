; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_array_ref_low_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_array_ref_low_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @array_ref_low_bound(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @TREE_OPERAND(i64 %5, i32 0)
  %7 = call i32 @TREE_TYPE(i64 %6)
  %8 = call i64 @TYPE_DOMAIN(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_OPERAND(i64 %9, i32 2)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @TREE_OPERAND(i64 %13, i32 2)
  store i64 %14, i64* %2, align 8
  br label %32

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TYPE_MIN_VALUE(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @TYPE_MIN_VALUE(i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64 %24, i64 %25)
  store i64 %26, i64* %2, align 8
  br label %32

27:                                               ; preds = %18, %15
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @TREE_OPERAND(i64 %28, i32 1)
  %30 = call i32 @TREE_TYPE(i64 %29)
  %31 = call i64 @build_int_cst(i32 %30, i32 0)
  store i64 %31, i64* %2, align 8
  br label %32

32:                                               ; preds = %27, %22, %12
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

declare dso_local i64 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @SUBSTITUTE_PLACEHOLDER_IN_EXPR(i64, i64) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
