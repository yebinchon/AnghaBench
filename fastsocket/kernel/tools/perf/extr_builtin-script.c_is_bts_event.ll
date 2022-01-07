; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_is_bts_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_is_bts_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i64, i32, i32 }

@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@PERF_COUNT_HW_BRANCH_INSTRUCTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event_attr*)* @is_bts_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_bts_event(%struct.perf_event_attr* %0) #0 {
  %2 = alloca %struct.perf_event_attr*, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %2, align 8
  %3 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %4 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PERF_COUNT_HW_BRANCH_INSTRUCTIONS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br label %20

20:                                               ; preds = %15, %8, %1
  %21 = phi i1 [ false, %8 ], [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
