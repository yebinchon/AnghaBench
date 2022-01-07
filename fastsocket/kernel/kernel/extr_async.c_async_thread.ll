; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_async.c_async_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_async.c_async_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wq = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@async_new = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@async_pending = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@thread_count = common dso_local global i32 0, align 4
@MAX_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @async_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @wq, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = call i32 @add_wait_queue(i32* @async_new, i32* @wq)
  br label %8

8:                                                ; preds = %44, %1
  %9 = call i32 (...) @kthread_should_stop()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load i32, i32* @HZ, align 4
  store i32 %13, i32* %3, align 4
  %14 = call i32 (...) @rmb()
  %15 = call i64 (...) @need_resched()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @schedule()
  br label %19

19:                                               ; preds = %17, %12
  %20 = call i64 @list_empty(i32* @async_pending)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 (...) @run_one_entry()
  br label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %26 = call i32 @set_current_state(i32 %25)
  %27 = load i32, i32* @HZ, align 4
  %28 = call i32 @schedule_timeout(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = call i32 @atomic_dec(i32* @thread_count)
  %34 = call i32 (...) @wmb()
  %35 = call i64 @list_empty(i32* @async_pending)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %45

38:                                               ; preds = %32
  %39 = load i32, i32* @MAX_THREADS, align 4
  %40 = call i32 @atomic_add_unless(i32* @thread_count, i32 1, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %45

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %29
  br label %8

45:                                               ; preds = %42, %37, %8
  %46 = call i32 @remove_wait_queue(i32* @async_new, i32* @wq)
  ret i32 0
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @run_one_entry(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
