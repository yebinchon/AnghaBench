; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_decode.c_br_i31_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_decode.c_br_i31_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i31_decode(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %8, align 8
  store i64 1, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %47, %3
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %8, align 8
  %18 = icmp ugt i64 %16, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 8
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sge i32 %32, 31
  br i1 %33, label %34, label %47

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 2147483647
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  %40 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 31
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 8, %44
  %46 = ashr i32 %43, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %34, %19
  br label %15

48:                                               ; preds = %15
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %60, 1
  %62 = call i32 @br_i31_bit_length(i32* %59, i64 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %62, i32* %64, align 4
  ret void
}

declare dso_local i32 @br_i31_bit_length(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
