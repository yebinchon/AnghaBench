; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_flush_delayed_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_flush_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delayed_work = type { i32, i32 }
%struct.cpu_workqueue_struct = type { i32 }

@keventd_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_delayed_work(%struct.delayed_work* %0) #0 {
  %2 = alloca %struct.delayed_work*, align 8
  %3 = alloca %struct.cpu_workqueue_struct*, align 8
  store %struct.delayed_work* %0, %struct.delayed_work** %2, align 8
  %4 = load %struct.delayed_work*, %struct.delayed_work** %2, align 8
  %5 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %4, i32 0, i32 1
  %6 = call i64 @del_timer_sync(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* @keventd_wq, align 4
  %10 = call i32 (...) @get_cpu()
  %11 = call %struct.cpu_workqueue_struct* @wq_per_cpu(i32 %9, i32 %10)
  store %struct.cpu_workqueue_struct* %11, %struct.cpu_workqueue_struct** %3, align 8
  %12 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %3, align 8
  %13 = load %struct.delayed_work*, %struct.delayed_work** %2, align 8
  %14 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %13, i32 0, i32 0
  %15 = call i32 @__queue_work(%struct.cpu_workqueue_struct* %12, i32* %14)
  %16 = call i32 (...) @put_cpu()
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.delayed_work*, %struct.delayed_work** %2, align 8
  %19 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %18, i32 0, i32 0
  %20 = call i32 @flush_work(i32* %19)
  ret void
}

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local %struct.cpu_workqueue_struct* @wq_per_cpu(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @__queue_work(%struct.cpu_workqueue_struct*, i32*) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
