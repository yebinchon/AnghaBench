; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_value_regno_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_value_regno_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_MACHO = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i32 0, align 4
@FIRST_FLOAT_REG = common dso_local global i32 0, align 4
@TARGET_FLOAT_RETURNS_IN_80387 = common dso_local global i64 0, align 8
@FIRST_SSE_REG = common dso_local global i32 0, align 4
@TARGET_SSE = common dso_local global i64 0, align 8
@FIRST_MMX_REG = common dso_local global i32 0, align 4
@TARGET_MMX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_function_value_regno_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @TARGET_MACHO, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %57

6:                                                ; preds = %1
  %7 = load i32, i32* @TARGET_64BIT, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FIRST_FLOAT_REG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, i64* @TARGET_FLOAT_RETURNS_IN_80387, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @FIRST_SSE_REG, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* @TARGET_SSE, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  br label %28

28:                                               ; preds = %26, %16, %9
  %29 = phi i1 [ true, %16 ], [ true, %9 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %87

31:                                               ; preds = %6
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @FIRST_FLOAT_REG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @FIRST_SSE_REG, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* @TARGET_SSE, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @FIRST_FLOAT_REG, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* @TARGET_FLOAT_RETURNS_IN_80387, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %42, %34, %31
  %55 = phi i1 [ true, %42 ], [ true, %34 ], [ true, %31 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %87

57:                                               ; preds = %1
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @FIRST_FLOAT_REG, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* @TARGET_FLOAT_RETURNS_IN_80387, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @FIRST_SSE_REG, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* @TARGET_SSE, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %64, %57
  store i32 1, i32* %2, align 4
  br label %87

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @TARGET_64BIT, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @FIRST_MMX_REG, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i64, i64* @TARGET_MMX, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %2, align 4
  br label %87

86:                                               ; preds = %82, %78, %75
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %85, %74, %54, %28
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
