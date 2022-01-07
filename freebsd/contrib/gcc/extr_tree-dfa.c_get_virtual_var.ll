; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_get_virtual_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_get_virtual_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@REALPART_EXPR = common dso_local global i64 0, align 8
@IMAGPART_EXPR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_virtual_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @STRIP_NOPS(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @SSA_NAME, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @SSA_NAME_VAR(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %1
  br label %13

13:                                               ; preds = %29, %12
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @REALPART_EXPR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @IMAGPART_EXPR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @handled_component_p(i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %18, %13
  %28 = phi i1 [ true, %18 ], [ true, %13 ], [ %26, %23 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @TREE_OPERAND(i32 %30, i32 0)
  store i32 %31, i32* %2, align 4
  br label %13

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @SSA_VAR_P(i32 %33)
  %35 = call i32 @gcc_assert(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @is_gimple_reg(i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @gcc_assert(i32 %40)
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i64 @handled_component_p(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SSA_VAR_P(i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
