; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_item_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_item_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_NORMAL = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@itemhelp_attr = common dso_local global i32 0, align 4
@LINES = common dso_local global i64 0, align 8
@COLS = common dso_local global i32 0, align 4
@A_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_item_help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @USE_ITEM_HELP(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load i32, i32* @A_NORMAL, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @stdscr, align 4
  %12 = load i32, i32* @itemhelp_attr, align 4
  %13 = call i32 @dlg_attrset(i32 %11, i32 %12)
  %14 = load i32, i32* @stdscr, align 4
  %15 = load i64, i64* @LINES, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call i32 @wmove(i32 %14, i64 %16, i32 0)
  %18 = load i32, i32* @stdscr, align 4
  %19 = call i32 @wclrtoeol(i32 %18)
  %20 = call i32 @addch(i8 signext 32)
  %21 = load i32, i32* @stdscr, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @COLS, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @dlg_print_text(i32 %21, i8* %22, i32 %24, i32* %3)
  %26 = load i32, i32* @itemhelp_attr, align 4
  %27 = load i32, i32* @A_COLOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %9
  %31 = load i32, i32* @stdscr, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @getyx(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  br label %36

36:                                               ; preds = %40, %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @COLS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 @addch(i8 signext 32)
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %36

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %9
  %46 = load i32, i32* @stdscr, align 4
  %47 = call i32 @wnoutrefresh(i32 %46)
  br label %48

48:                                               ; preds = %45, %1
  ret void
}

declare dso_local i64 @USE_ITEM_HELP(i8*) #1

declare dso_local i32 @dlg_attrset(i32, i32) #1

declare dso_local i32 @wmove(i32, i64, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @addch(i8 signext) #1

declare dso_local i32 @dlg_print_text(i32, i8*, i32, i32*) #1

declare dso_local i32 @getyx(i32, i32, i32) #1

declare dso_local i32 @wnoutrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
