; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_bdi_writeback_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_bdi_writeback_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@dirty_writeback_interval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdi_writeback_task(%struct.bdi_writeback* %0) #0 {
  %2 = alloca %struct.bdi_writeback*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %2, align 8
  %7 = load i64, i64* @jiffies, align 8
  store i64 %7, i64* %3, align 8
  store i64 -1, i64* %4, align 8
  %8 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %9 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @trace_writeback_task_start(i32 %10)
  br label %12

12:                                               ; preds = %53, %1
  %13 = call i32 (...) @kthread_should_stop()
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %18 = call i64 @wb_do_writeback(%struct.bdi_writeback* %17, i32 0)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @trace_writeback_pages_written(i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %3, align 8
  br label %42

25:                                               ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, -1
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i64, i64* @HZ, align 8
  %30 = mul i64 300, %29
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @max(i64 %30, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %34, %35
  %37 = call i64 @time_after(i64 %33, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %55

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %25
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* @dirty_writeback_interval, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @dirty_writeback_interval, align 4
  %47 = mul nsw i32 %46, 10
  %48 = call i64 @msecs_to_jiffies(i32 %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @schedule_timeout_interruptible(i64 %49)
  br label %53

51:                                               ; preds = %42
  %52 = call i32 (...) @schedule()
  br label %53

53:                                               ; preds = %51, %45
  %54 = call i32 (...) @try_to_freeze()
  br label %12

55:                                               ; preds = %39, %12
  %56 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %57 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @trace_writeback_task_stop(i32 %58)
  ret i32 0
}

declare dso_local i32 @trace_writeback_task_start(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i64 @wb_do_writeback(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @trace_writeback_pages_written(i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @trace_writeback_task_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
