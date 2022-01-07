; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser__colorset = type { i32, i32, i64, i32 }

@ui_browser__color_config = common dso_local global i32 0, align 4
@ui_browser__colorsets = common dso_local global %struct.ui_browser__colorset* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_browser__init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ui_browser__colorset*, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @ui_browser__color_config, align 4
  %4 = call i32 @perf_config(i32 %3, i32* null)
  br label %5

5:                                                ; preds = %13, %0
  %6 = load %struct.ui_browser__colorset*, %struct.ui_browser__colorset** @ui_browser__colorsets, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ui_browser__colorset, %struct.ui_browser__colorset* %6, i64 %8
  %10 = getelementptr inbounds %struct.ui_browser__colorset, %struct.ui_browser__colorset* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %5
  %14 = load %struct.ui_browser__colorset*, %struct.ui_browser__colorset** @ui_browser__colorsets, align 8
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %struct.ui_browser__colorset, %struct.ui_browser__colorset* %14, i64 %17
  store %struct.ui_browser__colorset* %18, %struct.ui_browser__colorset** %2, align 8
  %19 = load %struct.ui_browser__colorset*, %struct.ui_browser__colorset** %2, align 8
  %20 = getelementptr inbounds %struct.ui_browser__colorset, %struct.ui_browser__colorset* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ui_browser__colorset*, %struct.ui_browser__colorset** %2, align 8
  %23 = getelementptr inbounds %struct.ui_browser__colorset, %struct.ui_browser__colorset* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ui_browser__colorset*, %struct.ui_browser__colorset** %2, align 8
  %26 = getelementptr inbounds %struct.ui_browser__colorset, %struct.ui_browser__colorset* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ui_browser__colorset*, %struct.ui_browser__colorset** %2, align 8
  %29 = getelementptr inbounds %struct.ui_browser__colorset, %struct.ui_browser__colorset* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sltt_set_color(i32 %21, i64 %24, i32 %27, i32 %30)
  br label %5

32:                                               ; preds = %5
  %33 = call i32 (...) @annotate_browser__init()
  ret void
}

declare dso_local i32 @perf_config(i32, i32*) #1

declare dso_local i32 @sltt_set_color(i32, i64, i32, i32) #1

declare dso_local i32 @annotate_browser__init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
