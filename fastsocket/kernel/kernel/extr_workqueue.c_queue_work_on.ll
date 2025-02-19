; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_queue_work_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_queue_work_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }
%struct.work_struct = type { i32 }

@WORK_STRUCT_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @queue_work_on(i32 %0, %struct.workqueue_struct* %1, %struct.work_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.workqueue_struct*, align 8
  %6 = alloca %struct.work_struct*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.workqueue_struct* %1, %struct.workqueue_struct** %5, align 8
  store %struct.work_struct* %2, %struct.work_struct** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @WORK_STRUCT_PENDING, align 4
  %9 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %10 = call i32 @work_data_bits(%struct.work_struct* %9)
  %11 = call i32 @test_and_set_bit(i32 %8, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %15 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %14, i32 0, i32 0
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @wq_per_cpu(%struct.workqueue_struct* %21, i32 %22)
  %24 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %25 = call i32 @__queue_work(i32 %23, %struct.work_struct* %24)
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %13, %3
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @work_data_bits(%struct.work_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__queue_work(i32, %struct.work_struct*) #1

declare dso_local i32 @wq_per_cpu(%struct.workqueue_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
