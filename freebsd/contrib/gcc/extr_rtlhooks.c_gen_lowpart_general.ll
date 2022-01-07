; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlhooks.c_gen_lowpart_general.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlhooks.c_gen_lowpart_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@no_new_pseudos = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gen_lowpart_general(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @gen_lowpart_common(i32 %8, i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %3, align 8
  br label %109

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @REG_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @GET_CODE(i64 %20)
  %22 = load i64, i64* @SUBREG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @SUBREG_REG(i64 %25)
  %27 = call i32 @GET_MODE(i64 %26)
  %28 = call i64 @FLOAT_MODE_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24, %15
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @copy_to_reg(i64 %32)
  %34 = call i64 @gen_lowpart_common(i32 %31, i64 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @gcc_assert(i32 %37)
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %109

40:                                               ; preds = %24, %19
  store i32 0, i32* %7, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @MEM_P(i64 %41)
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @GET_MODE(i64 %44)
  %46 = call i64 @GET_MODE_SIZE(i32 %45)
  %47 = load i64, i64* @UNITS_PER_WORD, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %40
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @GET_MODE(i64 %50)
  %52 = call i64 @SCALAR_INT_MODE_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @GET_MODE_BITSIZE(i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @GET_MODE(i64 %57)
  %59 = call i32 @GET_MODE_BITSIZE(i32 %58)
  %60 = call i64 @TRULY_NOOP_TRUNCATION(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load i32, i32* @no_new_pseudos, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @GET_MODE(i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @force_reg(i32 %68, i64 %69)
  %71 = call i64 @gen_lowpart_general(i32 %66, i64 %70)
  store i64 %71, i64* %3, align 8
  br label %109

72:                                               ; preds = %62, %54, %49, %40
  %73 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @GET_MODE(i64 %76)
  %78 = call i64 @GET_MODE_SIZE(i32 %77)
  %79 = load i64, i64* @UNITS_PER_WORD, align 8
  %80 = call i32 @MAX(i64 %78, i64 %79)
  %81 = load i32, i32* %4, align 4
  %82 = call i64 @GET_MODE_SIZE(i32 %81)
  %83 = load i64, i64* @UNITS_PER_WORD, align 8
  %84 = call i32 @MAX(i64 %82, i64 %83)
  %85 = sub nsw i32 %80, %84
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %75, %72
  %87 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i64, i64* @UNITS_PER_WORD, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @GET_MODE_SIZE(i32 %91)
  %93 = call i64 @MIN(i64 %90, i64 %92)
  %94 = load i64, i64* @UNITS_PER_WORD, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @GET_MODE(i64 %95)
  %97 = call i64 @GET_MODE_SIZE(i32 %96)
  %98 = call i64 @MIN(i64 %94, i64 %97)
  %99 = sub nsw i64 %93, %98
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %89, %86
  %105 = load i64, i64* %5, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i64 @adjust_address(i64 %105, i32 %106, i32 %107)
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %104, %65, %30, %13
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local i64 @gen_lowpart_common(i32, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @copy_to_reg(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @SCALAR_INT_MODE_P(i32) #1

declare dso_local i64 @TRULY_NOOP_TRUNCATION(i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @adjust_address(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
