; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_redraw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@info_window = common dso_local global i64 0, align 8
@info_win = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i32 0, align 4
@point = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redraw() #0 {
  %1 = load i64, i64* @info_window, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @info_win, align 4
  %5 = load i32, i32* @TRUE, align 4
  %6 = call i32 @clearok(i32 %4, i32 %5)
  %7 = call i32 (...) @paint_info_win()
  br label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @text_win, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @clearok(i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %3
  %13 = load i32, i32* @scr_vert, align 4
  %14 = load i32, i32* @point, align 4
  %15 = call i32 @midscreen(i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @clearok(i32, i32) #1

declare dso_local i32 @paint_info_win(...) #1

declare dso_local i32 @midscreen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
