; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_sw_perf_event_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_sw_perf_event_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@perf_swevent_enabled = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @sw_perf_event_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_perf_event_destroy(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i32*, i32** @perf_swevent_enabled, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i32 @atomic_dec(i32* %14)
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = call i32 @swevent_hlist_put(%struct.perf_event* %16)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @swevent_hlist_put(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
