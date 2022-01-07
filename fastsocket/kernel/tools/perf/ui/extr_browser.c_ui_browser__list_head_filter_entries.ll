; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__list_head_filter_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__list_head_filter_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32 (%struct.ui_browser*, %struct.list_head.0*)*, %struct.list_head* }
%struct.list_head.0 = type opaque
%struct.list_head = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.ui_browser*, %struct.list_head*)* @ui_browser__list_head_filter_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @ui_browser__list_head_filter_entries(%struct.ui_browser* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.ui_browser*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  br label %6

6:                                                ; preds = %26, %2
  %7 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %8 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %7, i32 0, i32 0
  %9 = load i32 (%struct.ui_browser*, %struct.list_head.0*)*, i32 (%struct.ui_browser*, %struct.list_head.0*)** %8, align 8
  %10 = icmp ne i32 (%struct.ui_browser*, %struct.list_head.0*)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %13 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %12, i32 0, i32 0
  %14 = load i32 (%struct.ui_browser*, %struct.list_head.0*)*, i32 (%struct.ui_browser*, %struct.list_head.0*)** %13, align 8
  %15 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %16 = load %struct.list_head*, %struct.list_head** %5, align 8
  %17 = bitcast %struct.list_head* %16 to %struct.list_head.0*
  %18 = call i32 %14(%struct.ui_browser* %15, %struct.list_head.0* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %11, %6
  %21 = load %struct.list_head*, %struct.list_head** %5, align 8
  store %struct.list_head* %21, %struct.list_head** %3, align 8
  br label %33

22:                                               ; preds = %11
  %23 = load %struct.list_head*, %struct.list_head** %5, align 8
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8
  store %struct.list_head* %25, %struct.list_head** %5, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load %struct.list_head*, %struct.list_head** %5, align 8
  %28 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %29 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %28, i32 0, i32 1
  %30 = load %struct.list_head*, %struct.list_head** %29, align 8
  %31 = icmp ne %struct.list_head* %27, %30
  br i1 %31, label %6, label %32

32:                                               ; preds = %26
  store %struct.list_head* null, %struct.list_head** %3, align 8
  br label %33

33:                                               ; preds = %32, %20
  %34 = load %struct.list_head*, %struct.list_head** %3, align 8
  ret %struct.list_head* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
