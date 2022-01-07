; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_draw_title.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_draw_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_NORMAL = common dso_local global i32 0, align 4
@title_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_draw_title(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load i32, i32* @A_NORMAL, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @dlg_get_attrs(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @getmaxx(i32* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @centered(i64 %15, i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @title_attr, align 4
  %20 = call i32 @dlg_attrset(i32* %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @wmove(i32* %21, i32 0, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @getmaxx(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %27, %29
  %31 = call i32 @dlg_print_text(i32* %24, i8* %25, i64 %30, i32* %5)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dlg_attrset(i32* %32, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @dlg_finish_string(i8* %35)
  br label %37

37:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @dlg_get_attrs(i32*) #1

declare dso_local i32 @centered(i64, i8*) #1

declare dso_local i64 @getmaxx(i32*) #1

declare dso_local i32 @dlg_attrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @dlg_print_text(i32*, i8*, i64, i32*) #1

declare dso_local i32 @dlg_finish_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
