; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_async.c_async_manager_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_async.c_async_manager_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wq = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@async_new = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@thread_count = common dso_local global i32 0, align 4
@entry_count = common dso_local global i32 0, align 4
@MAX_THREADS = common dso_local global i32 0, align 4
@async_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"async/%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @async_manager_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_manager_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @wq, align 4
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @DECLARE_WAITQUEUE(i32 %5, i32 %6)
  %8 = call i32 @add_wait_queue(i32* @async_new, i32* @wq)
  br label %9

9:                                                ; preds = %45, %1
  %10 = call i32 (...) @kthread_should_stop()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %15 = call i32 @set_current_state(i32 %14)
  %16 = call i32 @atomic_read(i32* @thread_count)
  store i32 %16, i32* %3, align 4
  %17 = call i32 (...) @rmb()
  %18 = call i32 @atomic_read(i32* @entry_count)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %42, %35, %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MAX_THREADS, align 4
  %26 = icmp slt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %45

29:                                               ; preds = %27
  %30 = load i32, i32* @async_thread, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @kthread_run(i32 %30, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @msleep(i32 100)
  br label %19

37:                                               ; preds = %29
  %38 = load i32, i32* @MAX_THREADS, align 4
  %39 = call i32 @atomic_add_unless(i32* @thread_count, i32 1, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %19

45:                                               ; preds = %41, %27
  %46 = call i32 (...) @schedule()
  br label %9

47:                                               ; preds = %9
  %48 = call i32 @remove_wait_queue(i32* @async_new, i32* @wq)
  ret i32 0
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
