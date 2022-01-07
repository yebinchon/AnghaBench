; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_break_up_subtract_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_break_up_subtract_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@flag_unsafe_math_optimizations = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i64 0, align 8
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @break_up_subtract_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_up_subtract_bb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @bsi_start(i64 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @bsi_end_p(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %68

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @bsi_stmt(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @MODIFY_EXPR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TREE_OPERAND(i32 %24, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 1)
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @TREE_TYPE(i32 %28)
  %30 = call i32 @INTEGRAL_TYPE_P(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @TREE_TYPE(i32 %33)
  %35 = call i32 @INTEGRAL_TYPE_P(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %32, %23
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  %40 = call i32 @SCALAR_FLOAT_TYPE_P(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @TREE_TYPE(i32 %43)
  %45 = call i32 @SCALAR_FLOAT_TYPE_P(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %42, %37
  br label %66

51:                                               ; preds = %47, %32
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @TREE_CODE(i32 %52)
  %54 = load i64, i64* @MINUS_EXPR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @should_break_up_subtract(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @break_up_subtract(i32 %61, i32* %3)
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %16
  br label %66

66:                                               ; preds = %65, %50
  %67 = call i32 @bsi_next(i32* %3)
  br label %11

68:                                               ; preds = %11
  %69 = load i32, i32* @CDI_DOMINATORS, align 4
  %70 = load i64, i64* %2, align 8
  %71 = call i64 @first_dom_son(i32 %69, i64 %70)
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %77, %68
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i64, i64* %4, align 8
  call void @break_up_subtract_bb(i64 %76)
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* @CDI_DOMINATORS, align 4
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @next_dom_son(i32 %78, i64 %79)
  store i64 %80, i64* %4, align 8
  br label %72

81:                                               ; preds = %72
  ret void
}

declare dso_local i32 @bsi_start(i64) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @SCALAR_FLOAT_TYPE_P(i32) #1

declare dso_local i64 @should_break_up_subtract(i32) #1

declare dso_local i32 @break_up_subtract(i32, i32*) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i64 @first_dom_son(i32, i64) #1

declare dso_local i64 @next_dom_son(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
