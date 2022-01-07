; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlhooks.c_gen_lowpart_if_possible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlhooks.c_gen_lowpart_if_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gen_lowpart_if_possible(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @gen_lowpart_common(i32 %9, i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %3, align 8
  br label %83

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @MEM_P(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %21 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @GET_MODE(i64 %24)
  %26 = call i32 @GET_MODE_SIZE(i64 %25)
  %27 = load i32, i32* @UNITS_PER_WORD, align 4
  %28 = call i32 @MAX(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = call i32 @GET_MODE_SIZE(i64 %30)
  %32 = load i32, i32* @UNITS_PER_WORD, align 4
  %33 = call i32 @MAX(i32 %31, i32 %32)
  %34 = sub nsw i32 %28, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32, i32* @UNITS_PER_WORD, align 4
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = call i32 @GET_MODE_SIZE(i64 %41)
  %43 = call i64 @MIN(i32 %39, i32 %42)
  %44 = load i32, i32* @UNITS_PER_WORD, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @GET_MODE(i64 %45)
  %47 = call i32 @GET_MODE_SIZE(i64 %46)
  %48 = call i64 @MIN(i32 %44, i32 %47)
  %49 = sub nsw i64 %43, %48
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %38, %35
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @adjust_address_nv(i64 %55, i32 %56, i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @XEXP(i64 %60, i32 0)
  %62 = call i32 @memory_address_p(i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  store i64 0, i64* %3, align 8
  br label %83

65:                                               ; preds = %54
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %3, align 8
  br label %83

67:                                               ; preds = %16
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @GET_MODE(i64 %70)
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @GET_MODE(i64 %74)
  %76 = load i64, i64* @VOIDmode, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @gen_lowpart_SUBREG(i32 %79, i64 %80)
  store i64 %81, i64* %3, align 8
  br label %83

82:                                               ; preds = %73, %67
  store i64 0, i64* %3, align 8
  br label %83

83:                                               ; preds = %82, %78, %65, %64, %14
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i64 @gen_lowpart_common(i32, i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @adjust_address_nv(i64, i32, i32) #1

declare dso_local i32 @memory_address_p(i32, i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @gen_lowpart_SUBREG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
