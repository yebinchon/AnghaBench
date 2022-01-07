; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_discover_flags_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_discover_flags_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@word_mode = common dso_local global i32 0, align 4
@const2_rtx = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @discover_flags_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discover_flags_reg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @word_mode, align 4
  %5 = call i32 @gen_rtx_REG(i32 %4, i32 10000)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @const2_rtx, align 4
  %9 = call i32 @gen_add3_insn(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @SET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @NULL_RTX, align 4
  store i32 %15, i32* %1, align 4
  br label %79

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @PARALLEL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @XVECLEN(i32 %22, i32 0)
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @pc_rtx, align 4
  store i32 %26, i32* %1, align 4
  br label %79

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @XVECEXP(i32 %28, i32 0, i32 1)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @CLOBBER, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @pc_rtx, align 4
  store i32 %35, i32* %1, align 4
  br label %79

36:                                               ; preds = %27
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @GET_CODE(i32 %39)
  %41 = load i64, i64* @SUBREG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @SUBREG_REG(i32 %44)
  %46 = call i64 @REG_P(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @SUBREG_REG(i32 %49)
  %51 = call i64 @REGNO(i32 %50)
  %52 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @pc_rtx, align 4
  store i32 %55, i32* %1, align 4
  br label %79

56:                                               ; preds = %48, %43, %36
  %57 = load i32, i32* %2, align 4
  %58 = call i64 @REG_P(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = call i64 @REGNO(i32 %61)
  %63 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %64 = icmp slt i64 %62, %63
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %2, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @NULL_RTX, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %1, align 4
  br label %79

76:                                               ; preds = %16
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* @pc_rtx, align 4
  store i32 %78, i32* %1, align 4
  br label %79

79:                                               ; preds = %77, %74, %54, %34, %25, %14
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_add3_insn(i32, i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
