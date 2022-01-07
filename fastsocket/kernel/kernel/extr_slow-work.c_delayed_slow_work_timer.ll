; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_delayed_slow_work_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_delayed_slow_work_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.slow_work = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.list_head* }

@SLOW_WORK_VERY_SLOW = common dso_local global i32 0, align 4
@vslow_work_queue_waits_for_occupation = common dso_local global i32 0, align 4
@vslow_work_queue = common dso_local global %struct.list_head zeroinitializer, align 4
@slow_work_queue_waits_for_occupation = common dso_local global i32 0, align 4
@slow_work_queue = common dso_local global %struct.list_head zeroinitializer, align 4
@slow_work_queue_lock = common dso_local global i32 0, align 4
@SLOW_WORK_CANCELLING = common dso_local global i32 0, align 4
@SLOW_WORK_DELAYED = common dso_local global i32 0, align 4
@SLOW_WORK_EXECUTING = common dso_local global i32 0, align 4
@SLOW_WORK_ENQ_DEFERRED = common dso_local global i32 0, align 4
@slow_work_thread_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @delayed_slow_work_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delayed_slow_work_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.slow_work*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.slow_work*
  store %struct.slow_work* %11, %struct.slow_work** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @SLOW_WORK_VERY_SLOW, align 4
  %13 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %14 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32* @vslow_work_queue_waits_for_occupation, i32** %3, align 8
  store %struct.list_head* @vslow_work_queue, %struct.list_head** %4, align 8
  br label %19

18:                                               ; preds = %1
  store i32* @slow_work_queue_waits_for_occupation, i32** %3, align 8
  store %struct.list_head* @slow_work_queue, %struct.list_head** %4, align 8
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @slow_work_queue_lock, i64 %20)
  %22 = load i32, i32* @SLOW_WORK_CANCELLING, align 4
  %23 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %24 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %19
  %32 = load i32, i32* @SLOW_WORK_DELAYED, align 4
  %33 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %34 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %33, i32 0, i32 1
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load i32, i32* @SLOW_WORK_EXECUTING, align 4
  %37 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %38 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @SLOW_WORK_ENQ_DEFERRED, align 4
  %43 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %44 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %43, i32 0, i32 1
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  store i32 1, i32* %8, align 4
  br label %61

46:                                               ; preds = %31
  %47 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %48 = call i32 @slow_work_mark_time(%struct.slow_work* %47)
  %49 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %50 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %49, i32 0, i32 0
  %51 = load %struct.list_head*, %struct.list_head** %4, align 8
  %52 = call i32 @list_add_tail(%struct.TYPE_2__* %50, %struct.list_head* %51)
  store i32 1, i32* %7, align 4
  %53 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %54 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.list_head*, %struct.list_head** %55, align 8
  %57 = load %struct.list_head*, %struct.list_head** %4, align 8
  %58 = icmp eq %struct.list_head* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %19
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* @slow_work_queue_lock, i64 %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.slow_work*, %struct.slow_work** %5, align 8
  %69 = call i32 @slow_work_put_ref(%struct.slow_work* %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @wake_up(i32* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @wake_up(i32* @slow_work_thread_wq)
  br label %81

81:                                               ; preds = %79, %76
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @slow_work_mark_time(%struct.slow_work*) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_2__*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @slow_work_put_ref(%struct.slow_work*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
