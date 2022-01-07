; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_decred.c_br_i31_decode_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_decred.c_br_i31_decode_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i31_decode_reduce(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
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
  br label %126

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @br_i31_zero(i32* %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 5
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 31
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %33, 5
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
  %51 = call i32 @br_i31_decode(i32* %48, i8* %49, i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  br label %126

55:                                               ; preds = %25
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %13, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @br_i31_decode(i32* %57, i8* %58, i64 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %105, %55
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %64
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp sge i32 %75, 23
  br i1 %76, label %77, label %98

77:                                               ; preds = %68
  %78 = load i32, i32* %15, align 4
  %79 = sub nsw i32 %78, 23
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 8, %80
  %82 = load i32, i32* %14, align 4
  %83 = shl i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @br_i31_muladd_small(i32* %89, i32 %90, i32* %91)
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = sub nsw i32 8, %94
  %96 = ashr i32 255, %95
  %97 = and i32 %93, %96
  store i32 %97, i32* %14, align 4
  br label %105

98:                                               ; preds = %68
  %99 = load i32, i32* %14, align 4
  %100 = shl i32 %99, 8
  %101 = load i32, i32* %16, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 8
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %98, %77
  br label %64

106:                                              ; preds = %64
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %110, %115
  %117 = and i32 %116, 2147483647
  store i32 %117, i32* %14, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sub nsw i32 31, %119
  %121 = call i32 @br_i31_rshift(i32* %118, i32 %120)
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @br_i31_muladd_small(i32* %122, i32 %123, i32* %124)
  br label %126

126:                                              ; preds = %22, %47, %109, %106
  ret void
}

declare dso_local i32 @br_i31_zero(i32*, i32) #1

declare dso_local i32 @br_i31_decode(i32*, i8*, i64) #1

declare dso_local i32 @br_i31_muladd_small(i32*, i32, i32*) #1

declare dso_local i32 @br_i31_rshift(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
