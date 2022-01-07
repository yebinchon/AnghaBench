; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_stmt_interesting_for_vrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_stmt_interesting_for_vrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHI_NODE = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@SSA_OP_ALL_VIRTUALS = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i64 0, align 8
@SWITCH_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stmt_interesting_for_vrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmt_interesting_for_vrp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @PHI_NODE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @PHI_RESULT(i32 %11)
  %13 = call i64 @is_gimple_reg(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @PHI_RESULT(i32 %16)
  %18 = call i32 @TREE_TYPE(i32 %17)
  %19 = call i64 @INTEGRAL_TYPE_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @PHI_RESULT(i32 %22)
  %24 = call i32 @TREE_TYPE(i32 %23)
  %25 = call i64 @POINTER_TYPE_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15
  store i32 1, i32* %2, align 4
  br label %96

28:                                               ; preds = %21, %10, %1
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @MODIFY_EXPR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TREE_OPERAND(i32 %34, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @TREE_OPERAND(i32 %36, i32 1)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @TREE_CODE(i32 %38)
  %40 = load i64, i64* @SSA_NAME, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @TREE_TYPE(i32 %43)
  %45 = call i64 @INTEGRAL_TYPE_P(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @TREE_TYPE(i32 %48)
  %50 = call i64 @POINTER_TYPE_P(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @TREE_CODE(i32 %53)
  %55 = load i64, i64* @CALL_EXPR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @TREE_OPERAND(i32 %58, i32 0)
  %60 = call i64 @TREE_CODE(i32 %59)
  %61 = load i64, i64* @ADDR_EXPR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 0)
  %66 = call i32 @TREE_OPERAND(i32 %65, i32 0)
  %67 = call i64 @DECL_P(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @TREE_OPERAND(i32 %70, i32 0)
  %72 = call i32 @TREE_OPERAND(i32 %71, i32 0)
  %73 = call i64 @DECL_IS_BUILTIN(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69, %63, %57, %52
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @SSA_OP_ALL_VIRTUALS, align 4
  %78 = call i64 @ZERO_SSA_OPERANDS(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %69
  store i32 1, i32* %2, align 4
  br label %96

81:                                               ; preds = %75, %47, %33
  br label %94

82:                                               ; preds = %28
  %83 = load i32, i32* %3, align 4
  %84 = call i64 @TREE_CODE(i32 %83)
  %85 = load i64, i64* @COND_EXPR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %3, align 4
  %89 = call i64 @TREE_CODE(i32 %88)
  %90 = load i64, i64* @SWITCH_EXPR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %82
  store i32 1, i32* %2, align 4
  br label %96

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %81
  br label %95

95:                                               ; preds = %94
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %92, %80, %27
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @is_gimple_reg(i32) #1

declare dso_local i32 @PHI_RESULT(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i64 @DECL_IS_BUILTIN(i32) #1

declare dso_local i64 @ZERO_SSA_OPERANDS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
