; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_valid_value_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_valid_value_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @valid_value_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_value_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @SSA_NAME, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @PLUS_EXPR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @MINUS_EXPR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14, %9
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 0)
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @SSA_NAME, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 1)
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @INTEGER_CST, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ false, %19 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %14
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @is_gimple_min_invariant(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %31, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @is_gimple_min_invariant(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
