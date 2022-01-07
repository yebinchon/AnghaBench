; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_build_signbit_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_build_signbit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFmode = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@V4SFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@V2DFmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_build_signbit_mask(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 63, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SFmode, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  store i32 -2147483648, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %22 = icmp sge i32 %21, 64
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 1, %24
  store i32 %25, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  br label %31

26:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %29 = sub nsw i32 %27, %28
  %30 = shl i32 1, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %23
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = xor i32 %36, -1
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = xor i32 %38, -1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SFmode, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SImode, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @DImode, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = call i32 @immed_double_const(i32 %41, i32 %42, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @gen_lowpart(i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @SFmode, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %50
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 (i32, i32, i32, ...) @gen_rtvec(i32 4, i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  br label %77

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @SFmode, align 4
  %71 = call i32 @CONST0_RTX(i32 %70)
  %72 = load i32, i32* @SFmode, align 4
  %73 = call i32 @CONST0_RTX(i32 %72)
  %74 = load i32, i32* @SFmode, align 4
  %75 = call i32 @CONST0_RTX(i32 %74)
  %76 = call i32 (i32, i32, i32, ...) @gen_rtvec(i32 4, i32 %69, i32 %71, i32 %73, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %68, %62
  %78 = load i32, i32* @V4SFmode, align 4
  store i32 %78, i32* %7, align 4
  br label %93

79:                                               ; preds = %50
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i32, i32, i32, ...) @gen_rtvec(i32 2, i32 %83, i32 %84)
  store i32 %85, i32* %11, align 4
  br label %91

86:                                               ; preds = %79
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @DFmode, align 4
  %89 = call i32 @CONST0_RTX(i32 %88)
  %90 = call i32 (i32, i32, i32, ...) @gen_rtvec(i32 2, i32 %87, i32 %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* @V2DFmode, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %77
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @gen_rtx_CONST_VECTOR(i32 %95, i32 %96)
  %98 = call i32 @force_reg(i32 %94, i32 %97)
  ret i32 %98
}

declare dso_local i32 @immed_double_const(i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32, ...) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gen_rtx_CONST_VECTOR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
