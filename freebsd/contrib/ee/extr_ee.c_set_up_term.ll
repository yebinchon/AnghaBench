; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_set_up_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_set_up_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curses_initialized = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@LINES = common dso_local global i32 0, align 4
@COLS = common dso_local global i32 0, align 4
@info_window = common dso_local global i64 0, align 8
@last_line = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@stdscr = common dso_local global i8* null, align 8
@com_win = common dso_local global i8* null, align 8
@text_win = common dso_local global i8* null, align 8
@help_win = common dso_local global i8* null, align 8
@CONTROL_KEYS = common dso_local global i32 0, align 4
@info_type = common dso_local global i32 0, align 4
@info_win = common dso_local global i8* null, align 8
@last_col = common dso_local global i32 0, align 4
@local_LINES = common dso_local global i32 0, align 4
@local_COLS = common dso_local global i32 0, align 4
@A_NC_BIG5 = common dso_local global i32 0, align 4
@ee_chinese = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_up_term() #0 {
  %1 = load i64, i64* @curses_initialized, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @initscr()
  %5 = call i32 (...) @savetty()
  %6 = call i32 (...) @noecho()
  %7 = call i32 (...) @raw()
  %8 = call i32 (...) @nonl()
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* @curses_initialized, align 8
  br label %10

10:                                               ; preds = %3, %0
  %11 = load i32, i32* @LINES, align 4
  %12 = icmp sgt i32 %11, 15
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* @COLS, align 4
  %15 = icmp sge i32 %14, 80
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* @info_window, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @LINES, align 4
  %21 = sub nsw i32 %20, 8
  store i32 %21, i32* @last_line, align 4
  br label %26

22:                                               ; preds = %16, %13, %10
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* @info_window, align 8
  %24 = load i32, i32* @LINES, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* @last_line, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i8*, i8** @stdscr, align 8
  %28 = load i64, i64* @TRUE, align 8
  %29 = call i32 @idlok(i8* %27, i64 %28)
  %30 = load i32, i32* @COLS, align 4
  %31 = load i32, i32* @LINES, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i8* @newwin(i32 1, i32 %30, i32 %32, i32 0)
  store i8* %33, i8** @com_win, align 8
  %34 = load i8*, i8** @com_win, align 8
  %35 = load i64, i64* @TRUE, align 8
  %36 = call i32 @keypad(i8* %34, i64 %35)
  %37 = load i8*, i8** @com_win, align 8
  %38 = load i64, i64* @TRUE, align 8
  %39 = call i32 @idlok(i8* %37, i64 %38)
  %40 = load i8*, i8** @com_win, align 8
  %41 = call i32 @wrefresh(i8* %40)
  %42 = load i64, i64* @info_window, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* @LINES, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* @COLS, align 4
  %48 = call i8* @newwin(i32 %46, i32 %47, i32 0, i32 0)
  store i8* %48, i8** @text_win, align 8
  br label %54

49:                                               ; preds = %26
  %50 = load i32, i32* @LINES, align 4
  %51 = sub nsw i32 %50, 7
  %52 = load i32, i32* @COLS, align 4
  %53 = call i8* @newwin(i32 %51, i32 %52, i32 6, i32 0)
  store i8* %53, i8** @text_win, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** @text_win, align 8
  %56 = load i64, i64* @TRUE, align 8
  %57 = call i32 @keypad(i8* %55, i64 %56)
  %58 = load i8*, i8** @text_win, align 8
  %59 = load i64, i64* @TRUE, align 8
  %60 = call i32 @idlok(i8* %58, i64 %59)
  %61 = load i8*, i8** @text_win, align 8
  %62 = call i32 @wrefresh(i8* %61)
  %63 = load i32, i32* @LINES, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @COLS, align 4
  %66 = call i8* @newwin(i32 %64, i32 %65, i32 0, i32 0)
  store i8* %66, i8** @help_win, align 8
  %67 = load i8*, i8** @help_win, align 8
  %68 = load i64, i64* @TRUE, align 8
  %69 = call i32 @keypad(i8* %67, i64 %68)
  %70 = load i8*, i8** @help_win, align 8
  %71 = load i64, i64* @TRUE, align 8
  %72 = call i32 @idlok(i8* %70, i64 %71)
  %73 = load i64, i64* @info_window, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %54
  %76 = load i32, i32* @CONTROL_KEYS, align 4
  store i32 %76, i32* @info_type, align 4
  %77 = load i32, i32* @COLS, align 4
  %78 = call i8* @newwin(i32 6, i32 %77, i32 0, i32 0)
  store i8* %78, i8** @info_win, align 8
  %79 = load i8*, i8** @info_win, align 8
  %80 = call i32 @werase(i8* %79)
  %81 = call i32 (...) @paint_info_win()
  br label %82

82:                                               ; preds = %75, %54
  %83 = load i32, i32* @COLS, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* @last_col, align 4
  %85 = load i32, i32* @LINES, align 4
  store i32 %85, i32* @local_LINES, align 4
  %86 = load i32, i32* @COLS, align 4
  store i32 %86, i32* @local_COLS, align 4
  ret void
}

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @savetty(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @raw(...) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @idlok(i8*, i64) #1

declare dso_local i8* @newwin(i32, i32, i32, i32) #1

declare dso_local i32 @keypad(i8*, i64) #1

declare dso_local i32 @wrefresh(i8*) #1

declare dso_local i32 @werase(i8*) #1

declare dso_local i32 @paint_info_win(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
