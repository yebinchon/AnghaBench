; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_queue_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }
%struct.work_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #0 {
  %3 = alloca %struct.workqueue_struct*, align 8
  %4 = alloca %struct.work_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %3, align 8
  store %struct.work_struct* %1, %struct.work_struct** %4, align 8
  %6 = call i32 (...) @get_cpu()
  %7 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %8 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %9 = call i32 @queue_work_on(i32 %6, %struct.workqueue_struct* %7, %struct.work_struct* %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @put_cpu()
  %11 = load i32, i32* %5, align 4
  ret i32 %11
}

declare dso_local i32 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
