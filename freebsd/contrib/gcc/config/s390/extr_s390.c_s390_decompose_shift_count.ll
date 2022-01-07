; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_decompose_shift_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_decompose_shift_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_decompose_shift_count(i64 %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @CONST_INT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @INTVAL(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* @NULL_RTX, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @GET_CODE(i64 %21)
  %23 = load i64, i64* @PLUS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @XEXP(i64 %26, i32 1)
  %28 = call i64 @GET_CODE(i64 %27)
  %29 = load i64, i64* @CONST_INT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @XEXP(i64 %32, i32 1)
  %34 = call i32 @INTVAL(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @XEXP(i64 %35, i32 0)
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %31, %25, %20, %17
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @GET_CODE(i64 %42)
  %44 = load i64, i64* @SUBREG, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @SUBREG_REG(i64 %49)
  store i64 %50, i64* %5, align 8
  br label %38

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @GET_CODE(i64 %55)
  %57 = load i64, i64* @REG, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %73

60:                                               ; preds = %54, %51
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i64*, i64** %6, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = load i64*, i64** %6, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SUBREG_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
