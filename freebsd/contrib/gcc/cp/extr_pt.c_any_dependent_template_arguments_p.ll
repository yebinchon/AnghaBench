; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_any_dependent_template_arguments_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_any_dependent_template_arguments_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @any_dependent_template_arguments_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @error_mark_node, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %47

15:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %43, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @TMPL_ARGS_DEPTH(i64 %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i64 @TMPL_ARGS_LEVEL(i64 %22, i32 %24)
  store i64 %25, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %39, %21
  %27 = load i32, i32* %5, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @TREE_VEC_LENGTH(i64 %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @TREE_VEC_ELT(i64 %32, i32 %33)
  %35 = call i64 @dependent_template_arg_p(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %47

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %26

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %16

46:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %37, %14, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @TMPL_ARGS_DEPTH(i64) #1

declare dso_local i64 @TMPL_ARGS_LEVEL(i64, i32) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i64 @dependent_template_arg_p(i32) #1

declare dso_local i32 @TREE_VEC_ELT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
