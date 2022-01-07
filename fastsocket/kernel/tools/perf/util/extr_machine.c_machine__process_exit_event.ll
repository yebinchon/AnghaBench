; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_exit_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_exit_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@dump_trace = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__process_exit_event(%struct.machine* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.thread*, align 8
  store %struct.machine* %0, %struct.machine** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  %6 = load %struct.machine*, %struct.machine** %3, align 8
  %7 = load %union.perf_event*, %union.perf_event** %4, align 8
  %8 = bitcast %union.perf_event* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.thread* @machine__find_thread(%struct.machine* %6, i32 %10)
  store %struct.thread* %11, %struct.thread** %5, align 8
  %12 = load i64, i64* @dump_trace, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %union.perf_event*, %union.perf_event** %4, align 8
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @perf_event__fprintf_task(%union.perf_event* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.thread*, %struct.thread** %5, align 8
  %20 = icmp ne %struct.thread* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.machine*, %struct.machine** %3, align 8
  %23 = load %struct.thread*, %struct.thread** %5, align 8
  %24 = call i32 @machine__remove_thread(%struct.machine* %22, %struct.thread* %23)
  br label %25

25:                                               ; preds = %21, %18
  ret i32 0
}

declare dso_local %struct.thread* @machine__find_thread(%struct.machine*, i32) #1

declare dso_local i32 @perf_event__fprintf_task(%union.perf_event*, i32) #1

declare dso_local i32 @machine__remove_thread(%struct.machine*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
