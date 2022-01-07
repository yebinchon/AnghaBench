; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_unregister_trace_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_unregister_trace_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_probe*)* @unregister_trace_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_trace_probe(%struct.trace_probe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_probe*, align 8
  store %struct.trace_probe* %0, %struct.trace_probe** %3, align 8
  %4 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %5 = call i64 @trace_probe_is_enabled(%struct.trace_probe* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %12 = call i64 @trace_probe_is_return(%struct.trace_probe* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %16 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %15, i32 0, i32 1
  %17 = call i32 @unregister_kretprobe(%struct.TYPE_2__* %16)
  br label %23

18:                                               ; preds = %10
  %19 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %20 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @unregister_kprobe(i32* %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %25 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %24, i32 0, i32 0
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %28 = call i32 @unregister_probe_event(%struct.trace_probe* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @trace_probe_is_enabled(%struct.trace_probe*) #1

declare dso_local i64 @trace_probe_is_return(%struct.trace_probe*) #1

declare dso_local i32 @unregister_kretprobe(%struct.TYPE_2__*) #1

declare dso_local i32 @unregister_kprobe(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_probe_event(%struct.trace_probe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
