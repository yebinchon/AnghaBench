; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yylex.c_strtoarith_t.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yylex.c_strtoarith_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARITH_MIN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ARITH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strtoarith_t(i8* noalias %0, i8** noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = call i64 @isspace(i8 zeroext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  br label %7

15:                                               ; preds = %7
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %27 [
    i32 45, label %19
    i32 48, label %23
  ]

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @strtoimax(i8* %20, i8** %21, i32 0)
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %15
  %24 = load i8*, i8** %4, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @strtoumax(i8* %24, i8** %25, i32 0)
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %15
  %28 = load i8*, i8** %4, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @strtoumax(i8* %28, i8** %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ARITH_MIN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ERANGE, align 4
  store i32 %40, i32* @errno, align 4
  %41 = load i32, i32* @ARITH_MIN, align 4
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ERANGE, align 4
  store i32 %43, i32* @errno, align 4
  %44 = load i32, i32* @ARITH_MAX, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39, %33, %23, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @strtoimax(i8*, i8**, i32) #1

declare dso_local i32 @strtoumax(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
