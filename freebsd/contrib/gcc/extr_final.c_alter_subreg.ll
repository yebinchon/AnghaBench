; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_alter_subreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_alter_subreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @alter_subreg(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %9 = load i64*, i64** %2, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @SUBREG_REG(i64 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @MEM_P(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %65

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @SUBREG_BYTE(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @GET_MODE(i64 %22)
  %24 = call i64 @GET_MODE_SIZE(i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @GET_MODE(i64 %25)
  %27 = call i64 @GET_MODE_SIZE(i32 %26)
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @GET_MODE(i64 %30)
  %32 = call i64 @GET_MODE_SIZE(i32 %31)
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @GET_MODE(i64 %33)
  %35 = call i64 @GET_MODE_SIZE(i32 %34)
  %36 = sub nsw i64 %32, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @UNITS_PER_WORD, align 4
  %43 = sdiv i32 %41, %42
  %44 = load i32, i32* @UNITS_PER_WORD, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %40, %29
  %49 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @UNITS_PER_WORD, align 4
  %54 = srem i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %21, %16
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @GET_MODE(i64 %60)
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @adjust_address(i64 %59, i32 %61, i32 %62)
  %64 = load i64*, i64** %2, align 8
  store i64 %63, i64* %64, align 8
  br label %96

65:                                               ; preds = %1
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @GET_MODE(i64 %66)
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @GET_MODE(i64 %69)
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @SUBREG_BYTE(i64 %71)
  %73 = call i64 @simplify_subreg(i32 %67, i64 %68, i32 %70, i32 %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i64, i64* %7, align 8
  %78 = load i64*, i64** %2, align 8
  store i64 %77, i64* %78, align 8
  br label %95

79:                                               ; preds = %65
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @REG_P(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @subreg_regno(i64 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @GET_MODE(i64 %87)
  %89 = load i32, i32* %8, align 4
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @SUBREG_BYTE(i64 %90)
  %92 = call i64 @gen_rtx_REG_offset(i64 %86, i32 %88, i32 %89, i32 %91)
  %93 = load i64*, i64** %2, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %83, %79
  br label %95

95:                                               ; preds = %94, %76
  br label %96

96:                                               ; preds = %95, %58
  %97 = load i64*, i64** %2, align 8
  %98 = load i64, i64* %97, align 8
  ret i64 %98
}

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @adjust_address(i64, i32, i32) #1

declare dso_local i64 @simplify_subreg(i32, i64, i32, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @subreg_regno(i64) #1

declare dso_local i64 @gen_rtx_REG_offset(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
