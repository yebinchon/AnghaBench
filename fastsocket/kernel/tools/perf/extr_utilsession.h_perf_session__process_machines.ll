; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_utilsession.h_perf_session__process_machines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_utilsession.h_perf_session__process_machines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, i32 }
%struct.perf_tool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_session*, %struct.perf_tool*, i32 (i32*, %struct.perf_tool*)*)* @perf_session__process_machines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_session__process_machines(%struct.perf_session* %0, %struct.perf_tool* %1, i32 (i32*, %struct.perf_tool*)* %2) #0 {
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca %struct.perf_tool*, align 8
  %6 = alloca i32 (i32*, %struct.perf_tool*)*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store %struct.perf_tool* %1, %struct.perf_tool** %5, align 8
  store i32 (i32*, %struct.perf_tool*)* %2, i32 (i32*, %struct.perf_tool*)** %6, align 8
  %7 = load i32 (i32*, %struct.perf_tool*)*, i32 (i32*, %struct.perf_tool*)** %6, align 8
  %8 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %9 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %8, i32 0, i32 1
  %10 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %11 = call i32 %7(i32* %9, %struct.perf_tool* %10)
  %12 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %13 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %12, i32 0, i32 0
  %14 = load i32 (i32*, %struct.perf_tool*)*, i32 (i32*, %struct.perf_tool*)** %6, align 8
  %15 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  call void @machines__process(i32* %13, i32 (i32*, %struct.perf_tool*)* %14, %struct.perf_tool* %15)
  ret void
}

declare dso_local void @machines__process(i32*, i32 (i32*, %struct.perf_tool*)*, %struct.perf_tool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
