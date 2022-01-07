; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_sw_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_sw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.perf_sample_data = type { i32 }

@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__perf_sw_event(i32 %0, i32 %1, %struct.pt_regs* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_sample_data, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @preempt_disable_notrace()
  %12 = call i32 (...) @perf_swevent_get_recursion_context()
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %27

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %9, i32 %17)
  %19 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %23 = call i32 @do_perf_sw_event(i32 %19, i32 %20, i32 %21, %struct.perf_sample_data* %9, %struct.pt_regs* %22)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @perf_swevent_put_recursion_context(i32 %24)
  %26 = call i32 (...) @preempt_enable_notrace()
  br label %27

27:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @preempt_disable_notrace(...) #1

declare dso_local i32 @perf_swevent_get_recursion_context(...) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32) #1

declare dso_local i32 @do_perf_sw_event(i32, i32, i32, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @perf_swevent_put_recursion_context(i32) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
