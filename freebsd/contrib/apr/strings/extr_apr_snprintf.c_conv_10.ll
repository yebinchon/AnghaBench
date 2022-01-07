; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_10.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i32*, i8*, i32*)* @conv_10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @conv_10(i64 %0, i32 %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  br label %39

23:                                               ; preds = %5
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = sub nsw i64 0, %34
  %36 = trunc i64 %35 to i32
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %31, %23
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %52, %39
  %41 = load i32, i32* %12, align 4
  %42 = sdiv i32 %41, 10
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 %44, 10
  %46 = sub nsw i32 %43, %45
  %47 = add nsw i32 %46, 48
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %11, align 8
  store i8 %48, i8* %50, align 1
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %40, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i8*, i8** %11, align 8
  ret i8* %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
