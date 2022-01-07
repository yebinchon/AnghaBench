; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_resize_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_resize_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINES = common dso_local global i64 0, align 8
@local_LINES = common dso_local global i64 0, align 8
@COLS = common dso_local global i64 0, align 8
@local_COLS = common dso_local global i64 0, align 8
@info_window = common dso_local global i64 0, align 8
@info_win = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@com_win = common dso_local global i32 0, align 4
@help_win = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resize_check() #0 {
  %1 = load i64, i64* @LINES, align 8
  %2 = load i64, i64* @local_LINES, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i64, i64* @COLS, align 8
  %6 = load i64, i64* @local_COLS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %26

9:                                                ; preds = %4, %0
  %10 = load i64, i64* @info_window, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @info_win, align 4
  %14 = call i32 @delwin(i32 %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* @text_win, align 4
  %17 = call i32 @delwin(i32 %16)
  %18 = load i32, i32* @com_win, align 4
  %19 = call i32 @delwin(i32 %18)
  %20 = load i32, i32* @help_win, align 4
  %21 = call i32 @delwin(i32 %20)
  %22 = call i32 (...) @set_up_term()
  %23 = call i32 (...) @redraw()
  %24 = load i32, i32* @text_win, align 4
  %25 = call i32 @wrefresh(i32 %24)
  br label %26

26:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @delwin(i32) #1

declare dso_local i32 @set_up_term(...) #1

declare dso_local i32 @redraw(...) #1

declare dso_local i32 @wrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
