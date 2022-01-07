; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_p2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_p2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_p2.low_digits = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@conv_p2.upper_digits = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8, i8*, i32*)* @conv_p2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @conv_p2(i32 %0, i32 %1, i8 signext %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 1, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8, i8* %8, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 88
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @conv_p2.upper_digits, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @conv_p2.low_digits, i64 0, i64 0)
  store i8* %22, i8** %13, align 8
  br label %23

23:                                               ; preds = %36, %5
  %24 = load i8*, i8** %13, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %12, align 8
  store i8 %30, i8* %32, align 1
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %12, align 8
  ret i8* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
