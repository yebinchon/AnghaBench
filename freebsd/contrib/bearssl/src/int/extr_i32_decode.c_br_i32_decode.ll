; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_decode.c_br_i32_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_decode.c_br_i32_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i32_decode(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %8, align 8
  store i64 1, i64* %9, align 8
  br label %13

13:                                               ; preds = %63, %3
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 2
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %64

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %23
  br label %46

29:                                               ; preds = %16
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @br_dec16be(i8* %33)
  store i32 %34, i32* %10, align 4
  br label %45

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 16
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i32 @br_dec16be(i8* %42)
  %44 = or i32 %40, %43
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %35, %32
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  %51 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %51, align 4
  br label %64

52:                                               ; preds = %13
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, 4
  store i64 %54, i64* %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = call i32 @br_dec32be(i8* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  %62 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %52
  br label %13

64:                                               ; preds = %46, %22
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, 1
  %69 = call i32 @br_i32_bit_length(i32* %66, i64 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @br_dec16be(i8*) #1

declare dso_local i32 @br_dec32be(i8*) #1

declare dso_local i32 @br_i32_bit_length(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
