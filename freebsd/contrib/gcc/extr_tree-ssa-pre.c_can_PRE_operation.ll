; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_can_PRE_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-pre.c_can_PRE_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INDIRECT_REF = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @can_PRE_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_PRE_operation(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @UNARY_CLASS_P(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @BINARY_CLASS_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @COMPARISON_CLASS_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @INDIRECT_REF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @COMPONENT_REF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @CALL_EXPR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @ARRAY_REF, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %29, %24, %19, %14, %10, %6, %1
  %35 = phi i1 [ true, %24 ], [ true, %19 ], [ true, %14 ], [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i64 @UNARY_CLASS_P(i32) #1

declare dso_local i64 @BINARY_CLASS_P(i32) #1

declare dso_local i64 @COMPARISON_CLASS_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
