; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_node_can_be_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_node_can_be_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@CASE_LABEL_EXPR = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@ARRAY_RANGE_REF = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@REALPART_EXPR = common dso_local global i64 0, align 8
@IMAGPART_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @tree_node_can_be_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_node_can_be_shared(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @IS_TYPE_OR_DECL_P(i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @is_gimple_min_invariant(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @SSA_NAME, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @error_mark_node, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @IDENTIFIER_NODE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %16, %11, %7, %1
  store i32 1, i32* %2, align 4
  br label %74

26:                                               ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @CASE_LABEL_EXPR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %74

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @ARRAY_REF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @ARRAY_RANGE_REF, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38, %33
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @TREE_OPERAND(i64 %44, i32 1)
  %46 = call i64 @is_gimple_min_invariant(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43, %38
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @COMPONENT_REF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @TREE_CODE(i64 %54)
  %56 = load i64, i64* @REALPART_EXPR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %3, align 8
  %60 = call i64 @TREE_CODE(i64 %59)
  %61 = load i64, i64* @IMAGPART_EXPR, align 8
  %62 = icmp eq i64 %60, %61
  br label %63

63:                                               ; preds = %58, %53, %48, %43
  %64 = phi i1 [ true, %53 ], [ true, %48 ], [ true, %43 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i64, i64* %3, align 8
  %67 = call i64 @TREE_OPERAND(i64 %66, i32 0)
  store i64 %67, i64* %3, align 8
  br label %33

68:                                               ; preds = %63
  %69 = load i64, i64* %3, align 8
  %70 = call i64 @DECL_P(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, i32* %2, align 4
  br label %74

73:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %72, %31, %25
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @IS_TYPE_OR_DECL_P(i64) #1

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @DECL_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
