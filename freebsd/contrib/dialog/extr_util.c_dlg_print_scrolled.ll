; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_print_scrolled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_print_scrolled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dialog_attr = common dso_local global i8 0, align 1
@MARGIN = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4
@border_attr = common dso_local global i8 0, align 1
@position_indicator_attr = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlg_print_scrolled(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @getyx(i32* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i8, i8* @dialog_attr, align 1
  %24 = call i32 @dlg_attrset(i32* %22, i8 signext %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @MARGIN, align 4
  %30 = mul nsw i32 3, %29
  %31 = add nsw i32 %28, %30
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dlg_print_autowrap(i32* %25, i8* %26, i32 %31, i32 %32)
  store i32 0, i32* %15, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @wmove(i32* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %15, align 4
  ret i32 %38
}

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32*, i8 signext) #1

declare dso_local i32 @dlg_print_autowrap(i32*, i8*, i32, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
