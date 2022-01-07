; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_mmap_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_mmap_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.perf_mmap_event = type { i32 }

@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_mmap_event*, i32)* @perf_event_mmap_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_mmap_match(%struct.perf_event* %0, %struct.perf_mmap_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_mmap_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_mmap_event* %1, %struct.perf_mmap_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

14:                                               ; preds = %3
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = call i32 @event_filter_match(%struct.perf_event* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %39

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %22
  store i32 1, i32* %4, align 4
  br label %39

38:                                               ; preds = %31, %28
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37, %18, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @event_filter_match(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
