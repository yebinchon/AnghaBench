; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_component_ref_for_mem_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_component_ref_for_mem_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPONENT_REF = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@NON_LVALUE_EXPR = common dso_local global i64 0, align 8
@VIEW_CONVERT_EXPR = common dso_local global i64 0, align 8
@SAVE_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @component_ref_for_mem_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @component_ref_for_mem_expr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_OPERAND(i32 %5, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @COMPONENT_REF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @component_ref_for_mem_expr(i32 %12)
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @NOP_EXPR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @CONVERT_EXPR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @TREE_CODE(i32 %26)
  %28 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @VIEW_CONVERT_EXPR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i64, i64* @SAVE_EXPR, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %35, %30, %25, %20, %15
  %41 = phi i1 [ true, %30 ], [ true, %25 ], [ true, %20 ], [ true, %15 ], [ %39, %35 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @TREE_OPERAND(i32 %43, i32 0)
  store i32 %44, i32* %4, align 4
  br label %15

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DECL_P(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @NULL_TREE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %11
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @TREE_OPERAND(i32 %54, i32 0)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  store i32 %58, i32* %2, align 4
  br label %68

59:                                               ; preds = %52
  %60 = load i64, i64* @COMPONENT_REF, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @TREE_TYPE(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 1)
  %66 = load i32, i32* @NULL_TREE, align 4
  %67 = call i32 @build3(i64 %60, i32 %62, i32 %63, i32 %65, i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %57
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_P(i32) #1

declare dso_local i32 @build3(i64, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
