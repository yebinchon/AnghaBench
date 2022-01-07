; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_slow_work_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_slow_work_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@slow_work_queue_lock = common dso_local global i32 0, align 4
@slow_work_ids = common dso_local global i32 0, align 4
@SLOW_WORK_THREAD_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"kslowd%03u\00", align 1
@vslow_work_proportion = common dso_local global i32 0, align 4
@slow_work_thread_count = common dso_local global i32 0, align 4
@slow_work_thread_wq = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@slow_work_threads_should_exit = common dso_local global i64 0, align 8
@slow_work_cull = common dso_local global i64 0, align 8
@slow_work_queue = common dso_local global i32 0, align 4
@vslow_work_queue = common dso_local global i32 0, align 4
@slow_work_min_threads = common dso_local global i32 0, align 4
@slow_work_last_thread_exited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @slow_work_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slow_work_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = call i32 (...) @set_freezable()
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = call i32 @set_user_nice(%struct.TYPE_4__* %8, i32 -5)
  %10 = call i32 @spin_lock_irq(i32* @slow_work_queue_lock)
  %11 = load i32, i32* @slow_work_ids, align 4
  %12 = load i32, i32* @SLOW_WORK_THREAD_LIMIT, align 4
  %13 = call i32 @find_first_zero_bit(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SLOW_WORK_THREAD_LIMIT, align 4
  %19 = icmp sge i32 %17, %18
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ true, %1 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @slow_work_ids, align 4
  %26 = call i32 @__set_bit(i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @slow_work_set_thread_pid(i32 %27, i32 %30)
  %32 = call i32 @spin_unlock_irq(i32* @slow_work_queue_lock)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sprintf(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %103, %91, %20
  %39 = load i32, i32* @vslow_work_proportion, align 4
  store i32 %39, i32* %3, align 4
  %40 = call i32 @atomic_read(i32* @slow_work_thread_count)
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sdiv i32 %43, 100
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %46 = call i32 @prepare_to_wait_exclusive(i32* @slow_work_thread_wq, i32* @wait, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %48 = call i32 @freezing(%struct.TYPE_4__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %38
  %51 = load i64, i64* @slow_work_threads_should_exit, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @slow_work_available(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @slow_work_cull, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 (...) @schedule()
  br label %62

62:                                               ; preds = %60, %57, %53, %50, %38
  %63 = call i32 @finish_wait(i32* @slow_work_thread_wq, i32* @wait)
  %64 = call i32 (...) @try_to_freeze()
  %65 = load i32, i32* @vslow_work_proportion, align 4
  store i32 %65, i32* %3, align 4
  %66 = call i32 @atomic_read(i32* @slow_work_thread_count)
  %67 = load i32, i32* %3, align 4
  %68 = mul nsw i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = sdiv i32 %69, 100
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i64 @slow_work_available(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %62
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @slow_work_execute(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = call i32 (...) @cond_resched()
  %80 = call i64 @list_empty(i32* @slow_work_queue)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = call i64 @list_empty(i32* @vslow_work_queue)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = call i32 @atomic_read(i32* @slow_work_thread_count)
  %87 = load i32, i32* @slow_work_min_threads, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 (...) @slow_work_schedule_cull()
  br label %91

91:                                               ; preds = %89, %85, %82, %78
  br label %38

92:                                               ; preds = %74, %62
  %93 = load i64, i64* @slow_work_threads_should_exit, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %104

96:                                               ; preds = %92
  %97 = load i64, i64* @slow_work_cull, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = call i64 (...) @slow_work_cull_thread()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %104

103:                                              ; preds = %99, %96
  br label %38

104:                                              ; preds = %102, %95
  %105 = call i32 @spin_lock_irq(i32* @slow_work_queue_lock)
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @slow_work_set_thread_pid(i32 %106, i32 0)
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @slow_work_ids, align 4
  %110 = call i32 @__clear_bit(i32 %108, i32 %109)
  %111 = call i32 @spin_unlock_irq(i32* @slow_work_queue_lock)
  %112 = call i64 @atomic_dec_and_test(i32* @slow_work_thread_count)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = call i32 @complete_and_exit(i32* @slow_work_last_thread_exited, i32 0)
  br label %116

116:                                              ; preds = %114, %104
  ret i32 0
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @set_user_nice(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @slow_work_set_thread_pid(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, i32*, i32) #1

declare dso_local i32 @freezing(%struct.TYPE_4__*) #1

declare dso_local i64 @slow_work_available(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @slow_work_execute(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @slow_work_schedule_cull(...) #1

declare dso_local i64 @slow_work_cull_thread(...) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
