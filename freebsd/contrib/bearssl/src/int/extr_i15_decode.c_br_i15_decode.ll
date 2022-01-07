; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_decode.c_br_i15_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_decode.c_br_i15_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i15_decode(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  store i64 1, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %43, %3
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %6, align 8
  %16 = icmp ugt i64 %14, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 8
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %30, 15
  br i1 %31, label %32, label %43

32:                                               ; preds = %17
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 32767
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 15
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 15
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %32, %17
  br label %13

44:                                               ; preds = %13
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, 1
  %58 = call i32 @br_i15_bit_length(i32* %55, i64 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @br_i15_bit_length(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
