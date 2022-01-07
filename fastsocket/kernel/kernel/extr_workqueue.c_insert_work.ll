; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_insert_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_insert_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_workqueue_struct = type { i32, i32 }
%struct.work_struct = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_workqueue_struct*, %struct.work_struct*, %struct.list_head*)* @insert_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_work(%struct.cpu_workqueue_struct* %0, %struct.work_struct* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.cpu_workqueue_struct*, align 8
  %5 = alloca %struct.work_struct*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.cpu_workqueue_struct* %0, %struct.cpu_workqueue_struct** %4, align 8
  store %struct.work_struct* %1, %struct.work_struct** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %8 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %11 = call i32 @trace_workqueue_insertion(i32 %9, %struct.work_struct* %10)
  %12 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %13 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %14 = call i32 @set_wq_data(%struct.work_struct* %12, %struct.cpu_workqueue_struct* %13)
  %15 = call i32 (...) @smp_wmb()
  %16 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %17 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %16, i32 0, i32 0
  %18 = load %struct.list_head*, %struct.list_head** %6, align 8
  %19 = call i32 @list_add_tail(i32* %17, %struct.list_head* %18)
  %20 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %20, i32 0, i32 0
  %22 = call i32 @wake_up(i32* %21)
  ret void
}

declare dso_local i32 @trace_workqueue_insertion(i32, %struct.work_struct*) #1

declare dso_local i32 @set_wq_data(%struct.work_struct*, %struct.cpu_workqueue_struct*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
