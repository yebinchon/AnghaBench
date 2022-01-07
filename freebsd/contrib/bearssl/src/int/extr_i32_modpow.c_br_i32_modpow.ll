; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_modpow.c_br_i32_modpow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_modpow.c_br_i32_modpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i32_modpow(i32* %0, i8* %1, i64 %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 63
  %22 = ashr i32 %21, 5
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  store i64 %24, i64* %15, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @memcpy(i32* %25, i32* %26, i64 %27)
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @br_i32_to_monty(i32* %29, i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @br_i32_zero(i32* %32, i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 1, i32* %38, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %81, %7
  %40 = load i32, i32* %16, align 4
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 3
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %39
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %47, 1
  %49 = load i32, i32* %16, align 4
  %50 = ashr i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = sub i64 %48, %51
  %53 = getelementptr inbounds i8, i8* %46, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %16, align 4
  %57 = and i32 %56, 7
  %58 = ashr i32 %55, %57
  %59 = and i32 %58, 1
  store i32 %59, i32* %17, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @br_i32_montymul(i32* %60, i32* %61, i32* %62, i32* %63, i32 %64)
  %66 = load i32, i32* %17, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @CCOPY(i32 %66, i32* %67, i32* %68, i64 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @br_i32_montymul(i32* %71, i32* %72, i32* %73, i32* %74, i32 %75)
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @memcpy(i32* %77, i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %45
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %39

84:                                               ; preds = %39
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @br_i32_to_monty(i32*, i32*) #1

declare dso_local i32 @br_i32_zero(i32*, i32) #1

declare dso_local i32 @br_i32_montymul(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @CCOPY(i32, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
