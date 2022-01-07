; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_comm_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_comm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.thread = type { i32 }

@dump_trace = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"problem processing PERF_RECORD_COMM, skipping event.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__process_comm_event(%struct.machine* %0, %union.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.thread*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %7 = load %struct.machine*, %struct.machine** %4, align 8
  %8 = load %union.perf_event*, %union.perf_event** %5, align 8
  %9 = bitcast %union.perf_event* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.thread* @machine__findnew_thread(%struct.machine* %7, i32 %11)
  store %struct.thread* %12, %struct.thread** %6, align 8
  %13 = load i64, i64* @dump_trace, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %union.perf_event*, %union.perf_event** %5, align 8
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @perf_event__fprintf_comm(%union.perf_event* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = icmp eq %struct.thread* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load %struct.thread*, %struct.thread** %6, align 8
  %24 = load %union.perf_event*, %union.perf_event** %5, align 8
  %25 = bitcast %union.perf_event* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @thread__set_comm(%struct.thread* %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22, %19
  %31 = call i32 @dump_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32) #1

declare dso_local i32 @perf_event__fprintf_comm(%union.perf_event*, i32) #1

declare dso_local i64 @thread__set_comm(%struct.thread*, i32) #1

declare dso_local i32 @dump_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
