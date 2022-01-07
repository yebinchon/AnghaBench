; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_probe_event_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_probe_event_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i64 }
%struct.trace_probe = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TP_FLAG_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_event_call*)* @probe_event_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_event_enable(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_event_call*, align 8
  %4 = alloca %struct.trace_probe*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %3, align 8
  %5 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %6 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.trace_probe*
  store %struct.trace_probe* %8, %struct.trace_probe** %4, align 8
  %9 = load i32, i32* @TP_FLAG_TRACE, align 4
  %10 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %11 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %15 = call i64 @trace_probe_is_return(%struct.trace_probe* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %19 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %18, i32 0, i32 0
  %20 = call i32 @enable_kretprobe(%struct.TYPE_2__* %19)
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %23 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @enable_kprobe(i32* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @trace_probe_is_return(%struct.trace_probe*) #1

declare dso_local i32 @enable_kretprobe(%struct.TYPE_2__*) #1

declare dso_local i32 @enable_kprobe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
