; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_subword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_subword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@TARGET_BIG_ENDIAN = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_subword(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GET_MODE(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @VOIDmode, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DImode, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i64, i64* @TARGET_BIG_ENDIAN, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @UNITS_PER_WORD, align 4
  store i32 %25, i32* %6, align 4
  br label %27

26:                                               ; preds = %21, %18
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @REG_P(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @REGNO(i32 %32)
  %34 = call i64 @FP_REG_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load i32, i32* @word_mode, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @REGNO(i32 %41)
  %43 = add nsw i64 %42, 1
  br label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @REGNO(i32 %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i64 [ %43, %40 ], [ %46, %44 ]
  %49 = call i32 @gen_rtx_REG(i32 %37, i64 %48)
  store i32 %49, i32* %3, align 4
  br label %86

50:                                               ; preds = %31
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @REGNO(i32 %51)
  %53 = call i64 @ACC_HI_REG_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load i32, i32* @word_mode, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @REGNO(i32 %60)
  br label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @REGNO(i32 %63)
  %65 = add nsw i64 %64, 1
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i64 [ %61, %59 ], [ %65, %62 ]
  %68 = call i32 @gen_rtx_REG(i32 %56, i64 %67)
  store i32 %68, i32* %3, align 4
  br label %86

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @MEM_P(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @word_mode, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @adjust_address(i32 %75, i32 %76, i32 %77)
  %79 = call i32 @mips_rewrite_small_data(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %86

80:                                               ; preds = %70
  %81 = load i32, i32* @word_mode, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @simplify_gen_subreg(i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %74, %66, %47
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @FP_REG_P(i64) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i64 @ACC_HI_REG_P(i64) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @mips_rewrite_small_data(i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
