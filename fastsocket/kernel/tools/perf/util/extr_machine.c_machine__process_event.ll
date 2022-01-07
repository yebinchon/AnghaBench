; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__process_event(%struct.machine* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  %6 = load %union.perf_event*, %union.perf_event** %4, align 8
  %7 = bitcast %union.perf_event* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %30 [
    i32 132, label %10
    i32 128, label %14
    i32 130, label %18
    i32 131, label %22
    i32 129, label %26
  ]

10:                                               ; preds = %2
  %11 = load %struct.machine*, %struct.machine** %3, align 8
  %12 = load %union.perf_event*, %union.perf_event** %4, align 8
  %13 = call i32 @machine__process_comm_event(%struct.machine* %11, %union.perf_event* %12)
  store i32 %13, i32* %5, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.machine*, %struct.machine** %3, align 8
  %16 = load %union.perf_event*, %union.perf_event** %4, align 8
  %17 = call i32 @machine__process_mmap_event(%struct.machine* %15, %union.perf_event* %16)
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.machine*, %struct.machine** %3, align 8
  %20 = load %union.perf_event*, %union.perf_event** %4, align 8
  %21 = call i32 @machine__process_fork_event(%struct.machine* %19, %union.perf_event* %20)
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.machine*, %struct.machine** %3, align 8
  %24 = load %union.perf_event*, %union.perf_event** %4, align 8
  %25 = call i32 @machine__process_exit_event(%struct.machine* %23, %union.perf_event* %24)
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.machine*, %struct.machine** %3, align 8
  %28 = load %union.perf_event*, %union.perf_event** %4, align 8
  %29 = call i32 @machine__process_lost_event(%struct.machine* %27, %union.perf_event* %28)
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %26, %22, %18, %14, %10
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @machine__process_comm_event(%struct.machine*, %union.perf_event*) #1

declare dso_local i32 @machine__process_mmap_event(%struct.machine*, %union.perf_event*) #1

declare dso_local i32 @machine__process_fork_event(%struct.machine*, %union.perf_event*) #1

declare dso_local i32 @machine__process_exit_event(%struct.machine*, %union.perf_event*) #1

declare dso_local i32 @machine__process_lost_event(%struct.machine*, %union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
