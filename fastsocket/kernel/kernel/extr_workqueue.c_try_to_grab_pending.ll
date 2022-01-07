; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_try_to_grab_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_try_to_grab_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cpu_workqueue_struct = type { i32 }

@WORK_STRUCT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_struct*)* @try_to_grab_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_grab_pending(%struct.work_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.work_struct*, align 8
  %4 = alloca %struct.cpu_workqueue_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %3, align 8
  store i32 -1, i32* %5, align 4
  %6 = load i32, i32* @WORK_STRUCT_PENDING, align 4
  %7 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %8 = call i32 @work_data_bits(%struct.work_struct* %7)
  %9 = call i32 @test_and_set_bit(i32 %6, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %14 = call %struct.cpu_workqueue_struct* @get_wq_data(%struct.work_struct* %13)
  store %struct.cpu_workqueue_struct* %14, %struct.cpu_workqueue_struct** %4, align 8
  %15 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %16 = icmp ne %struct.cpu_workqueue_struct* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %12
  %20 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %24 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %23, i32 0, i32 0
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %19
  %28 = call i32 (...) @smp_rmb()
  %29 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %30 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %31 = call %struct.cpu_workqueue_struct* @get_wq_data(%struct.work_struct* %30)
  %32 = icmp eq %struct.cpu_workqueue_struct* %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.work_struct*, %struct.work_struct** %3, align 8
  %35 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %34, i32 0, i32 0
  %36 = call i32 @list_del_init(i32* %35)
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.cpu_workqueue_struct*, %struct.cpu_workqueue_struct** %4, align 8
  %40 = getelementptr inbounds %struct.cpu_workqueue_struct, %struct.cpu_workqueue_struct* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %17, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @work_data_bits(%struct.work_struct*) #1

declare dso_local %struct.cpu_workqueue_struct* @get_wq_data(%struct.work_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
