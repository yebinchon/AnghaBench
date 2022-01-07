; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_mystring.c_is_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_mystring.c_is_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_number(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %16, %10
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 48
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %11

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %33, %19
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @is_digit(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %56

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  br label %21

36:                                               ; preds = %21
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = icmp sgt i64 %41, 10
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp eq i64 %48, 10
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @memcmp(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %36
  store i32 0, i32* %2, align 4
  br label %56

55:                                               ; preds = %50, %43
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54, %31, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @is_digit(i8 signext) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
