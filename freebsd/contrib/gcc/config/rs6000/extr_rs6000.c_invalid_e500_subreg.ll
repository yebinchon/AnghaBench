; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_invalid_e500_subreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_invalid_e500_subreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i64 0, align 8
@DImode = common dso_local global i64 0, align 8
@TARGET_SPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @invalid_e500_subreg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @SUBREG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SImode, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SUBREG_REG(i32 %18)
  %20 = call i64 @REG_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @SUBREG_REG(i32 %23)
  %25 = call i64 @GET_MODE(i32 %24)
  %26 = load i64, i64* @DFmode, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %77

29:                                               ; preds = %22, %17, %13, %8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @SUBREG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* @DFmode, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @SUBREG_REG(i32 %40)
  %42 = call i64 @REG_P(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @SUBREG_REG(i32 %45)
  %47 = call i64 @GET_MODE(i32 %46)
  %48 = load i64, i64* @DImode, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %77

51:                                               ; preds = %44, %39, %34, %29
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i64, i64* @TARGET_SPE, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @GET_CODE(i32 %56)
  %58 = load i64, i64* @SUBREG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SImode, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @SUBREG_REG(i32 %65)
  %67 = call i64 @REG_P(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @SUBREG_REG(i32 %70)
  %72 = call i64 @GET_MODE(i32 %71)
  %73 = call i64 @SPE_VECTOR_MODE(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %77

76:                                               ; preds = %69, %64, %60, %55, %52
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %75, %50, %28
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @SPE_VECTOR_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
