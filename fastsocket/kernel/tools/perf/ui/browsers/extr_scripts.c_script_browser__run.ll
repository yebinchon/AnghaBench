; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_scripts.c_script_browser__run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_scripts.c_script_browser__run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_script_browser = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Press <- or ESC to exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_script_browser*)* @script_browser__run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_browser__run(%struct.perf_script_browser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_script_browser*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_script_browser* %0, %struct.perf_script_browser** %3, align 8
  %5 = load %struct.perf_script_browser*, %struct.perf_script_browser** %3, align 8
  %6 = getelementptr inbounds %struct.perf_script_browser, %struct.perf_script_browser* %5, i32 0, i32 0
  %7 = load %struct.perf_script_browser*, %struct.perf_script_browser** %3, align 8
  %8 = getelementptr inbounds %struct.perf_script_browser, %struct.perf_script_browser* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ui_browser__show(i32* %6, i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.perf_script_browser*, %struct.perf_script_browser** %3, align 8
  %16 = getelementptr inbounds %struct.perf_script_browser, %struct.perf_script_browser* %15, i32 0, i32 0
  %17 = call i32 @ui_browser__run(i32* %16, i32 0)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load %struct.perf_script_browser*, %struct.perf_script_browser** %3, align 8
  %20 = getelementptr inbounds %struct.perf_script_browser, %struct.perf_script_browser* %19, i32 0, i32 0
  %21 = call i32 @ui_browser__hide(i32* %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @ui_browser__show(i32*, i32, i8*) #1

declare dso_local i32 @ui_browser__run(i32*, i32) #1

declare dso_local i32 @ui_browser__hide(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
