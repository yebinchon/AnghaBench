; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_insert_wq_barrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_insert_wq_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_workqueue_struct = type { i32 }
%struct.wq_barrier = type { i32, i32 }
%struct.list_head = type { i32 }

@wq_barrier_func = common dso_local global i32 0, align 4
@WORK_STRUCT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_workqueue_struct*, %struct.wq_barrier*, %struct.list_head*)* @insert_wq_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_wq_barrier(%struct.cpu_workqueue_struct* %0, %struct.wq_barrier* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.cpu_workqueue_struct*, align 8
  %5 = alloca %struct.wq_barrier*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.cpu_workqueue_struct* %0, %struct.cpu_workqueue_struct** %4, align 8
  store %struct.wq_barrier* %1, %struct.wq_barrier** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.wq_barrier*, %struct.wq_barrier** %5, align 8
  %8 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %7, i32 0, i32 0
  %9 = load i32, i32* @wq_barrier_func, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load i32, i32* @WORK_STRUCT_PENDING, align 4
  %12 = load %struct.wq_barrier*, %struct.wq_barrier** %5, align 8
  %13 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %12, i32 0, i32 0
  %14 = call i32 @work_data_bits(i32* %13)
  %15 = call i32 @__set_bit(i32 %11, i32 %14)
  %16 = load %struct.wq_barrier*, %struct.wq_barrier** %5, align 8
  %17 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %16, i32 0, i32 1
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %20 = load %struct.wq_barrier*, %struct.wq_barrier** %5, align 8
  %21 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %20, i32 0, i32 0
  %22 = load %struct.list_head*, %struct.list_head** %6, align 8
  %23 = call i32 @insert_work(%struct.cpu_workqueue_struct* %19, i32* %21, %struct.list_head* %22)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @work_data_bits(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @insert_work(%struct.cpu_workqueue_struct*, i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
