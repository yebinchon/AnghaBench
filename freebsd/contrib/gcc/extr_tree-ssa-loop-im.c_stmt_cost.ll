; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_stmt_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_stmt_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXPR = common dso_local global i32 0, align 4
@LIM_EXPENSIVE = common dso_local global i32 0, align 4
@BUILT_IN_NORMAL = common dso_local global i32 0, align 4
@BUILT_IN_CONSTANT_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stmt_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmt_cost(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  %8 = load i32, i32* @COND_EXPR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @LIM_EXPENSIVE, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_OPERAND(i32 %13, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @stmt_references_memory_p(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, 20
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @TREE_CODE(i32 %22)
  switch i32 %23, label %43 [
    i32 139, label %24
    i32 133, label %40
    i32 129, label %40
    i32 138, label %40
    i32 135, label %40
    i32 131, label %40
    i32 136, label %40
    i32 137, label %40
    i32 134, label %40
    i32 130, label %40
    i32 128, label %40
    i32 132, label %40
  ]

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @get_callee_fndecl(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @DECL_BUILT_IN_CLASS(i32 %27)
  %29 = load i32, i32* @BUILT_IN_NORMAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DECL_FUNCTION_CODE(i32 %32)
  %34 = load i32, i32* @BUILT_IN_CONSTANT_P, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %46

37:                                               ; preds = %31, %24
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 20
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 20
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %40, %37
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %36, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @stmt_references_memory_p(i32) #1

declare dso_local i32 @get_callee_fndecl(i32) #1

declare dso_local i32 @DECL_BUILT_IN_CLASS(i32) #1

declare dso_local i32 @DECL_FUNCTION_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
