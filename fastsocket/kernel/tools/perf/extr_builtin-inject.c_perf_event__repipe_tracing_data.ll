; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-inject.c_perf_event__repipe_tracing_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-inject.c_perf_event__repipe_tracing_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session*)* @perf_event__repipe_tracing_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__repipe_tracing_data(%struct.perf_tool* %0, %union.perf_event* %1, %struct.perf_session* %2) #0 {
  %4 = alloca %struct.perf_tool*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  store %struct.perf_session* %2, %struct.perf_session** %6, align 8
  %8 = load %struct.perf_tool*, %struct.perf_tool** %4, align 8
  %9 = load %union.perf_event*, %union.perf_event** %5, align 8
  %10 = call i32 @perf_event__repipe_synth(%struct.perf_tool* %8, %union.perf_event* %9)
  %11 = load %struct.perf_tool*, %struct.perf_tool** %4, align 8
  %12 = load %union.perf_event*, %union.perf_event** %5, align 8
  %13 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %14 = call i32 @perf_event__process_tracing_data(%struct.perf_tool* %11, %union.perf_event* %12, %struct.perf_session* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  ret i32 %15
}

declare dso_local i32 @perf_event__repipe_synth(%struct.perf_tool*, %union.perf_event*) #1

declare dso_local i32 @perf_event__process_tracing_data(%struct.perf_tool*, %union.perf_event*, %struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
