; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_command_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_command_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMMANDS = common dso_local global i32 0, align 4
@info_type = common dso_local global i32 0, align 4
@command_str = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@commands = common dso_local global i32 0, align 4
@com_win = common dso_local global i32 0, align 4
@unkn_cmd_str = common dso_local global i32 0, align 4
@non_unique_cmd_msg = common dso_local global i32 0, align 4
@CONTROL_KEYS = common dso_local global i32 0, align 4
@text_win = common dso_local global i32 0, align 4
@scr_vert = common dso_local global i32 0, align 4
@scr_horz = common dso_local global i64 0, align 8
@horiz_offset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_prompt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @COMMANDS, align 4
  store i32 %3, i32* @info_type, align 4
  %4 = call i32 (...) @paint_info_win()
  %5 = load i32, i32* @command_str, align 4
  %6 = load i32, i32* @TRUE, align 4
  %7 = call i8* @get_string(i32 %5, i32 %6)
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = load i32, i32* @commands, align 4
  %10 = call i32 @unique_test(i8* %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %39

12:                                               ; preds = %0
  %13 = load i32, i32* @com_win, align 4
  %14 = call i32 @werase(i32 %13)
  %15 = load i32, i32* @com_win, align 4
  %16 = call i32 @wmove(i32 %15, i32 0, i64 0)
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @com_win, align 4
  %21 = load i32, i32* @unkn_cmd_str, align 4
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 (i32, i32, ...) @wprintw(i32 %20, i32 %21, i8* %22)
  br label %28

24:                                               ; preds = %12
  %25 = load i32, i32* @com_win, align 4
  %26 = load i32, i32* @non_unique_cmd_msg, align 4
  %27 = call i32 (i32, i32, ...) @wprintw(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @com_win, align 4
  %30 = call i32 @wrefresh(i32 %29)
  %31 = load i32, i32* @CONTROL_KEYS, align 4
  store i32 %31, i32* @info_type, align 4
  %32 = call i32 (...) @paint_info_win()
  %33 = load i8*, i8** %1, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i8*, i8** %1, align 8
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %57

39:                                               ; preds = %0
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @command(i8* %40)
  %42 = load i32, i32* @com_win, align 4
  %43 = call i32 @wrefresh(i32 %42)
  %44 = load i32, i32* @text_win, align 4
  %45 = load i32, i32* @scr_vert, align 4
  %46 = load i64, i64* @scr_horz, align 8
  %47 = load i64, i64* @horiz_offset, align 8
  %48 = sub nsw i64 %46, %47
  %49 = call i32 @wmove(i32 %44, i32 %45, i64 %48)
  %50 = load i32, i32* @CONTROL_KEYS, align 4
  store i32 %50, i32* @info_type, align 4
  %51 = call i32 (...) @paint_info_win()
  %52 = load i8*, i8** %1, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i8*, i8** %1, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %38, %54, %39
  ret void
}

declare dso_local i32 @paint_info_win(...) #1

declare dso_local i8* @get_string(i32, i32) #1

declare dso_local i32 @unique_test(i8*, i32) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @wmove(i32, i32, i64) #1

declare dso_local i32 @wprintw(i32, i32, ...) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @command(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
