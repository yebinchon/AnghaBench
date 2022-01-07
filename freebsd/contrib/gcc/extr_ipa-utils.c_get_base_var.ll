; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-utils.c_get_base_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-utils.c_get_base_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXC_PTR_EXPR = common dso_local global i64 0, align 8
@FILTER_EXPR = common dso_local global i64 0, align 8
@LABEL_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_base_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @EXC_PTR_EXPR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @FILTER_EXPR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %1
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @SSA_VAR_P(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CONSTANT_CLASS_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @LABEL_DECL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @FUNCTION_DECL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @TREE_CODE(i32 %35)
  %37 = load i64, i64* @CONST_DECL, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %34, %29, %24, %20, %16
  %40 = phi i1 [ false, %29 ], [ false, %24 ], [ false, %20 ], [ false, %16 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @TREE_OPERAND(i32 %42, i32 0)
  store i32 %43, i32* %3, align 4
  br label %16

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_VAR_P(i32) #1

declare dso_local i32 @CONSTANT_CLASS_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
