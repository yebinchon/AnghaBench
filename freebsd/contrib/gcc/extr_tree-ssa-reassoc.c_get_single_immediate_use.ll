; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_get_single_immediate_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_get_single_immediate_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@RETURN_EXPR = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_single_immediate_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_single_immediate_use(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @SSA_NAME, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @single_imm_use(i32 %11, i32* %4, i32* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @RETURN_EXPR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 0)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @MODIFY_EXPR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %10, %1
  %31 = load i32, i32* @NULL_TREE, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @single_imm_use(i32, i32*, i32*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
