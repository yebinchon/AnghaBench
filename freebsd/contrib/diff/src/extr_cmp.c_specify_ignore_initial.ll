; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_specify_ignore_initial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_specify_ignore_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@valid_suffixes = common dso_local global i32 0, align 4
@LONGINT_OK = common dso_local global i64 0, align 8
@LONGINT_INVALID_SUFFIX_CHAR = common dso_local global i64 0, align 8
@UINTMAX_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"invalid --ignore-initial value `%s'\00", align 1
@ignore_initial = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i8)* @specify_ignore_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @specify_ignore_initial(i32 %0, i8** %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 %2, i8* %6, align 1
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32, i32* @valid_suffixes, align 4
  %16 = call i64 @xstrtoumax(i8* %13, i8** %14, i32 0, i64* %7, i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @LONGINT_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @LONGINT_INVALID_SUFFIX_CHAR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24, %3
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %8, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @UINTMAX_MAX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35, %32, %24, %20
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @try_help(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i64*, i64** @ignore_initial, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i64, i64* %8, align 8
  %56 = load i64*, i64** @ignore_initial, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %46
  ret void
}

declare dso_local i64 @xstrtoumax(i8*, i8**, i32, i64*, i32) #1

declare dso_local i32 @try_help(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
