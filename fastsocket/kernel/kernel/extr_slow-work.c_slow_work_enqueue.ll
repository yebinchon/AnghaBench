; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_slow_work_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_slow_work_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.slow_work = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.list_head* }

@SLOW_WORK_CANCELLING = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@slow_work_user_count = common dso_local global i64 0, align 8
@SLOW_WORK_PENDING = common dso_local global i32 0, align 4
@SLOW_WORK_VERY_SLOW = common dso_local global i32 0, align 4
@vslow_work_queue_waits_for_occupation = common dso_local global i32 0, align 4
@vslow_work_queue = common dso_local global %struct.list_head zeroinitializer, align 4
@slow_work_queue_waits_for_occupation = common dso_local global i32 0, align 4
@slow_work_queue = common dso_local global %struct.list_head zeroinitializer, align 4
@slow_work_queue_lock = common dso_local global i32 0, align 4
@SLOW_WORK_EXECUTING = common dso_local global i32 0, align 4
@SLOW_WORK_ENQ_DEFERRED = common dso_local global i32 0, align 4
@slow_work_thread_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slow_work_enqueue(%struct.slow_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slow_work*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.slow_work* %0, %struct.slow_work** %3, align 8
  %8 = load i32, i32* @SLOW_WORK_CANCELLING, align 4
  %9 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %10 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ECANCELED, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load i64, i64* @slow_work_user_count, align 8
  %18 = icmp sle i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %22 = icmp ne %struct.slow_work* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %27 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* @SLOW_WORK_PENDING, align 4
  %34 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %35 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %34, i32 0, i32 1
  %36 = call i32 @test_and_set_bit_lock(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %94, label %38

38:                                               ; preds = %16
  %39 = load i32, i32* @SLOW_WORK_VERY_SLOW, align 4
  %40 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %41 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %40, i32 0, i32 1
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32* @vslow_work_queue_waits_for_occupation, i32** %4, align 8
  store %struct.list_head* @vslow_work_queue, %struct.list_head** %5, align 8
  br label %46

45:                                               ; preds = %38
  store i32* @slow_work_queue_waits_for_occupation, i32** %4, align 8
  store %struct.list_head* @slow_work_queue, %struct.list_head** %5, align 8
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_lock_irqsave(i32* @slow_work_queue_lock, i64 %47)
  %49 = load i32, i32* @SLOW_WORK_CANCELLING, align 4
  %50 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %51 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = call i64 @unlikely(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %95

56:                                               ; preds = %46
  %57 = load i32, i32* @SLOW_WORK_EXECUTING, align 4
  %58 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %59 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %58, i32 0, i32 1
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @SLOW_WORK_ENQ_DEFERRED, align 4
  %64 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %65 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %64, i32 0, i32 1
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %91

67:                                               ; preds = %56
  %68 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %69 = call i32 @slow_work_get_ref(%struct.slow_work* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %98

73:                                               ; preds = %67
  %74 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %75 = call i32 @slow_work_mark_time(%struct.slow_work* %74)
  %76 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %77 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %76, i32 0, i32 0
  %78 = load %struct.list_head*, %struct.list_head** %5, align 8
  %79 = call i32 @list_add_tail(%struct.TYPE_2__* %77, %struct.list_head* %78)
  %80 = call i32 @wake_up(i32* @slow_work_thread_wq)
  %81 = load %struct.slow_work*, %struct.slow_work** %3, align 8
  %82 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.list_head*, %struct.list_head** %83, align 8
  %85 = load %struct.list_head*, %struct.list_head** %5, align 8
  %86 = icmp eq %struct.list_head* %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @wake_up(i32* %88)
  br label %90

90:                                               ; preds = %87, %73
  br label %91

91:                                               ; preds = %90, %62
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* @slow_work_queue_lock, i64 %92)
  br label %94

94:                                               ; preds = %91, %16
  store i32 0, i32* %2, align 4
  br label %102

95:                                               ; preds = %55
  %96 = load i32, i32* @ECANCELED, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %95, %72
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* @slow_work_queue_lock, i64 %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %94, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @slow_work_get_ref(%struct.slow_work*) #1

declare dso_local i32 @slow_work_mark_time(%struct.slow_work*) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_2__*, %struct.list_head*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
