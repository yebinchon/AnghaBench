; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_producer_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_producer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_start = common dso_local global i32 0, align 4
@kill_test = common dso_local global i64 0, align 8
@buffer = common dso_local global i32 0, align 4
@consumer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Sleeping for 10 secs\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SLEEP_TIME = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ring_buffer_producer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_buffer_producer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @init_completion(i32* @read_start)
  br label %4

4:                                                ; preds = %23, %1
  %5 = call i32 (...) @kthread_should_stop()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @kill_test, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i1 [ false, %4 ], [ %10, %7 ]
  br i1 %12, label %13, label %34

13:                                               ; preds = %11
  %14 = load i32, i32* @buffer, align 4
  %15 = call i32 @ring_buffer_reset(i32 %14)
  %16 = load i64, i64* @consumer, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = call i32 (...) @smp_wmb()
  %20 = load i64, i64* @consumer, align 8
  %21 = call i32 @wake_up_process(i64 %20)
  %22 = call i32 @wait_for_completion(i32* @read_start)
  br label %23

23:                                               ; preds = %18, %13
  %24 = call i32 (...) @ring_buffer_producer()
  %25 = call i32 @trace_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %27 = call i32 @set_current_state(i32 %26)
  %28 = load i32, i32* @HZ, align 4
  %29 = load i32, i32* @SLEEP_TIME, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @schedule_timeout(i32 %30)
  %32 = load i32, i32* @TASK_RUNNING, align 4
  %33 = call i32 @__set_current_state(i32 %32)
  br label %4

34:                                               ; preds = %11
  %35 = load i64, i64* @kill_test, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @wait_to_die()
  br label %39

39:                                               ; preds = %37, %34
  ret i32 0
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @ring_buffer_reset(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ring_buffer_producer(...) #1

declare dso_local i32 @trace_printk(i8*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @wait_to_die(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
