; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1.c_w1_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1.c_w1_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32, i64, i32 }

@w1_timeout = common dso_local global i32 0, align 4
@W1_SEARCH = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w1_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.w1_master*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.w1_master*
  store %struct.w1_master* %6, %struct.w1_master** %3, align 8
  %7 = load i32, i32* @w1_timeout, align 4
  %8 = mul nsw i32 %7, 1000
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %46, %1
  %11 = call i64 (...) @kthread_should_stop()
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %16 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %21 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %24 = load i32, i32* @W1_SEARCH, align 4
  %25 = call i32 @w1_search_process(%struct.w1_master* %23, i32 %24)
  %26 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %27 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %19, %14
  %30 = call i32 (...) @try_to_freeze()
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = call i32 @__set_current_state(i32 %31)
  %33 = call i64 (...) @kthread_should_stop()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %47

36:                                               ; preds = %29
  %37 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %38 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @schedule_timeout(i64 %42)
  br label %46

44:                                               ; preds = %36
  %45 = call i32 (...) @schedule()
  br label %46

46:                                               ; preds = %44, %41
  br label %10

47:                                               ; preds = %35, %10
  %48 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %49 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %48, i32 0, i32 0
  %50 = call i32 @atomic_dec(i32* %49)
  ret i32 0
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w1_search_process(%struct.w1_master*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
