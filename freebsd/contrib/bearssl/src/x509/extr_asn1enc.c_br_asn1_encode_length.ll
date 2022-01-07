; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_asn1enc.c_br_asn1_encode_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_asn1enc.c_br_asn1_encode_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_asn1_encode_length(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %11, 128
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i8
  %19 = load i8*, i8** %6, align 8
  store i8 %18, i8* %19, align 1
  br label %20

20:                                               ; preds = %16, %13
  store i64 1, i64* %3, align 8
  br label %63

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %29, %21
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = lshr i64 %30, 8
  store i64 %31, i64* %7, align 8
  br label %23

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 128, %36
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  store i8 %38, i8* %39, align 1
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %55, %35
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 3
  %50 = zext i32 %49 to i64
  %51 = lshr i64 %47, %50
  %52 = trunc i64 %51 to i8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 %52, i8* %53, align 1
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  br label %43

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %59, %20
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
