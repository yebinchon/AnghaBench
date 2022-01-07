; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_get_off_t.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_get_off_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s: invalid numeric value\00", align 1
@oper = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: illegal numeric value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_off_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_off_t(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @errno, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strtoimax(i8* %7, i8** %6, i32 0)
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
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %27
  br label %77

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %46, %21
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %82 [
    i32 0, label %53
    i32 42, label %54
    i32 88, label %54
    i32 120, label %54
  ]

53:                                               ; preds = %49
  br label %85

54:                                               ; preds = %49, %49, %49
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i32 @get_off_t(i8* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %3, align 4
  %61 = mul nsw i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %3, align 4
  %66 = icmp sgt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %54
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sdiv i32 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %85

76:                                               ; preds = %69, %54
  br label %77

77:                                               ; preds = %76, %45
  %78 = load i32, i32* @oper, align 4
  %79 = load i32, i32* @ERANGE, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %49, %77
  %83 = load i32, i32* @oper, align 4
  %84 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %75, %53
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @strtoimax(i8*, i8**, i32) #1

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
