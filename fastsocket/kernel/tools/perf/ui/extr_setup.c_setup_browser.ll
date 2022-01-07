; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_setup.c_setup_browser.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_setup.c_setup_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_trace = common dso_local global i64 0, align 8
@use_browser = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_browser(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @isatty(i32 1)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* @dump_trace, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  store i32 0, i32* @use_browser, align 4
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, i32* @use_browser, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* @use_browser, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* @use_browser, align 4
  switch i32 %14, label %25 [
    i32 2, label %15
    i32 1, label %20
  ]

15:                                               ; preds = %13
  %16 = call i32 (...) @perf_gtk__init()
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %32

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %13, %19
  store i32 1, i32* @use_browser, align 4
  %21 = call i32 (...) @ui__init()
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %32

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %13, %24
  store i32 0, i32* @use_browser, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @setup_pager()
  br label %30

30:                                               ; preds = %28, %25
  %31 = call i32 (...) @perf_hpp__init()
  br label %32

32:                                               ; preds = %30, %23, %18
  ret void
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @perf_gtk__init(...) #1

declare dso_local i32 @ui__init(...) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @perf_hpp__init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
