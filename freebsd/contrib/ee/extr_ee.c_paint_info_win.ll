; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_paint_info_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_paint_info_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@info_window = common dso_local global i32 0, align 4
@info_win = common dso_local global i32 0, align 4
@info_type = common dso_local global i64 0, align 8
@CONTROL_KEYS = common dso_local global i64 0, align 8
@emacs_keys_mode = common dso_local global i64 0, align 8
@emacs_control_keys = common dso_local global i32* null, align 8
@control_keys = common dso_local global i32* null, align 8
@COMMANDS = common dso_local global i64 0, align 8
@command_strings = common dso_local global i32* null, align 8
@nohighlight = common dso_local global i32 0, align 4
@separator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @paint_info_win() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @info_window, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %72

5:                                                ; preds = %0
  %6 = load i32, i32* @info_win, align 4
  %7 = call i32 @werase(i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %53, %5
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 5
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load i32, i32* @info_win, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @wmove(i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* @info_win, align 4
  %16 = call i32 @wclrtoeol(i32 %15)
  %17 = load i64, i64* @info_type, align 8
  %18 = load i64, i64* @CONTROL_KEYS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %11
  %21 = load i32, i32* @info_win, align 4
  %22 = load i64, i64* @emacs_keys_mode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** @emacs_control_keys, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  br label %36

30:                                               ; preds = %20
  %31 = load i32*, i32** @control_keys, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i32 [ %29, %24 ], [ %35, %30 ]
  %38 = call i32 @waddstr(i32 %21, i32 %37)
  br label %52

39:                                               ; preds = %11
  %40 = load i64, i64* @info_type, align 8
  %41 = load i64, i64* @COMMANDS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @info_win, align 4
  %45 = load i32*, i32** @command_strings, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @waddstr(i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %43, %39
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %8

56:                                               ; preds = %8
  %57 = load i32, i32* @info_win, align 4
  %58 = call i32 @wmove(i32 %57, i32 5, i32 0)
  %59 = load i32, i32* @nohighlight, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @info_win, align 4
  %63 = call i32 @wstandout(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @info_win, align 4
  %66 = load i32, i32* @separator, align 4
  %67 = call i32 @waddstr(i32 %65, i32 %66)
  %68 = load i32, i32* @info_win, align 4
  %69 = call i32 @wstandend(i32 %68)
  %70 = load i32, i32* @info_win, align 4
  %71 = call i32 @wrefresh(i32 %70)
  br label %72

72:                                               ; preds = %64, %4
  ret void
}

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @waddstr(i32, i32) #1

declare dso_local i32 @wstandout(i32) #1

declare dso_local i32 @wstandend(i32) #1

declare dso_local i32 @wrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
