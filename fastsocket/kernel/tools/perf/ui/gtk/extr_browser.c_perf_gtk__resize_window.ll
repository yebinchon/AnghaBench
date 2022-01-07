; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/gtk/extr_browser.c_perf_gtk__resize_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/gtk/extr_browser.c_perf_gtk__resize_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @perf_gtk__resize_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_gtk__resize_window(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i32* @gtk_widget_get_screen(%struct.TYPE_7__* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gdk_screen_get_monitor_at_window(i32* %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @gdk_screen_get_monitor_geometry(i32* %15, i32 %16, %struct.TYPE_8__* %3)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 3
  %21 = sdiv i32 %20, 4
  store i32 %21, i32* %7, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 3
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = call i32 @GTK_WINDOW(%struct.TYPE_7__* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @gtk_window_resize(i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32* @gtk_widget_get_screen(%struct.TYPE_7__*) #1

declare dso_local i32 @gdk_screen_get_monitor_at_window(i32*, i32) #1

declare dso_local i32 @gdk_screen_get_monitor_geometry(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gtk_window_resize(i32, i32, i32) #1

declare dso_local i32 @GTK_WINDOW(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
