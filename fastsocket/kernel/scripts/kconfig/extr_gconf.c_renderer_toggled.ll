; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_renderer_toggled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_renderer_toggled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }

@model2 = common dso_local global i32 0, align 4
@tree2_w = common dso_local global i32 0, align 4
@COL_MENU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @renderer_toggled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renderer_toggled(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.menu*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @gtk_tree_path_new_from_string(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @model2, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @gtk_tree_model_get_iter(i32 %15, i32* %9, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %52

20:                                               ; preds = %3
  %21 = load i32, i32* @tree2_w, align 4
  %22 = call i32 @GTK_TREE_VIEW(i32 %21)
  %23 = call i32* @gtk_tree_view_get_selection(i32 %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i64 @gtk_tree_selection_get_selected(i32* %24, i32* null, i32* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @model2, align 4
  %29 = call i32* @gtk_tree_model_get_path(i32 %28, i32* %10)
  store i32* %29, i32** %8, align 8
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %49

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @gtk_tree_path_compare(i32* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @model2, align 4
  %42 = load i32, i32* @COL_MENU, align 4
  %43 = call i32 @gtk_tree_model_get(i32 %41, i32* %9, i32 %42, %struct.menu** %12, i32 -1)
  %44 = load %struct.menu*, %struct.menu** %12, align 8
  %45 = call i32 @toggle_sym_value(%struct.menu* %44)
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @gtk_tree_path_free(i32* %47)
  br label %49

49:                                               ; preds = %46, %33
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @gtk_tree_path_free(i32* %50)
  br label %52

52:                                               ; preds = %49, %19
  ret void
}

declare dso_local i32* @gtk_tree_path_new_from_string(i32*) #1

declare dso_local i32 @gtk_tree_model_get_iter(i32, i32*, i32*) #1

declare dso_local i32* @gtk_tree_view_get_selection(i32) #1

declare dso_local i32 @GTK_TREE_VIEW(i32) #1

declare dso_local i64 @gtk_tree_selection_get_selected(i32*, i32*, i32*) #1

declare dso_local i32* @gtk_tree_model_get_path(i32, i32*) #1

declare dso_local i64 @gtk_tree_path_compare(i32*, i32*) #1

declare dso_local i32 @gtk_tree_model_get(i32, i32*, i32, %struct.menu**, i32) #1

declare dso_local i32 @toggle_sym_value(%struct.menu*) #1

declare dso_local i32 @gtk_tree_path_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
