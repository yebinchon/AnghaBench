; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_complex_function_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_complex_function_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i64 0, align 8
@FP_ARG_RETURN = common dso_local global i32 0, align 4
@GP_ARG_RETURN = common dso_local global i32 0, align 4
@TARGET_32BIT = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rs6000_complex_function_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_complex_function_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GET_MODE_INNER(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @GET_MODE_SIZE(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @FLOAT_MODE_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i64, i64* @TARGET_FPRS, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @FP_ARG_RETURN, align 4
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %19, %16, %1
  %25 = load i32, i32* @GP_ARG_RETURN, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @TARGET_32BIT, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp uge i32 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @gen_rtx_REG(i32 %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %28, %24
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp uge i32 %37, 8
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @gen_rtx_REG(i32 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %63

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @gen_rtx_REG(i32 %45, i32 %46)
  %48 = load i32, i32* @const0_rtx, align 4
  %49 = call i32 @gen_rtx_EXPR_LIST(i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, 1
  %54 = call i32 @gen_rtx_REG(i32 %51, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @GEN_INT(i32 %55)
  %57 = call i32 @gen_rtx_EXPR_LIST(i32 %50, i32 %54, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @gen_rtvec(i32 2, i32 %59, i32 %60)
  %62 = call i32 @gen_rtx_PARALLEL(i32 %58, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %43, %39, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
