; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_10_quad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_10_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_UINT32_MAX = common dso_local global i32 0, align 4
@APR_INT32_MAX = common dso_local global i64 0, align 8
@APR_INT32_MIN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i32*, i8*, i32*)* @conv_10_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @conv_10_quad(i64 %0, i32 %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @APR_UINT32_MAX, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22, %5
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @APR_INT32_MAX, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @APR_INT32_MIN, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33, %22
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i8* @conv_10(i32 %38, i32 %39, i32* %40, i8* %41, i32* %42)
  store i8* %43, i8** %6, align 8
  br label %91

44:                                               ; preds = %33, %29, %25
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %66

50:                                               ; preds = %44
  %51 = load i64, i64* %7, align 8
  %52 = icmp slt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = sub nsw i64 0, %61
  %63 = trunc i64 %62 to i32
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %58, %50
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %13, align 4
  %69 = sdiv i32 %68, 10
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = mul nsw i32 %71, 10
  %73 = sub nsw i32 %70, %72
  %74 = add nsw i32 %73, 48
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %12, align 8
  store i8 %75, i8* %77, align 1
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %67, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i8*, i8** %12, align 8
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %82, %36
  %92 = load i8*, i8** %6, align 8
  ret i8* %92
}

declare dso_local i8* @conv_10(i32, i32, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
