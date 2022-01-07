; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_on_split_clicked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_on_split_clicked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPLIT_VIEW = common dso_local global i32 0, align 4
@view_mode = common dso_local global i32 0, align 4
@tree1_w = common dso_local global i32 0, align 4
@main_wnd = common dso_local global i32 0, align 4
@hpaned = common dso_local global i32 0, align 4
@tree2 = common dso_local global i64 0, align 8
@back_btn = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_split_clicked(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SPLIT_VIEW, align 4
  store i32 %7, i32* @view_mode, align 4
  %8 = load i32, i32* @tree1_w, align 4
  %9 = call i32 @gtk_widget_show(i32 %8)
  %10 = load i32, i32* @main_wnd, align 4
  %11 = call i32 @GTK_WINDOW(i32 %10)
  %12 = call i32 @gtk_window_get_default_size(i32 %11, i32* %5, i32* %6)
  %13 = load i32, i32* @hpaned, align 4
  %14 = call i32 @GTK_PANED(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 2
  %17 = call i32 @gtk_paned_set_position(i32 %14, i32 %16)
  %18 = load i64, i64* @tree2, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* @tree2, align 8
  %22 = call i32 @gtk_tree_store_clear(i64 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = call i32 (...) @display_list()
  %25 = load i32, i32* @back_btn, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @gtk_widget_set_sensitive(i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @gtk_widget_show(i32) #1

declare dso_local i32 @gtk_window_get_default_size(i32, i32*, i32*) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local i32 @gtk_paned_set_position(i32, i32) #1

declare dso_local i32 @GTK_PANED(i32) #1

declare dso_local i32 @gtk_tree_store_clear(i64) #1

declare dso_local i32 @display_list(...) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
