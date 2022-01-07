; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_relational_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_relational_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@COMPARE = common dso_local global i64 0, align 8
@MODE_CC = common dso_local global i64 0, align 8
@const1_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @simplify_relational_operation(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @VOIDmode, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @GET_MODE(i64 %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @VOIDmode, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @GET_MODE(i64 %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @simplify_const_relational_operation(i32 %29, i32 %30, i64 %31, i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @SCALAR_FLOAT_MODE_P(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @const0_rtx, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @CONST0_RTX(i32 %45)
  store i64 %46, i64* %6, align 8
  br label %123

47:                                               ; preds = %40
  %48 = load i64, i64* @NULL_RTX, align 8
  store i64 %48, i64* %6, align 8
  br label %123

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @VECTOR_MODE_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @const0_rtx, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @CONST0_RTX(i32 %58)
  store i64 %59, i64* %6, align 8
  br label %123

60:                                               ; preds = %53
  %61 = load i64, i64* @NULL_RTX, align 8
  store i64 %61, i64* %6, align 8
  br label %123

62:                                               ; preds = %49
  %63 = load i64, i64* %12, align 8
  store i64 %63, i64* %6, align 8
  br label %123

64:                                               ; preds = %28
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @swap_commutative_operands_p(i64 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @const0_rtx, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @const0_rtx, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73, %64
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %11, align 8
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %11, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @swap_condition(i32 %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %77, %73, %69
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @GET_CODE(i64 %84)
  %86 = load i64, i64* @COMPARE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* @const0_rtx, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @VOIDmode, align 4
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @XEXP(i64 %96, i32 0)
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @XEXP(i64 %98, i32 1)
  %100 = call i64 @simplify_relational_operation(i32 %93, i32 %94, i32 %95, i64 %97, i64 %99)
  store i64 %100, i64* %6, align 8
  br label %123

101:                                              ; preds = %88, %83
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @GET_MODE_CLASS(i32 %102)
  %104 = load i64, i64* @MODE_CC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @CC0_P(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %101
  %111 = load i64, i64* @NULL_RTX, align 8
  store i64 %111, i64* %6, align 8
  br label %123

112:                                              ; preds = %106
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @avoid_constant_pool_reference(i64 %113)
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @avoid_constant_pool_reference(i64 %115)
  store i64 %116, i64* %14, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i64 @simplify_relational_operation_1(i32 %117, i32 %118, i32 %119, i64 %120, i64 %121)
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %112, %110, %92, %62, %60, %57, %47, %44
  %124 = load i64, i64* %6, align 8
  ret i64 %124
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @simplify_const_relational_operation(i32, i32, i64, i64) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i64 @VECTOR_MODE_P(i32) #1

declare dso_local i64 @swap_commutative_operands_p(i64, i64) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @CC0_P(i64) #1

declare dso_local i64 @avoid_constant_pool_reference(i64) #1

declare dso_local i64 @simplify_relational_operation_1(i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
