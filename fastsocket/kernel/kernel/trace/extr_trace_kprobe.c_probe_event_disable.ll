; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_probe_event_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_probe_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i64 }
%struct.trace_probe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TP_FLAG_TRACE = common dso_local global i32 0, align 4
@TP_FLAG_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftrace_event_call*)* @probe_event_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_event_disable(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca %struct.ftrace_event_call*, align 8
  %3 = alloca %struct.trace_probe*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %2, align 8
  %4 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %5 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.trace_probe*
  store %struct.trace_probe* %7, %struct.trace_probe** %3, align 8
  %8 = load i32, i32* @TP_FLAG_TRACE, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %11 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %15 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TP_FLAG_TRACE, align 4
  %18 = load i32, i32* @TP_FLAG_PROFILE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %1
  %23 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %24 = call i64 @trace_probe_is_return(%struct.trace_probe* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %28 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %27, i32 0, i32 1
  %29 = call i32 @disable_kretprobe(%struct.TYPE_2__* %28)
  br label %35

30:                                               ; preds = %22
  %31 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %32 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @disable_kprobe(i32* %33)
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i64 @trace_probe_is_return(%struct.trace_probe*) #1

declare dso_local i32 @disable_kretprobe(%struct.TYPE_2__*) #1

declare dso_local i32 @disable_kprobe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
