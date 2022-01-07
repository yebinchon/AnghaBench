; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__handle_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__handle_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32 }

@ui_helpline__current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_browser__handle_resize(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  %3 = call i32 @ui__refresh_dimensions(i32 0)
  %4 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %5 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %6 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ui_helpline__current, align 4
  %9 = call i32 @ui_browser__show(%struct.ui_browser* %4, i32 %7, i32 %8)
  %10 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %11 = call i32 @ui_browser__refresh(%struct.ui_browser* %10)
  ret void
}

declare dso_local i32 @ui__refresh_dimensions(i32) #1

declare dso_local i32 @ui_browser__show(%struct.ui_browser*, i32, i32) #1

declare dso_local i32 @ui_browser__refresh(%struct.ui_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
