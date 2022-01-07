; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_get_abmon.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_get_abmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ABMON_1 = common dso_local global i32 0, align 4
@ABMON_2 = common dso_local global i32 0, align 4
@ABMON_3 = common dso_local global i32 0, align 4
@ABMON_4 = common dso_local global i32 0, align 4
@ABMON_5 = common dso_local global i32 0, align 4
@ABMON_6 = common dso_local global i32 0, align 4
@ABMON_7 = common dso_local global i32 0, align 4
@ABMON_8 = common dso_local global i32 0, align 4
@ABMON_9 = common dso_local global i32 0, align 4
@ABMON_10 = common dso_local global i32 0, align 4
@ABMON_11 = common dso_local global i32 0, align 4
@ABMON_12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_abmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_abmon(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %41 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %11
    i32 3, label %14
    i32 4, label %17
    i32 5, label %20
    i32 6, label %23
    i32 7, label %26
    i32 8, label %29
    i32 9, label %32
    i32 10, label %35
    i32 11, label %38
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ABMON_1, align 4
  %7 = call i8* @nl_langinfo(i32 %6)
  store i8* %7, i8** %2, align 8
  br label %43

8:                                                ; preds = %1
  %9 = load i32, i32* @ABMON_2, align 4
  %10 = call i8* @nl_langinfo(i32 %9)
  store i8* %10, i8** %2, align 8
  br label %43

11:                                               ; preds = %1
  %12 = load i32, i32* @ABMON_3, align 4
  %13 = call i8* @nl_langinfo(i32 %12)
  store i8* %13, i8** %2, align 8
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* @ABMON_4, align 4
  %16 = call i8* @nl_langinfo(i32 %15)
  store i8* %16, i8** %2, align 8
  br label %43

17:                                               ; preds = %1
  %18 = load i32, i32* @ABMON_5, align 4
  %19 = call i8* @nl_langinfo(i32 %18)
  store i8* %19, i8** %2, align 8
  br label %43

20:                                               ; preds = %1
  %21 = load i32, i32* @ABMON_6, align 4
  %22 = call i8* @nl_langinfo(i32 %21)
  store i8* %22, i8** %2, align 8
  br label %43

23:                                               ; preds = %1
  %24 = load i32, i32* @ABMON_7, align 4
  %25 = call i8* @nl_langinfo(i32 %24)
  store i8* %25, i8** %2, align 8
  br label %43

26:                                               ; preds = %1
  %27 = load i32, i32* @ABMON_8, align 4
  %28 = call i8* @nl_langinfo(i32 %27)
  store i8* %28, i8** %2, align 8
  br label %43

29:                                               ; preds = %1
  %30 = load i32, i32* @ABMON_9, align 4
  %31 = call i8* @nl_langinfo(i32 %30)
  store i8* %31, i8** %2, align 8
  br label %43

32:                                               ; preds = %1
  %33 = load i32, i32* @ABMON_10, align 4
  %34 = call i8* @nl_langinfo(i32 %33)
  store i8* %34, i8** %2, align 8
  br label %43

35:                                               ; preds = %1
  %36 = load i32, i32* @ABMON_11, align 4
  %37 = call i8* @nl_langinfo(i32 %36)
  store i8* %37, i8** %2, align 8
  br label %43

38:                                               ; preds = %1
  %39 = load i32, i32* @ABMON_12, align 4
  %40 = call i8* @nl_langinfo(i32 %39)
  store i8* %40, i8** %2, align 8
  br label %43

41:                                               ; preds = %1
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i8* @nl_langinfo(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
