; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_libcall_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_libcall_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TARGET_32BIT = common dso_local global i64 0, align 8
@TARGET_POWERPC64 = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@GP_ARG_RETURN = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i64 0, align 8
@FP_ARG_RETURN = common dso_local global i32 0, align 4
@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@TARGET_ALTIVEC_ABI = common dso_local global i64 0, align 8
@ALTIVEC_ARG_RETURN = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@DCmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_libcall_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @TARGET_32BIT, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load i64, i64* @TARGET_POWERPC64, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @DImode, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* @DImode, align 4
  %16 = load i32, i32* @VOIDmode, align 4
  %17 = load i32, i32* @SImode, align 4
  %18 = load i32, i32* @GP_ARG_RETURN, align 4
  %19 = call i32 @gen_rtx_REG(i32 %17, i32 %18)
  %20 = load i32, i32* @const0_rtx, align 4
  %21 = call i32 @gen_rtx_EXPR_LIST(i32 %16, i32 %19, i32 %20)
  %22 = load i32, i32* @VOIDmode, align 4
  %23 = load i32, i32* @SImode, align 4
  %24 = load i32, i32* @GP_ARG_RETURN, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @gen_rtx_REG(i32 %23, i32 %25)
  %27 = call i32 @GEN_INT(i32 4)
  %28 = call i32 @gen_rtx_EXPR_LIST(i32 %22, i32 %26, i32 %27)
  %29 = call i32 @gen_rtvec(i32 2, i32 %21, i32 %28)
  %30 = call i32 @gen_rtx_PARALLEL(i32 %15, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %99

31:                                               ; preds = %10, %7, %1
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @DECIMAL_FLOAT_MODE_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @GP_ARG_RETURN, align 4
  store i32 %36, i32* %4, align 4
  br label %95

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @SCALAR_FLOAT_MODE_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i64, i64* @TARGET_FPRS, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @FP_ARG_RETURN, align 4
  store i32 %48, i32* %4, align 4
  br label %94

49:                                               ; preds = %44, %41, %37
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @ALTIVEC_VECTOR_MODE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i64, i64* @TARGET_ALTIVEC, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* @TARGET_ALTIVEC_ABI, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @ALTIVEC_ARG_RETURN, align 4
  store i32 %60, i32* %4, align 4
  br label %93

61:                                               ; preds = %56, %53, %49
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @COMPLEX_MODE_P(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @rs6000_complex_function_value(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %99

71:                                               ; preds = %65, %61
  %72 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @DFmode, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @DCmode, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %77
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @GP_ARG_RETURN, align 4
  %88 = call i32 @spe_build_register_parallel(i32 %86, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %99

89:                                               ; preds = %81, %74, %71
  %90 = load i32, i32* @GP_ARG_RETURN, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %59
  br label %94

94:                                               ; preds = %93, %47
  br label %95

95:                                               ; preds = %94, %35
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @gen_rtx_REG(i32 %96, i32 %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %85, %68, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @DECIMAL_FLOAT_MODE_P(i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @ALTIVEC_VECTOR_MODE(i32) #1

declare dso_local i64 @COMPLEX_MODE_P(i32) #1

declare dso_local i32 @rs6000_complex_function_value(i32) #1

declare dso_local i32 @spe_build_register_parallel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
