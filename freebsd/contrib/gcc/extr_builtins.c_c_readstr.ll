; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_c_readstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_c_readstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_INT = common dso_local global i64 0, align 8
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @c_readstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_readstr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @GET_MODE_CLASS(i32 %9)
  %11 = load i64, i64* @MODE_INT, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %16, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %83, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @GET_MODE_SIZE(i32 %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @GET_MODE_SIZE(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 %28, %29
  %31 = sub i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %34 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @GET_MODE_SIZE(i32 %37)
  %39 = load i32, i32* @UNITS_PER_WORD, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @UNITS_PER_WORD, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @UNITS_PER_WORD, align 4
  %47 = urem i32 %45, %46
  %48 = mul i32 2, %47
  %49 = sub i32 %44, %48
  %50 = sub i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %41, %36, %32
  %52 = load i32, i32* @BITS_PER_UNIT, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %57 = mul nsw i32 2, %56
  %58 = icmp ule i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @gcc_assert(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %63, %51
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %74 = urem i32 %72, %73
  %75 = shl i32 %71, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %78 = udiv i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %75
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %70
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %17

86:                                               ; preds = %17
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @immed_double_const(i32 %88, i32 %90, i32 %91)
  ret i32 %92
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @immed_double_const(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
