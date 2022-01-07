; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_get_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_get_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s: invalid numeric value\00", align 1
@oper = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: illegal numeric value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_num(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @errno, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strtoumax(i8* %7, i8** %6, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @oper, align 4
  %14 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i64, i64* @errno, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @oper, align 4
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @postfix_to_mult(i8 signext %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %61

38:                                               ; preds = %27
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %38, %21
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %66 [
    i32 0, label %45
    i32 42, label %46
    i32 88, label %46
    i32 120, label %46
  ]

45:                                               ; preds = %41
  br label %69

46:                                               ; preds = %41, %41, %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 @get_num(i8* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = mul nsw i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sdiv i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %69

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* @oper, align 4
  %63 = load i32, i32* @ERANGE, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %41, %61
  %67 = load i32, i32* @oper, align 4
  %68 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %59, %45
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @postfix_to_mult(i8 signext) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
