; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-inject.c_perf_event__repipe_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-inject.c_perf_event__repipe_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.perf_evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel.0*, %struct.machine*)* }
%struct.perf_evsel.0 = type opaque
%struct.machine = type opaque
%struct.machine.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine.1*)* @perf_event__repipe_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__repipe_sample(%struct.perf_tool* %0, %union.perf_event* %1, %struct.perf_sample* %2, %struct.perf_evsel* %3, %struct.machine.1* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_tool*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca %struct.perf_sample*, align 8
  %10 = alloca %struct.perf_evsel*, align 8
  %11 = alloca %struct.machine.1*, align 8
  %12 = alloca i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine.1*)*, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %7, align 8
  store %union.perf_event* %1, %union.perf_event** %8, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %9, align 8
  store %struct.perf_evsel* %3, %struct.perf_evsel** %10, align 8
  store %struct.machine.1* %4, %struct.machine.1** %11, align 8
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel.0*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel.0*, %struct.machine*)** %15, align 8
  %17 = icmp ne i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel.0*, %struct.machine*)* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %20 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel.0*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel.0*, %struct.machine*)** %21, align 8
  %23 = bitcast i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel.0*, %struct.machine*)* %22 to i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine.1*)*
  store i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine.1*)* %23, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine.1*)** %12, align 8
  %24 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine.1*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine.1*)** %12, align 8
  %25 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %26 = load %union.perf_event*, %union.perf_event** %8, align 8
  %27 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %28 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %29 = load %struct.machine.1*, %struct.machine.1** %11, align 8
  %30 = call i32 %24(%struct.perf_tool* %25, %union.perf_event* %26, %struct.perf_sample* %27, %struct.perf_evsel* %28, %struct.machine.1* %29)
  store i32 %30, i32* %6, align 4
  br label %41

31:                                               ; preds = %5
  %32 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %33 = load %union.perf_event*, %union.perf_event** %8, align 8
  %34 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %35 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %36 = load %struct.machine.1*, %struct.machine.1** %11, align 8
  %37 = call i32 @build_id__mark_dso_hit(%struct.perf_tool* %32, %union.perf_event* %33, %struct.perf_sample* %34, %struct.perf_evsel* %35, %struct.machine.1* %36)
  %38 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %39 = load %union.perf_event*, %union.perf_event** %8, align 8
  %40 = call i32 @perf_event__repipe_synth(%struct.perf_tool* %38, %union.perf_event* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %31, %18
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @build_id__mark_dso_hit(%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine.1*) #1

declare dso_local i32 @perf_event__repipe_synth(%struct.perf_tool*, %union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
