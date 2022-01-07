; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_util.c_init_dialog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_util.c_init_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@stdscr = common dso_local global i32 0, align 4
@ERRDISPLAYTOOSMALL = common dso_local global i32 0, align 4
@dlg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"MENUCONFIG_COLOR\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_dialog(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @initscr()
  %7 = load i32, i32* @stdscr, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @getmaxyx(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 19
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 80
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %1
  %17 = call i32 (...) @endwin()
  %18 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 0), align 8
  %22 = call i32 @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @color_setup(i32 %22)
  %24 = load i32, i32* @stdscr, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @keypad(i32 %24, i32 %25)
  %27 = call i32 (...) @cbreak()
  %28 = call i32 (...) @noecho()
  %29 = call i32 (...) @dialog_clear()
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @color_setup(i32) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @dialog_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
