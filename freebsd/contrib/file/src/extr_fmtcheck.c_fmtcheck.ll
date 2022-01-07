; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_fmtcheck.c_fmtcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_fmtcheck.c_fmtcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMTCHECK_START = common dso_local global i64 0, align 8
@FMTCHECK_DONE = common dso_local global i64 0, align 8
@FMTCHECK_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fmtcheck(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %3, align 8
  br label %41

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i64, i64* @FMTCHECK_START, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i64, i64* @FMTCHECK_START, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %38, %14
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @get_next_format(i8** %6, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* @FMTCHECK_DONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @FMTCHECK_UNKNOWN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %3, align 8
  br label %41

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @get_next_format(i8** %7, i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %3, align 8
  br label %41

38:                                               ; preds = %30
  br label %19

39:                                               ; preds = %19
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %39, %36, %28, %12
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i64 @get_next_format(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
