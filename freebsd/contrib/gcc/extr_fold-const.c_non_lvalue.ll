; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_non_lvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_non_lvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_gimple_form = common dso_local global i64 0, align 8
@NON_LVALUE_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @non_lvalue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @in_gimple_form, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @maybe_lvalue_p(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %8
  %15 = load i32, i32* @NON_LVALUE_EXPR, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @build1(i32 %15, i32 %17, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %12, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @maybe_lvalue_p(i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
