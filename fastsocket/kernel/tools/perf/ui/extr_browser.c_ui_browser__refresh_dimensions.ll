; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__refresh_dimensions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__refresh_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i64, i64, i64 }

@SLtt_Screen_Cols = common dso_local global i64 0, align 8
@SLtt_Screen_Rows = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_browser__refresh_dimensions(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  %3 = load i64, i64* @SLtt_Screen_Cols, align 8
  %4 = sub nsw i64 %3, 1
  %5 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %6 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 3
  store i64 %4, i64* %6, align 8
  %7 = load i64, i64* @SLtt_Screen_Rows, align 8
  %8 = sub nsw i64 %7, 2
  %9 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %10 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %9, i32 0, i32 2
  store i64 %8, i64* %10, align 8
  %11 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %12 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %14 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
