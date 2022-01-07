; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_init_main_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_init_main_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"window1\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GUI loading failed !\0A\00", align 1
@main_wnd = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"hpaned1\00", align 1
@hpaned = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"vpaned1\00", align 1
@vpaned = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"treeview1\00", align 1
@tree1_w = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"treeview2\00", align 1
@tree2_w = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"textview3\00", align 1
@text_w = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"button1\00", align 1
@back_btn = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"show_name1\00", align 1
@show_name = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"show_range1\00", align 1
@show_range = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"show_data1\00", align 1
@show_value = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"button3\00", align 1
@save_btn = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"save1\00", align 1
@save_menu_item = common dso_local global i8* null, align 8
@conf_changed = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"toolbar1\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"button4\00", align 1
@xpm_single_view = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"button5\00", align 1
@xpm_split_view = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"button6\00", align 1
@xpm_tree_view = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"mytag1\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@PANGO_WEIGHT_BOLD = common dso_local global i32 0, align 4
@tag1 = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"mytag2\00", align 1
@tag2 = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [31 x i8] c"Linux Kernel v%s Configuration\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"KERNELVERSION\00", align 1
@view_mode = common dso_local global i32 0, align 4
@xpm_back = common dso_local global i64 0, align 8
@xpm_load = common dso_local global i64 0, align 8
@xpm_save = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_main_window(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @glade_xml_new(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @g_error(i8* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @glade_xml_signal_autoconnect(i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @glade_xml_get_widget(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = bitcast i8* %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** @main_wnd, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @glade_xml_get_widget(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %22, i8** @hpaned, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @glade_xml_get_widget(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %24, i8** @vpaned, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @glade_xml_get_widget(i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %26, i8** @tree1_w, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @glade_xml_get_widget(i32* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %28, i8** @tree2_w, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @glade_xml_get_widget(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i8* %30, i8** @text_w, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @glade_xml_get_widget(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %32, i8** @back_btn, align 8
  %33 = load i8*, i8** @back_btn, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @gtk_widget_set_sensitive(i8* %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @glade_xml_get_widget(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @show_name, align 4
  %41 = call i32 @gtk_check_menu_item_set_active(i32* %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i8* @glade_xml_get_widget(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @show_range, align 4
  %47 = call i32 @gtk_check_menu_item_set_active(i32* %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i8* @glade_xml_get_widget(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @show_value, align 4
  %53 = call i32 @gtk_check_menu_item_set_active(i32* %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i8* @glade_xml_get_widget(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i8* %55, i8** @save_btn, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i8* @glade_xml_get_widget(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  store i8* %57, i8** @save_menu_item, align 8
  %58 = load i32, i32* @conf_changed, align 4
  %59 = call i32 @conf_set_changed_callback(i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @main_wnd, align 8
  %61 = call i32* @gtk_widget_get_style(%struct.TYPE_5__* %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i8* @glade_xml_get_widget(i32* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %4, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @main_wnd, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i64, i64* @xpm_single_view, align 8
  %71 = inttoptr i64 %70 to i32**
  %72 = call i32 @replace_button_icon(i32* %65, i32 %68, i32* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32** %71)
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @main_wnd, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* @xpm_split_view, align 8
  %79 = inttoptr i64 %78 to i32**
  %80 = call i32 @replace_button_icon(i32* %73, i32 %76, i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32** %79)
  %81 = load i32*, i32** %3, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @main_wnd, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* @xpm_tree_view, align 8
  %87 = inttoptr i64 %86 to i32**
  %88 = call i32 @replace_button_icon(i32* %81, i32 %84, i32* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32** %87)
  %89 = load i8*, i8** @text_w, align 8
  %90 = call i32 @GTK_TEXT_VIEW(i8* %89)
  %91 = call i32* @gtk_text_view_get_buffer(i32 %90)
  store i32* %91, i32** %5, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @PANGO_WEIGHT_BOLD, align 4
  %94 = call i8* (i32*, i8*, i8*, ...) @gtk_text_buffer_create_tag(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %93, i8* null)
  store i8* %94, i8** @tag1, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i8* (i32*, i8*, i8*, ...) @gtk_text_buffer_create_tag(i32* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* null)
  store i8* %96, i8** @tag2, align 8
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %98 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %99 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %100 = call i32 @sprintf(i8* %97, i8* %98, i8* %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @main_wnd, align 8
  %102 = call i32 @GTK_WINDOW(%struct.TYPE_5__* %101)
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %104 = call i32 @gtk_window_set_title(i32 %102, i8* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @main_wnd, align 8
  %106 = call i32 @gtk_widget_show(%struct.TYPE_5__* %105)
  ret void
}

declare dso_local i32* @glade_xml_new(i32*, i8*, i32*) #1

declare dso_local i32 @g_error(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @glade_xml_signal_autoconnect(i32*) #1

declare dso_local i8* @glade_xml_get_widget(i32*, i8*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i8*, i32) #1

declare dso_local i32 @gtk_check_menu_item_set_active(i32*, i32) #1

declare dso_local i32 @conf_set_changed_callback(i32) #1

declare dso_local i32* @gtk_widget_get_style(%struct.TYPE_5__*) #1

declare dso_local i32 @replace_button_icon(i32*, i32, i32*, i8*, i32**) #1

declare dso_local i32* @gtk_text_view_get_buffer(i32) #1

declare dso_local i32 @GTK_TEXT_VIEW(i8*) #1

declare dso_local i8* @gtk_text_buffer_create_tag(i32*, i8*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_5__*) #1

declare dso_local i32 @gtk_widget_show(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
