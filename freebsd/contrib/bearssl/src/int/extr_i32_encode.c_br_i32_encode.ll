; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_encode.c_br_i32_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_encode.c_br_i32_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i32_encode(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 7
  %14 = ashr i32 %13, 3
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %20, %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  store i8 0, i8* %21, align 1
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %5, align 8
  br label %16

25:                                               ; preds = %16
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 3
  %28 = lshr i64 %27, 2
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = and i64 %29, 3
  switch i64 %30, label %59 [
    i64 3, label %31
    i64 2, label %40
    i64 1, label %49
  ]

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 16
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 %37, i8* %38, align 1
  br label %40

40:                                               ; preds = %25, %31
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  store i8 %46, i8* %47, align 1
  br label %49

49:                                               ; preds = %25, %40
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  store i8 %54, i8* %55, align 1
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %49, %25
  br label %60

60:                                               ; preds = %63, %59
  %61 = load i64, i64* %8, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @br_enc32be(i8* %64, i32 %68)
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %8, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  store i8* %73, i8** %7, align 8
  br label %60

74:                                               ; preds = %60
  ret void
}

declare dso_local i32 @br_enc32be(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
