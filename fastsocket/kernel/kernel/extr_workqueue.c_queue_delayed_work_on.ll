; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_queue_delayed_work_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_queue_delayed_work_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }
%struct.delayed_work = type { %struct.timer_list, %struct.work_struct }
%struct.timer_list = type { i64, i32, i64 }
%struct.work_struct = type { i32 }

@WORK_STRUCT_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@delayed_work_timer_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @queue_delayed_work_on(i32 %0, %struct.workqueue_struct* %1, %struct.delayed_work* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.workqueue_struct*, align 8
  %7 = alloca %struct.delayed_work*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timer_list*, align 8
  %11 = alloca %struct.work_struct*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.workqueue_struct* %1, %struct.workqueue_struct** %6, align 8
  store %struct.delayed_work* %2, %struct.delayed_work** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %13 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %12, i32 0, i32 0
  store %struct.timer_list* %13, %struct.timer_list** %10, align 8
  %14 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %15 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %14, i32 0, i32 1
  store %struct.work_struct* %15, %struct.work_struct** %11, align 8
  %16 = load i32, i32* @WORK_STRUCT_PENDING, align 4
  %17 = load %struct.work_struct*, %struct.work_struct** %11, align 8
  %18 = call i32 @work_data_bits(%struct.work_struct* %17)
  %19 = call i32 @test_and_set_bit(i32 %16, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %4
  %22 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %23 = call i32 @timer_pending(%struct.timer_list* %22)
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.work_struct*, %struct.work_struct** %11, align 8
  %26 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %25, i32 0, i32 0
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %33 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %32, i32 0, i32 0
  %34 = call i32 @timer_stats_timer_set_start_info(%struct.timer_list* %33)
  %35 = load %struct.work_struct*, %struct.work_struct** %11, align 8
  %36 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %37 = call i32 (...) @raw_smp_processor_id()
  %38 = call i32 @wq_per_cpu(%struct.workqueue_struct* %36, i32 %37)
  %39 = call i32 @set_wq_data(%struct.work_struct* %35, i32 %38)
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %40, %41
  %43 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %44 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %46 = ptrtoint %struct.delayed_work* %45 to i64
  %47 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %48 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @delayed_work_timer_fn, align 4
  %50 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %51 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp sge i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %21
  %58 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @add_timer_on(%struct.timer_list* %58, i32 %59)
  br label %64

61:                                               ; preds = %21
  %62 = load %struct.timer_list*, %struct.timer_list** %10, align 8
  %63 = call i32 @add_timer(%struct.timer_list* %62)
  br label %64

64:                                               ; preds = %61, %57
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %4
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @work_data_bits(%struct.work_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @timer_stats_timer_set_start_info(%struct.timer_list*) #1

declare dso_local i32 @set_wq_data(%struct.work_struct*, i32) #1

declare dso_local i32 @wq_per_cpu(%struct.workqueue_struct*, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @add_timer_on(%struct.timer_list*, i32) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
