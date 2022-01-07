; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__process_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_tool = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_session__process_events(%struct.perf_session* %0, %struct.perf_tool* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca %struct.perf_tool*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store %struct.perf_tool* %1, %struct.perf_tool** %5, align 8
  %7 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %8 = call i32* @perf_session__register_idle_thread(%struct.perf_session* %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %15 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %20 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %21 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %25 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %29 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %32 = call i32 @__perf_session__process_events(%struct.perf_session* %19, i32 %23, i32 %27, i32 %30, %struct.perf_tool* %31)
  store i32 %32, i32* %6, align 4
  br label %37

33:                                               ; preds = %13
  %34 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %35 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %36 = call i32 @__perf_session__process_pipe_events(%struct.perf_session* %34, %struct.perf_tool* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %18
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32* @perf_session__register_idle_thread(%struct.perf_session*) #1

declare dso_local i32 @__perf_session__process_events(%struct.perf_session*, i32, i32, i32, %struct.perf_tool*) #1

declare dso_local i32 @__perf_session__process_pipe_events(%struct.perf_session*, %struct.perf_tool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
