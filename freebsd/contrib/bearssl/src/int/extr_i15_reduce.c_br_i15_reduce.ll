; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_reduce.c_br_i15_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_reduce.c_br_i15_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i15_reduce(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 15
  %17 = ashr i32 %16, 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %92

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 15
  %31 = ashr i32 %30, 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %25
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i64, i64* %10, align 8
  %42 = mul i64 %41, 4
  %43 = call i32 @memcpy(i32* %38, i32* %40, i64 %42)
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %54, %36
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %45

57:                                               ; preds = %45
  br label %92

58:                                               ; preds = %25
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %63, %64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, 1
  %69 = mul i64 %68, 4
  %70 = call i32 @memcpy(i32* %60, i32* %66, i64 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i64, i64* %10, align 8
  %75 = add i64 1, %74
  %76 = load i64, i64* %9, align 8
  %77 = sub i64 %75, %76
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %89, %58
  %79 = load i64, i64* %11, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @br_i15_muladd_small(i32* %82, i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %11, align 8
  br label %78

92:                                               ; preds = %24, %57, %78
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @br_i15_muladd_small(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
