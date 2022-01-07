; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_enqueue_pushable_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_enqueue_pushable_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*)* @enqueue_pushable_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_pushable_task(%struct.rq* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
