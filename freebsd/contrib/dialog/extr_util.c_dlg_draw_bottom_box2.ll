; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_draw_bottom_box2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_draw_bottom_box2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACS_LTEE = common dso_local global i32 0, align 4
@ACS_HLINE = common dso_local global i32 0, align 4
@ACS_RTEE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_draw_bottom_box2(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @getmaxx(i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @getmaxy(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dlg_attrset(i32* %16, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sub nsw i32 %20, 3
  %22 = call i32 @wmove(i32* %19, i32 %21, i32 0)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @ACS_LTEE, align 4
  %25 = call signext i8 @dlg_boxchar(i32 %24)
  %26 = call i32 @waddch(i32* %23, i8 signext %25)
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %37, %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 2
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @ACS_HLINE, align 4
  %35 = call signext i8 @dlg_boxchar(i32 %34)
  %36 = call i32 @waddch(i32* %33, i8 signext %35)
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dlg_attrset(i32* %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @ACS_RTEE, align 4
  %46 = call signext i8 @dlg_boxchar(i32 %45)
  %47 = call i32 @waddch(i32* %44, i8 signext %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dlg_attrset(i32* %48, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 2
  %54 = call i32 @wmove(i32* %51, i32 %53, i32 1)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %63, %40
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 2
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @waddch(i32* %61, i8 signext 32)
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %55

66:                                               ; preds = %55
  ret void
}

declare dso_local i32 @getmaxx(i32*) #1

declare dso_local i32 @getmaxy(i32*) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local signext i8 @dlg_boxchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
