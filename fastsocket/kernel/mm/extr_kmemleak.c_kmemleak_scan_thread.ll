; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_kmemleak_scan_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_kmemleak_scan_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kmemleak_scan_thread.first_run = internal global i32 1, align 4
@.str = private unnamed_addr constant [42 x i8] c"Automatic memory scanning thread started\0A\00", align 1
@current = common dso_local global i32 0, align 4
@SECS_FIRST_SCAN = common dso_local global i32 0, align 4
@jiffies_scan_wait = common dso_local global i64 0, align 8
@scan_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Automatic memory scanning thread ended\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kmemleak_scan_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmemleak_scan_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @set_user_nice(i32 %5, i32 10)
  %7 = load i32, i32* @kmemleak_scan_thread.first_run, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  store i32 0, i32* @kmemleak_scan_thread.first_run, align 4
  %10 = load i32, i32* @SECS_FIRST_SCAN, align 4
  %11 = call i32 @ssleep(i32 %10)
  br label %12

12:                                               ; preds = %9, %1
  br label %13

13:                                               ; preds = %34, %12
  %14 = call i32 (...) @kthread_should_stop()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i64, i64* @jiffies_scan_wait, align 8
  store i64 %18, i64* %3, align 8
  %19 = call i32 @mutex_lock(i32* @scan_mutex)
  %20 = call i32 (...) @kmemleak_scan()
  %21 = call i32 @mutex_unlock(i32* @scan_mutex)
  br label %22

22:                                               ; preds = %31, %17
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 (...) @kthread_should_stop()
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @schedule_timeout_interruptible(i64 %32)
  store i64 %33, i64* %3, align 8
  br label %22

34:                                               ; preds = %29
  br label %13

35:                                               ; preds = %13
  %36 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kmemleak_scan(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @schedule_timeout_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
