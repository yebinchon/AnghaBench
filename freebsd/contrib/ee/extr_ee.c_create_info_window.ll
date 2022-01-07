; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_create_info_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_create_info_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@info_window = common dso_local global i8* null, align 8
@LINES = common dso_local global i32 0, align 4
@last_line = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@info_win = common dso_local global i32 0, align 4
@CONTROL_KEYS = common dso_local global i32 0, align 4
@info_type = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i32 0, align 4
@point = common dso_local global i32 0, align 4
@clear_com_win = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_info_window() #0 {
  %1 = load i8*, i8** @info_window, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %39

4:                                                ; preds = %0
  %5 = load i32, i32* @LINES, align 4
  %6 = sub nsw i32 %5, 8
  store i32 %6, i32* @last_line, align 4
  %7 = load i32, i32* @text_win, align 4
  %8 = call i32 @delwin(i32 %7)
  %9 = load i32, i32* @LINES, align 4
  %10 = sub nsw i32 %9, 7
  %11 = load i32, i32* @COLS, align 4
  %12 = call i32 @newwin(i32 %10, i32 %11, i32 6, i32 0)
  store i32 %12, i32* @text_win, align 4
  %13 = load i32, i32* @text_win, align 4
  %14 = load i8*, i8** @TRUE, align 8
  %15 = call i32 @keypad(i32 %13, i8* %14)
  %16 = load i32, i32* @text_win, align 4
  %17 = load i8*, i8** @TRUE, align 8
  %18 = call i32 @idlok(i32 %16, i8* %17)
  %19 = load i32, i32* @text_win, align 4
  %20 = call i32 @werase(i32 %19)
  %21 = load i8*, i8** @TRUE, align 8
  store i8* %21, i8** @info_window, align 8
  %22 = load i32, i32* @COLS, align 4
  %23 = call i32 @newwin(i32 6, i32 %22, i32 0, i32 0)
  store i32 %23, i32* @info_win, align 4
  %24 = load i32, i32* @info_win, align 4
  %25 = call i32 @werase(i32 %24)
  %26 = load i32, i32* @CONTROL_KEYS, align 4
  store i32 %26, i32* @info_type, align 4
  %27 = load i32, i32* @scr_vert, align 4
  %28 = load i32, i32* @last_line, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  %30 = load i32, i32* @point, align 4
  %31 = call i32 @midscreen(i32 %29, i32 %30)
  %32 = load i32, i32* @info_win, align 4
  %33 = load i8*, i8** @TRUE, align 8
  %34 = call i32 @clearok(i32 %32, i8* %33)
  %35 = call i32 (...) @paint_info_win()
  %36 = load i32, i32* @text_win, align 4
  %37 = call i32 @wrefresh(i32 %36)
  %38 = load i8*, i8** @TRUE, align 8
  store i8* %38, i8** @clear_com_win, align 8
  br label %39

39:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @delwin(i32) #1

declare dso_local i32 @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i32, i8*) #1

declare dso_local i32 @idlok(i32, i8*) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @midscreen(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @clearok(i32, i8*) #1

declare dso_local i32 @paint_info_win(...) #1

declare dso_local i32 @wrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
