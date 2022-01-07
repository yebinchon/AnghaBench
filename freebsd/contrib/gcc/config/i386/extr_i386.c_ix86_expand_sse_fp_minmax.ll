; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_sse_fp_minmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_sse_fp_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LT = common dso_local global i32 0, align 4
@UNGE = common dso_local global i32 0, align 4
@flag_finite_math_only = common dso_local global i32 0, align 4
@flag_unsafe_math_optimizations = common dso_local global i32 0, align 4
@UNSPEC_IEEE_MIN = common dso_local global i32 0, align 4
@UNSPEC_IEEE_MAX = common dso_local global i32 0, align 4
@SMIN = common dso_local global i32 0, align 4
@SMAX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @ix86_expand_sse_fp_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_expand_sse_fp_minmax(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @LT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %33

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @UNGE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %13, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %104

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @rtx_equal_p(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @rtx_equal_p(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %15, align 4
  br label %57

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @rtx_equal_p(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @rtx_equal_p(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  br label %56

55:                                               ; preds = %49, %44
  store i32 0, i32* %7, align 4
  br label %104

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @GET_MODE(i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* @flag_finite_math_only, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @UNSPEC_IEEE_MIN, align 4
  br label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @UNSPEC_IEEE_MAX, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @force_reg(i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @gen_rtvec(i32 2, i32 %77, i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @gen_rtx_UNSPEC(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %16, align 4
  br label %98

84:                                               ; preds = %62
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @SMIN, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @SMAX, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @gen_rtx_fmt_ee(i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %91, %72
  %99 = load i32, i32* @VOIDmode, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @gen_rtx_SET(i32 %99, i32 %100, i32 %101)
  %103 = call i32 @emit_insn(i32 %102)
  store i32 1, i32* %7, align 4
  br label %104

104:                                              ; preds = %98, %55, %31
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
