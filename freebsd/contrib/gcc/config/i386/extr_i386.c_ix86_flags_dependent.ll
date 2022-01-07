; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_flags_dependent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_flags_dependent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_SETCC = common dso_local global i32 0, align 4
@TYPE_ICMOV = common dso_local global i32 0, align 4
@TYPE_FCMOV = common dso_local global i32 0, align 4
@TYPE_IBR = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@FLAGS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @ix86_flags_dependent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_flags_dependent(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @TYPE_SETCC, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @TYPE_ICMOV, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @TYPE_FCMOV, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TYPE_IBR, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %99

26:                                               ; preds = %21, %17, %13, %3
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @single_set(i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @SET_DEST(i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* @NULL_RTX, align 8
  store i64 %33, i64* %9, align 8
  br label %70

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @PATTERN(i64 %35)
  %37 = call i64 @GET_CODE(i64 %36)
  %38 = load i64, i64* @PARALLEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @PATTERN(i64 %41)
  %43 = call i32 @XVECLEN(i64 %42, i32 0)
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @PATTERN(i64 %46)
  %48 = call i64 @XVECEXP(i64 %47, i32 0, i32 0)
  %49 = call i64 @GET_CODE(i64 %48)
  %50 = load i64, i64* @SET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @PATTERN(i64 %53)
  %55 = call i64 @XVECEXP(i64 %54, i32 0, i32 1)
  %56 = call i64 @GET_CODE(i64 %55)
  %57 = load i64, i64* @SET, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @PATTERN(i64 %60)
  %62 = call i64 @XVECEXP(i64 %61, i32 0, i32 0)
  %63 = call i64 @SET_DEST(i64 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @PATTERN(i64 %64)
  %66 = call i64 @XVECEXP(i64 %65, i32 0, i32 0)
  %67 = call i64 @SET_DEST(i64 %66)
  store i64 %67, i64* %9, align 8
  br label %69

68:                                               ; preds = %52, %45, %40, %34
  store i32 0, i32* %4, align 4
  br label %99

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %30
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @GET_CODE(i64 %71)
  %73 = load i64, i64* @REG, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @REGNO(i64 %76)
  %78 = load i64, i64* @FLAGS_REG, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %70
  store i32 0, i32* %4, align 4
  br label %99

81:                                               ; preds = %75
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @PATTERN(i64 %83)
  %85 = call i64 @reg_overlap_mentioned_p(i64 %82, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %99

88:                                               ; preds = %81
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @PATTERN(i64 %93)
  %95 = call i64 @reg_overlap_mentioned_p(i64 %92, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %99

98:                                               ; preds = %91, %88
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %97, %87, %80, %68, %25
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @reg_overlap_mentioned_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
