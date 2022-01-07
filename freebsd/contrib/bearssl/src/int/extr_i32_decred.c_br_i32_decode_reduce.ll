; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_decred.c_br_i32_decode_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_decred.c_br_i32_decode_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i32_decode_reduce(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %23, align 4
  br label %115

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @br_i32_zero(i32* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 7
  %30 = ashr i32 %29, 3
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %32, 1
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @br_i32_decode(i32* %38, i8* %39, i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  br label %115

45:                                               ; preds = %24
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %13, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = sub i64 %47, %48
  %50 = add i64 %49, 3
  %51 = and i64 %50, -4
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %78, %55
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = shl i32 %60, 8
  store i32 %61, i32* %15, align 4
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i8*, i8** %13, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %67, %68
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %15, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %65, %59
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @br_i32_muladd_small(i32* %82, i32 %83, i32* %84)
  br label %96

86:                                               ; preds = %45
  %87 = load i32*, i32** %5, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %12, align 8
  %91 = sub i64 %89, %90
  %92 = call i32 @br_i32_decode(i32* %87, i8* %88, i64 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %86, %81
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub i64 %97, %98
  store i64 %99, i64* %11, align 8
  br label %100

100:                                              ; preds = %112, %96
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i32*, i32** %5, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = call i32 @br_dec32be(i8* %108)
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @br_i32_muladd_small(i32* %105, i32 %109, i32* %110)
  br label %112

112:                                              ; preds = %104
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 4
  store i64 %114, i64* %11, align 8
  br label %100

115:                                              ; preds = %21, %37, %100
  ret void
}

declare dso_local i32 @br_i32_zero(i32*, i32) #1

declare dso_local i32 @br_i32_decode(i32*, i8*, i64) #1

declare dso_local i32 @br_i32_muladd_small(i32*, i32, i32*) #1

declare dso_local i32 @br_dec32be(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
