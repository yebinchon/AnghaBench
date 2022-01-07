; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_undefined_operand_subword_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_undefined_operand_subword_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@word_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @undefined_operand_subword_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @undefined_operand_subword_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @SUBREG, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GET_MODE(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SUBREG_REG(i32 %18)
  %20 = call i32 @GET_MODE(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @UNITS_PER_WORD, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SUBREG_BYTE(i32 %24)
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @SUBREG_BYTE(i32 %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @GET_MODE_SIZE(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @GET_MODE_SIZE(i32 %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @GET_MODE_SIZE(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @GET_MODE_SIZE(i32 %39)
  %41 = sub nsw i32 %38, %40
  store i32 %41, i32* %9, align 4
  %42 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @UNITS_PER_WORD, align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* @UNITS_PER_WORD, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %44, %36
  %53 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @UNITS_PER_WORD, align 4
  %58 = srem i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %52
  br label %62

62:                                               ; preds = %61, %30, %15
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @GET_MODE_SIZE(i32 %64)
  %66 = icmp sge i32 %63, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @word_mode, align 4
  %70 = call i32 @GET_MODE_SIZE(i32 %69)
  %71 = sub nsw i32 0, %70
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %62
  store i32 1, i32* %3, align 4
  br label %75

74:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %73, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
