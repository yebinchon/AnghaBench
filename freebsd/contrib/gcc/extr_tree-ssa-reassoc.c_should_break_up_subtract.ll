; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_should_break_up_subtract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_should_break_up_subtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @should_break_up_subtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_break_up_subtract(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_OPERAND(i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TREE_OPERAND(i32 %11, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @TREE_OPERAND(i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TREE_OPERAND(i32 %15, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @TREE_CODE(i32 %17)
  %19 = load i64, i64* @SSA_NAME, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SSA_NAME_DEF_STMT(i32 %22)
  %24 = load i64, i64* @PLUS_EXPR, align 8
  %25 = call i64 @is_reassociable_op(i32 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %57

28:                                               ; preds = %21, %1
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @SSA_NAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @SSA_NAME_DEF_STMT(i32 %34)
  %36 = load i64, i64* @PLUS_EXPR, align 8
  %37 = call i64 @is_reassociable_op(i32 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %57

40:                                               ; preds = %33, %28
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @TREE_CODE(i32 %41)
  %43 = load i64, i64* @SSA_NAME, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @get_single_immediate_use(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @TREE_OPERAND(i32 %50, i32 1)
  %52 = call i64 @TREE_CODE(i32 %51)
  %53 = load i64, i64* @PLUS_EXPR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %57

56:                                               ; preds = %49, %45, %40
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %39, %27
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @is_reassociable_op(i32, i64) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i32 @get_single_immediate_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
