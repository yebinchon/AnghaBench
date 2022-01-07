; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_legitimate_lo_sum_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_legitimate_lo_sum_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LO_SUM = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@TARGET_ELF = common dso_local global i64 0, align 8
@TARGET_MACHO = common dso_local global i64 0, align 8
@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_AIX = common dso_local global i64 0, align 8
@ABI_DARWIN = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@TARGET_TOC = common dso_local global i64 0, align 8
@TARGET_POWERPC64 = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @legitimate_lo_sum_address_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legitimate_lo_sum_address_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @LO_SUM, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @XEXP(i32 %14, i32 0)
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @REG, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %94

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @INT_REG_OK_FOR_BASE_P(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %94

27:                                               ; preds = %20
  %28 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DFmode, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DImode, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30
  store i32 0, i32* %4, align 4
  br label %94

39:                                               ; preds = %34, %27
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @XEXP(i32 %40, i32 1)
  store i32 %41, i32* %6, align 4
  %42 = load i64, i64* @TARGET_ELF, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @TARGET_MACHO, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %44, %39
  %48 = load i64, i64* @DEFAULT_ABI, align 8
  %49 = load i64, i64* @ABI_AIX, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i64, i64* @DEFAULT_ABI, align 8
  %53 = load i64, i64* @ABI_DARWIN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* @flag_pic, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %94

59:                                               ; preds = %55, %51, %47
  %60 = load i64, i64* @TARGET_TOC, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %94

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @GET_MODE_NUNITS(i32 %64)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %94

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @GET_MODE_BITSIZE(i32 %69)
  %71 = icmp sgt i32 %70, 64
  br i1 %71, label %89, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @GET_MODE_BITSIZE(i32 %73)
  %75 = icmp sgt i32 %74, 32
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32, i32* @TARGET_POWERPC64, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i64, i64* @TARGET_FPRS, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @DFmode, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %85, %82, %79, %68
  store i32 0, i32* %4, align 4
  br label %94

90:                                               ; preds = %85, %76, %72
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @CONSTANT_P(i32 %91)
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %90, %89, %67, %62, %58, %38, %26, %19, %12
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INT_REG_OK_FOR_BASE_P(i32, i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
