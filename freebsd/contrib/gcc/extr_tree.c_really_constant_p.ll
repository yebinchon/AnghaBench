; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_really_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_really_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@NON_LVALUE_EXPR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @really_constant_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %20, %1
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @NOP_EXPR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @CONVERT_EXPR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %13, %8, %3
  %19 = phi i1 [ true, %8 ], [ true, %3 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 0)
  store i32 %22, i32* %2, align 4
  br label %3

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @TREE_CONSTANT(i32 %24)
  ret i32 %25
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_CONSTANT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
