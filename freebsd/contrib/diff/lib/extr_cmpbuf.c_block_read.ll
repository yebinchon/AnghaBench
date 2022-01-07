; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_cmpbuf.c_block_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_cmpbuf.c_block_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSIZE_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@SA_RESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @block_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %9, align 8
  %17 = load i64, i64* @SSIZE_MAX, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %61, %3
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @MIN(i32 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @read(i32 %27, i8* %28, i64 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %18
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %65

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINVAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i64, i64* @INT_MAX, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @INT_MAX, align 8
  store i64 %46, i64* %10, align 8
  br label %61

47:                                               ; preds = %41, %37
  %48 = load i32, i32* @SA_RESTART, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EINTR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %61

55:                                               ; preds = %50, %47
  %56 = load i64, i64* @SIZE_MAX, align 8
  store i64 %56, i64* %4, align 8
  br label %71

57:                                               ; preds = %18
  %58 = load i64, i64* %12, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %8, align 8
  br label %61

61:                                               ; preds = %57, %54, %45
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %18, label %65

65:                                               ; preds = %61, %36
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %65, %55
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
