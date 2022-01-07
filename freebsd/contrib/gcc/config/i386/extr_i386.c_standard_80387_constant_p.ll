; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_standard_80387_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_standard_80387_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_DOUBLE = common dso_local global i64 0, align 8
@XFmode = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8
@x86_ext_80387_constants = common dso_local global i32 0, align 4
@TUNEMASK = common dso_local global i32 0, align 4
@ext_80387_constants_init = common dso_local global i32 0, align 4
@ext_80387_constants_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @standard_80387_constant_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @GET_CODE(i64 %6)
  %8 = load i64, i64* @CONST_DOUBLE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @GET_MODE(i64 %11)
  %13 = call i32 @FLOAT_MODE_P(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 -1, i32* %2, align 4
  br label %71

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @GET_MODE(i64 %18)
  %20 = call i64 @CONST0_RTX(i64 %19)
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %71

23:                                               ; preds = %16
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @GET_MODE(i64 %25)
  %27 = call i64 @CONST1_RTX(i64 %26)
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 2, i32* %2, align 4
  br label %71

30:                                               ; preds = %23
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @GET_MODE(i64 %31)
  %33 = load i64, i64* @XFmode, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load i64, i64* @optimize_size, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @x86_ext_80387_constants, align 4
  %40 = load i32, i32* @TUNEMASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @ext_80387_constants_init, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 (...) @init_ext_80387_constants()
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %4, align 4
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %49, i64 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %66, %48
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 5
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i32*, i32** @ext_80387_constants_table, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i64 @real_identical(i32* %4, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 3
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %52

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %38, %30
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %62, %29, %22, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @FLOAT_MODE_P(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @CONST0_RTX(i64) #1

declare dso_local i64 @CONST1_RTX(i64) #1

declare dso_local i32 @init_ext_80387_constants(...) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i64) #1

declare dso_local i64 @real_identical(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
