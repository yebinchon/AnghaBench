; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_file_name = common dso_local global i8* null, align 8
@save_file_name_prompt = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@com_win = common dso_local global i32 0, align 4
@file_not_saved_msg = common dso_local global i32 0, align 4
@clear_com_win = common dso_local global i32 0, align 4
@tmp_file = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@text_changes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @in_file_name, align 8
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5, %0
  %11 = load i32, i32* @save_file_name_prompt, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i8* @get_string(i32 %11, i32 %12)
  store i8* %13, i8** %1, align 8
  br label %14

14:                                               ; preds = %10, %5
  %15 = load i8*, i8** %1, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %1, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17, %14
  %23 = load i32, i32* @com_win, align 4
  %24 = call i32 @wmove(i32 %23, i32 0, i32 0)
  %25 = load i32, i32* @com_win, align 4
  %26 = load i32, i32* @file_not_saved_msg, align 4
  %27 = call i32 @wprintw(i32 %25, i32 %26)
  %28 = load i32, i32* @com_win, align 4
  %29 = call i32 @wclrtoeol(i32 %28)
  %30 = load i32, i32* @com_win, align 4
  %31 = call i32 @wrefresh(i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* @clear_com_win, align 4
  br label %50

33:                                               ; preds = %17
  %34 = load i8*, i8** %1, align 8
  %35 = call i8* @resolve_name(i8* %34)
  store i8* %35, i8** @tmp_file, align 8
  %36 = load i8*, i8** @tmp_file, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** @tmp_file, align 8
  store i8* %42, i8** %1, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i8*, i8** %1, align 8
  %45 = call i64 @write_file(i8* %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* @text_changes, align 4
  %49 = call i32 @quit(i32 0)
  br label %50

50:                                               ; preds = %22, %47, %43
  ret void
}

declare dso_local i8* @get_string(i32, i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wprintw(i32, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i8* @resolve_name(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @write_file(i8*, i32) #1

declare dso_local i32 @quit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
