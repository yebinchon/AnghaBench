; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-propagate.c_get_rhs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-propagate.c_get_rhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WITH_SIZE_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rhs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %44 [
    i32 129, label %8
    i32 130, label %20
    i32 133, label %32
    i32 128, label %35
    i32 132, label %38
    i32 131, label %41
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_OPERAND(i32 %9, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TREE_CODE(i32 %14)
  %16 = icmp ne i32 %15, 130
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %8
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %1, %19
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 1)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TREE_CODE(i32 %23)
  %25 = load i32, i32* @WITH_SIZE_EXPR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TREE_OPERAND(i32 %28, i32 0)
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %2, align 4
  br label %46

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @COND_EXPR_COND(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @SWITCH_COND(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @GOTO_DESTINATION(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @LABEL_EXPR_LABEL(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %41, %38, %35, %32, %30, %27, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @COND_EXPR_COND(i32) #1

declare dso_local i32 @SWITCH_COND(i32) #1

declare dso_local i32 @GOTO_DESTINATION(i32) #1

declare dso_local i32 @LABEL_EXPR_LABEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
