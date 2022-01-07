; ModuleID = '/home/carl/AnghaBench/freebsd/bin/rmdir/extr_rmdir.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/rmdir/extr_rmdir.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@pflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %18 [
    i32 112, label %15
    i32 118, label %16
    i32 63, label %17
  ]

15:                                               ; preds = %13
  store i32 1, i32* @pflag, align 4
  br label %20

16:                                               ; preds = %13
  store i32 1, i32* @vflag, align 4
  br label %20

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %13, %17
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %16, %15
  br label %8

21:                                               ; preds = %8
  %22 = load i64, i64* @optind, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* @optind, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 %27
  store i8** %29, i8*** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %21
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @rmdir(i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 1, i32* %7, align 4
  br label %65

48:                                               ; preds = %39
  %49 = load i32, i32* @vflag, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @pflag, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @rm_path(i8* %60)
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %58, %55
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %5, align 8
  br label %35

69:                                               ; preds = %35
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @exit(i32 %70) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @rm_path(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
