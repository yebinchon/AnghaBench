; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_perform_integral_promotions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_perform_integral_promotions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENUMERAL_TYPE = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@unsigned_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_integral_promotions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TREE_TYPE(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TREE_CODE(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @INTEGRAL_TYPE_P(i32 %10)
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ENUMERAL_TYPE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @TYPE_PRECISION(i32 %17)
  %19 = load i32, i32* @integer_type_node, align 4
  %20 = call i64 @TYPE_PRECISION(i32 %19)
  %21 = call i32 @MAX(i64 %18, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @TYPE_PRECISION(i32 %22)
  %24 = load i32, i32* @integer_type_node, align 4
  %25 = call i64 @TYPE_PRECISION(i32 %24)
  %26 = icmp sge i64 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @TYPE_UNSIGNED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %16
  %32 = phi i1 [ false, %16 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @c_common_type_for_size(i32 %21, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @convert(i32 %35, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %84

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @TREE_CODE(i32 %39)
  %41 = load i32, i32* @COMPONENT_REF, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @TREE_OPERAND(i32 %44, i32 1)
  %46 = call i64 @DECL_C_BIT_FIELD(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 1)
  %51 = call i32 @DECL_SIZE(i32 %50)
  %52 = load i32, i32* @integer_type_node, align 4
  %53 = call i64 @TYPE_PRECISION(i32 %52)
  %54 = call i64 @compare_tree_int(i32 %51, i64 %53)
  %55 = icmp sgt i64 0, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @integer_type_node, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @convert(i32 %57, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %84

60:                                               ; preds = %48, %43, %38
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @c_promoting_integer_type_p(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @TYPE_UNSIGNED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @TYPE_PRECISION(i32 %69)
  %71 = load i32, i32* @integer_type_node, align 4
  %72 = call i64 @TYPE_PRECISION(i32 %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @unsigned_type_node, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @convert(i32 %75, i32 %76)
  store i32 %77, i32* %2, align 4
  br label %84

78:                                               ; preds = %68, %64
  %79 = load i32, i32* @integer_type_node, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @convert(i32 %79, i32 %80)
  store i32 %81, i32* %2, align 4
  br label %84

82:                                               ; preds = %60
  %83 = load i32, i32* %3, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %78, %74, %56, %31
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @c_common_type_for_size(i32, i32) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i64 @DECL_C_BIT_FIELD(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @compare_tree_int(i32, i64) #1

declare dso_local i32 @DECL_SIZE(i32) #1

declare dso_local i64 @c_promoting_integer_type_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
