; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_9e_rtx_costs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_9e_rtx_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_THUMB = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@SIGN_EXTEND = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @arm_9e_rtx_costs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_9e_rtx_costs(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GET_MODE(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* @TARGET_THUMB, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %22 [
    i32 128, label %19
  ]

19:                                               ; preds = %17
  %20 = call i32 @COSTS_N_INSNS(i32 3)
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  store i32 1, i32* %5, align 4
  br label %98

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @thumb_rtx_costs(i32 %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  store i32 1, i32* %5, align 4
  br label %98

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %92 [
    i32 128, label %30
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DImode, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @XEXP(i32 %35, i32 0)
  %37 = call i32 @GET_CODE(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @XEXP(i32 %38, i32 1)
  %40 = call i32 @GET_CODE(i32 %39)
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @XEXP(i32 %43, i32 0)
  %45 = call i32 @GET_CODE(i32 %44)
  %46 = load i32, i32* @ZERO_EXTEND, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @XEXP(i32 %49, i32 0)
  %51 = call i32 @GET_CODE(i32 %50)
  %52 = load i32, i32* @SIGN_EXTEND, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %42
  %55 = load i32*, i32** %9, align 8
  store i32 3, i32* %55, align 4
  store i32 1, i32* %5, align 4
  br label %98

56:                                               ; preds = %48, %34, %30
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @GET_MODE_CLASS(i32 %57)
  %59 = load i32, i32* @MODE_FLOAT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32*, i32** %9, align 8
  store i32 30, i32* %62, align 4
  store i32 1, i32* %5, align 4
  br label %98

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @DImode, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 7, i32* %12, align 4
  store i32 8, i32* %11, align 4
  br label %69

68:                                               ; preds = %63
  store i32 2, i32* %12, align 4
  store i32 4, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @XEXP(i32 %71, i32 0)
  %73 = call i32 @REG_OR_SUBREG_REG(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ 0, %75 ], [ %77, %76 ]
  %80 = add nsw i32 %70, %79
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @XEXP(i32 %81, i32 1)
  %83 = call i32 @REG_OR_SUBREG_REG(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %11, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 0, %85 ], [ %87, %86 ]
  %90 = add nsw i32 %80, %89
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  store i32 1, i32* %5, align 4
  br label %98

92:                                               ; preds = %28
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @arm_rtx_costs_1(i32 %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  store i32 1, i32* %5, align 4
  br label %98

98:                                               ; preds = %92, %88, %61, %54, %22, %19
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @COSTS_N_INSNS(i32) #1

declare dso_local i32 @thumb_rtx_costs(i32, i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @REG_OR_SUBREG_REG(i32) #1

declare dso_local i32 @arm_rtx_costs_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
