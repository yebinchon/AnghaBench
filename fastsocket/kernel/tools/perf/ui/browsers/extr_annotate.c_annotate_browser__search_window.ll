; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__search_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__search_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotate_browser = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"Search\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"String: \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ENTER: OK, ESC: Cancel\00", align 1
@K_ENTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotate_browser*, i32)* @annotate_browser__search_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotate_browser__search_window(%struct.annotate_browser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.annotate_browser*, align 8
  %5 = alloca i32, align 4
  store %struct.annotate_browser* %0, %struct.annotate_browser** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.annotate_browser*, %struct.annotate_browser** %4, align 8
  %7 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 2
  %11 = call i64 @ui_browser__input_window(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i64, i64* @K_ENTER, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.annotate_browser*, %struct.annotate_browser** %4, align 8
  %16 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @ui_browser__input_window(i8*, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
