; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_setup.c_exit_browser.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_setup.c_exit_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_browser = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_browser(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @use_browser, align 4
  switch i32 %3, label %10 [
    i32 2, label %4
    i32 1, label %7
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @perf_gtk__exit(i32 %5)
  br label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ui__exit(i32 %8)
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %7, %4
  ret void
}

declare dso_local i32 @perf_gtk__exit(i32) #1

declare dso_local i32 @ui__exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
