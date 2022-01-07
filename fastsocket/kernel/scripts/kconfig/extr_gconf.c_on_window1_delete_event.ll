; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_on_window1_delete_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_on_window1_delete_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Warning !\00", align 1
@main_wnd = common dso_local global i32 0, align 4
@GTK_DIALOG_MODAL = common dso_local global i32 0, align 4
@GTK_DIALOG_DESTROY_WITH_PARENT = common dso_local global i32 0, align 4
@GTK_STOCK_OK = common dso_local global i32 0, align 4
@GTK_STOCK_NO = common dso_local global i32 0, align 4
@GTK_STOCK_CANCEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"\0ASave configuration ?\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_window1_delete_event(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @conf_get_changed()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %54

15:                                               ; preds = %3
  %16 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @main_wnd, align 4
  %18 = call i32 @GTK_WINDOW(i32 %17)
  %19 = load i32, i32* @GTK_DIALOG_MODAL, align 4
  %20 = load i32, i32* @GTK_DIALOG_DESTROY_WITH_PARENT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GTK_STOCK_OK, align 4
  %23 = load i32, i32* @GTK_STOCK_NO, align 4
  %24 = load i32, i32* @GTK_STOCK_CANCEL, align 4
  %25 = call i32* @gtk_dialog_new_with_buttons(i32 %16, i32 %18, i32 %21, i32 %22, i32 128, i32 %23, i32 129, i32 %24, i32 131, i32* null)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call %struct.TYPE_4__* @GTK_DIALOG(i32* %26)
  %28 = call i32 @gtk_dialog_set_default_response(%struct.TYPE_4__* %27, i32 131)
  %29 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32* @gtk_label_new(i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call %struct.TYPE_4__* @GTK_DIALOG(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GTK_CONTAINER(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @gtk_container_add(i32 %35, i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @gtk_widget_show(i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call %struct.TYPE_4__* @GTK_DIALOG(i32* %40)
  %42 = call i32 @gtk_dialog_run(%struct.TYPE_4__* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %50 [
    i32 128, label %44
    i32 129, label %47
    i32 131, label %49
    i32 130, label %49
  ]

44:                                               ; preds = %15
  %45 = call i32 @on_save_activate(i32* null, i32* null)
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %15
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %54

49:                                               ; preds = %15, %15
  br label %50

50:                                               ; preds = %15, %49
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @gtk_widget_destroy(i32* %51)
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %47, %44, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @conf_get_changed(...) #1

declare dso_local i32* @gtk_dialog_new_with_buttons(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local i32 @gtk_dialog_set_default_response(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.TYPE_4__* @GTK_DIALOG(i32*) #1

declare dso_local i32* @gtk_label_new(i32) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @GTK_CONTAINER(i32) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

declare dso_local i32 @gtk_dialog_run(%struct.TYPE_4__*) #1

declare dso_local i32 @on_save_activate(i32*, i32*) #1

declare dso_local i32 @gtk_widget_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
