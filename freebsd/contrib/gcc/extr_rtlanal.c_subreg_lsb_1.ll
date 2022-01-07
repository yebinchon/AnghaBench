; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_subreg_lsb_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_subreg_lsb_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subreg_lsb_1(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @GET_MODE_BITSIZE(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @GET_MODE_BITSIZE(i32 %13)
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %19 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @UNITS_PER_WORD, align 4
  %24 = urem i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GET_MODE_SIZE(i32 %25)
  %27 = add i32 %24, %26
  %28 = load i32, i32* @UNITS_PER_WORD, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @UNITS_PER_WORD, align 4
  %33 = urem i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @GET_MODE_SIZE(i32 %36)
  %38 = load i32, i32* @UNITS_PER_WORD, align 4
  %39 = urem i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ true, %30 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %21
  %44 = phi i1 [ false, %21 ], [ %42, %41 ]
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @gcc_assert(i32 %46)
  br label %48

48:                                               ; preds = %43, %17
  %49 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @GET_MODE_SIZE(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @GET_MODE_SIZE(i32 %55)
  %57 = add i32 %54, %56
  %58 = sub i32 %53, %57
  %59 = load i32, i32* @UNITS_PER_WORD, align 4
  %60 = udiv i32 %58, %59
  store i32 %60, i32* %10, align 4
  br label %65

61:                                               ; preds = %48
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @UNITS_PER_WORD, align 4
  %64 = udiv i32 %62, %63
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %61, %51
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @BITS_PER_WORD, align 4
  %68 = mul i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @GET_MODE_SIZE(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @GET_MODE_SIZE(i32 %75)
  %77 = add i32 %74, %76
  %78 = sub i32 %73, %77
  %79 = load i32, i32* @UNITS_PER_WORD, align 4
  %80 = urem i32 %78, %79
  store i32 %80, i32* %9, align 4
  br label %85

81:                                               ; preds = %65
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @UNITS_PER_WORD, align 4
  %84 = urem i32 %82, %83
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %71
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @BITS_PER_UNIT, align 4
  %88 = mul i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %85, %16
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
