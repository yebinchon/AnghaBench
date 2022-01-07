; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_read_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_read_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32, i32, i32 }

@perf_event__process_comm = common dso_local global i32 0, align 4
@process_sample_event = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@session = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Initializing perf session failed\0A\00", align 1
@lock_tracepoints = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Initializing perf session tracepoint handlers failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.perf_tool, align 4
  %3 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %2, i32 0, i32 0
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %2, i32 0, i32 1
  %5 = load i32, i32* @perf_event__process_comm, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %2, i32 0, i32 2
  %7 = load i32, i32* @process_sample_event, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @input_name, align 4
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @perf_session__new(i32 %8, i32 %9, i32 0, i32 0, %struct.perf_tool* %2)
  store i32 %10, i32* @session, align 4
  %11 = load i32, i32* @session, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %25

15:                                               ; preds = %0
  %16 = load i32, i32* @session, align 4
  %17 = load i32, i32* @lock_tracepoints, align 4
  %18 = call i64 @perf_session__set_tracepoints_handlers(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @session, align 4
  %24 = call i32 @perf_session__process_events(i32 %23, %struct.perf_tool* %2)
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %22, %20, %13
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @perf_session__new(i32, i32, i32, i32, %struct.perf_tool*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @perf_session__set_tracepoints_handlers(i32, i32) #1

declare dso_local i32 @perf_session__process_events(i32, %struct.perf_tool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
