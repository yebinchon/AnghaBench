; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_delayed_work_timer_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_delayed_work_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delayed_work = type { i32 }
%struct.cpu_workqueue_struct = type { %struct.workqueue_struct* }
%struct.workqueue_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @delayed_work_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delayed_work_timer_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.delayed_work*, align 8
  %4 = alloca %struct.cpu_workqueue_struct*, align 8
  %5 = alloca %struct.workqueue_struct*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.delayed_work*
  store %struct.delayed_work* %7, %struct.delayed_work** %3, align 8
  %8 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %9 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %8, i32 0, i32 0
  %10 = call %struct.cpu_workqueue_struct* @get_wq_data(i32* %9)
  store %struct.cpu_workqueue_struct* %10, %struct.cpu_workqueue_struct** %4, align 8
  %11 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %12 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %11, i32 0, i32 0
  %13 = load %struct.workqueue_struct*, %struct.workqueue_struct** %12, align 8
  store %struct.workqueue_struct* %13, %struct.workqueue_struct** %5, align 8
  %14 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %15 = call i32 (...) @smp_processor_id()
  %16 = call i32 @wq_per_cpu(%struct.workqueue_struct* %14, i32 %15)
  %17 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %18 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %17, i32 0, i32 0
  %19 = call i32 @__queue_work(i32 %16, i32* %18)
  ret void
}

declare dso_local %struct.cpu_workqueue_struct* @get_wq_data(i32*) #1

declare dso_local i32 @__queue_work(i32, i32*) #1

declare dso_local i32 @wq_per_cpu(%struct.workqueue_struct*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
