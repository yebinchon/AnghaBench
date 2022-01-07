; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_util.c_prn_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_util.c_prn_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prn_normal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 @memset(i32* %3, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %66, %27, %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @MB_LEN_MAX, align 4
  %12 = call i64 @mbrtowc(i32* %4, i8* %10, i32 %11, i32* %3)
  store i64 %12, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %9
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, -2
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  br label %67

24:                                               ; preds = %14
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = call i32 @memset(i32* %3, i32 0, i32 4)
  %29 = load i8*, i8** %2, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @putchar(i8 zeroext %30)
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %9

36:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @putchar(i8 zeroext %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load i64, i64* %7, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @iswprint(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @wcwidth(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %59, %52
  br label %9

67:                                               ; preds = %17, %9
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

declare dso_local i64 @printf(i8*, i8*) #1

declare dso_local i32 @putchar(i8 zeroext) #1

declare dso_local i64 @iswprint(i32) #1

declare dso_local i64 @wcwidth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
