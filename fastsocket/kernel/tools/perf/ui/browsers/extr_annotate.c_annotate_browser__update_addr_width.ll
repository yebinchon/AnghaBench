; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__update_addr_width.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__update_addr_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.annotate_browser = type { i64, i32, i32, i32, i32 }

@annotate_browser__opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.annotate_browser*)* @annotate_browser__update_addr_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @annotate_browser__update_addr_width(%struct.annotate_browser* %0) #0 {
  %2 = alloca %struct.annotate_browser*, align 8
  store %struct.annotate_browser* %0, %struct.annotate_browser** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @annotate_browser__opts, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %7 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %10 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %13 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %16 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %5
  %18 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %19 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %22 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @annotate_browser__opts, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %27 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = load %struct.annotate_browser*, %struct.annotate_browser** %2, align 8
  %31 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  br label %36

36:                                               ; preds = %25, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
