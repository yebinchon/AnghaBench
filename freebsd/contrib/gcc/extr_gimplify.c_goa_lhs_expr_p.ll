; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_goa_lhs_expr_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_goa_lhs_expr_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@NON_LVALUE_EXPR = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @goa_lhs_expr_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goa_lhs_expr_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  br label %6

6:                                                ; preds = %37, %2
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @NOP_EXPR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @CONVERT_EXPR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %16, %11, %6
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @TREE_OPERAND(i64 %22, i32 0)
  %24 = load i64, i64* @error_mark_node, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @TREE_TYPE(i64 %27)
  %29 = call i64 @TYPE_MAIN_VARIANT(i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TREE_OPERAND(i64 %30, i32 0)
  %32 = call i32 @TREE_TYPE(i64 %31)
  %33 = call i64 @TYPE_MAIN_VARIANT(i32 %32)
  %34 = icmp eq i64 %29, %33
  br label %35

35:                                               ; preds = %26, %21, %16
  %36 = phi i1 [ false, %21 ], [ false, %16 ], [ %34, %26 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @TREE_OPERAND(i64 %38, i32 0)
  store i64 %39, i64* %4, align 8
  br label %6

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @INDIRECT_REF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 0)
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %63

51:                                               ; preds = %45, %40
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @TREE_CODE(i64 %52)
  %54 = load i64, i64* @ADDR_EXPR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @TREE_OPERAND(i64 %58, i32 0)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %63

62:                                               ; preds = %56, %51
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %50
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
