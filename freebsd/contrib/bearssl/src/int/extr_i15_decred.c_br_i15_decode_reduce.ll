; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_decred.c_br_i15_decode_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_decred.c_br_i15_decode_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i15_decode_reduce(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %24, align 4
  br label %119

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @br_i15_zero(i32* %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 15
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %33, 4
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 7
  %40 = ashr i32 %39, 3
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = sub i64 %42, 1
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %25
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @br_i15_decode(i32* %48, i8* %49, i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  br label %119

55:                                               ; preds = %25
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %13, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @br_i15_decode(i32* %57, i8* %58, i64 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %98, %55
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %14, align 4
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %16, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 8
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp sge i32 %81, 15
  br i1 %82, label %83, label %98

83:                                               ; preds = %68
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sub nsw i32 %86, 15
  %88 = ashr i32 %85, %87
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @br_i15_muladd_small(i32* %84, i32 %88, i32* %89)
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 %91, 15
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = shl i32 -1, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %83, %68
  br label %64

99:                                               ; preds = %64
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %15, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %103, %108
  %110 = and i32 %109, 32767
  store i32 %110, i32* %14, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 15, %112
  %114 = call i32 @br_i15_rshift(i32* %111, i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @br_i15_muladd_small(i32* %115, i32 %116, i32* %117)
  br label %119

119:                                              ; preds = %22, %47, %102, %99
  ret void
}

declare dso_local i32 @br_i15_zero(i32*, i32) #1

declare dso_local i32 @br_i15_decode(i32*, i8*, i64) #1

declare dso_local i32 @br_i15_muladd_small(i32*, i32, i32*) #1

declare dso_local i32 @br_i15_rshift(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
