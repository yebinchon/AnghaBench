; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_convert_for_arg_passing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_convert_for_arg_passing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i64)* }

@error_mark_node = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@integer_type_node = common dso_local global i64 0, align 8
@warn_missing_format_attribute = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i32 0, align 4
@OPT_Wmissing_format_attribute = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"argument of function call might be a candidate for a format attribute\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_for_arg_passing(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @is_bitfield_expr_with_lowered_type(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  %16 = call i64 @TYPE_PRECISION(i64 %15)
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @TYPE_PRECISION(i64 %17)
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @TYPE_MAIN_VARIANT(i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @convert_to_integer(i32 %22, i64 %23)
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %20, %13, %2
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @error_mark_node, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %65

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @TREE_ADDRESSABLE(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @ADDR_EXPR, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @build_reference_type(i64 %36)
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @build1(i32 %35, i32 %37, i64 %38)
  store i64 %39, i64* %4, align 8
  br label %64

40:                                               ; preds = %30
  %41 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i64 %41(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @INTEGRAL_TYPE_P(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @COMPLETE_TYPE_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @TYPE_SIZE(i64 %54)
  %56 = load i64, i64* @integer_type_node, align 8
  %57 = call i32 @TYPE_SIZE(i64 %56)
  %58 = call i64 @INT_CST_LT_UNSIGNED(i32 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @perform_integral_promotions(i64 %61)
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %60, %53, %49, %45, %40
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64, %29
  %66 = load i64, i64* @warn_missing_format_attribute, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @TREE_TYPE(i64 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @TREE_CODE(i64 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @TREE_CODE(i64 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @POINTER_TYPE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @REFERENCE_TYPE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78, %68
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @check_missing_format_attribute(i64 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @OPT_Wmissing_format_attribute, align 4
  %93 = call i32 @warning(i32 %92, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %86, %82, %78
  br label %95

95:                                               ; preds = %94, %65
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local i64 @is_bitfield_expr_with_lowered_type(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @convert_to_integer(i32, i64) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TREE_ADDRESSABLE(i64) #1

declare dso_local i64 @build1(i32, i32, i64) #1

declare dso_local i32 @build_reference_type(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @COMPLETE_TYPE_P(i64) #1

declare dso_local i64 @INT_CST_LT_UNSIGNED(i32, i32) #1

declare dso_local i32 @TYPE_SIZE(i64) #1

declare dso_local i64 @perform_integral_promotions(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @check_missing_format_attribute(i64, i64) #1

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
