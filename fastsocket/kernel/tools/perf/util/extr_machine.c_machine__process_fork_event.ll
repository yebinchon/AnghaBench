; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_fork_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_fork_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.thread = type { i32 }

@dump_trace = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"problem processing PERF_RECORD_FORK, skipping event.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__process_fork_event(%struct.machine* %0, %union.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.thread*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %8 = load %struct.machine*, %struct.machine** %4, align 8
  %9 = load %union.perf_event*, %union.perf_event** %5, align 8
  %10 = bitcast %union.perf_event* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.thread* @machine__findnew_thread(%struct.machine* %8, i32 %12)
  store %struct.thread* %13, %struct.thread** %6, align 8
  %14 = load %struct.machine*, %struct.machine** %4, align 8
  %15 = load %union.perf_event*, %union.perf_event** %5, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.thread* @machine__findnew_thread(%struct.machine* %14, i32 %18)
  store %struct.thread* %19, %struct.thread** %7, align 8
  %20 = load i64, i64* @dump_trace, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %union.perf_event*, %union.perf_event** %5, align 8
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @perf_event__fprintf_task(%union.perf_event* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.thread*, %struct.thread** %6, align 8
  %28 = icmp eq %struct.thread* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load %struct.thread*, %struct.thread** %7, align 8
  %31 = icmp eq %struct.thread* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load %struct.thread*, %struct.thread** %6, align 8
  %34 = load %struct.thread*, %struct.thread** %7, align 8
  %35 = call i64 @thread__fork(%struct.thread* %33, %struct.thread* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %29, %26
  %38 = call i32 @dump_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32) #1

declare dso_local i32 @perf_event__fprintf_task(%union.perf_event*, i32) #1

declare dso_local i64 @thread__fork(%struct.thread*, %struct.thread*) #1

declare dso_local i32 @dump_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
