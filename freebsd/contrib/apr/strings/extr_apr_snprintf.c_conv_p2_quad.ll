; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_p2_quad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_p2_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_p2_quad.low_digits = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@conv_p2_quad.upper_digits = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@APR_UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8, i8*, i32*)* @conv_p2_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @conv_p2_quad(i32 %0, i32 %1, i8 signext %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 1, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %10, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i8, i8* %9, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 88
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @conv_p2_quad.upper_digits, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @conv_p2_quad.low_digits, i64 0, i64 0)
  store i8* %23, i8** %14, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @APR_UINT32_MAX, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8, i8* %9, align 1
  %31 = load i8*, i8** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i8* @conv_p2(i32 %28, i32 %29, i8 signext %30, i8* %31, i32* %32)
  store i8* %33, i8** %6, align 8
  br label %60

34:                                               ; preds = %5
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i8*, i8** %14, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %13, align 8
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %35, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i8*, i8** %13, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %51, %27
  %61 = load i8*, i8** %6, align 8
  ret i8* %61
}

declare dso_local i8* @conv_p2(i32, i32, i8 signext, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
