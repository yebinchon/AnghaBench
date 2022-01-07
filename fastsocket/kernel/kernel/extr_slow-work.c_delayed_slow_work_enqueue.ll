; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_delayed_slow_work_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_delayed_slow_work_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delayed_slow_work = type { %struct.TYPE_2__, %struct.slow_work }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.slow_work = type { i32, i32 }

@slow_work_user_count = common dso_local global i64 0, align 8
@SLOW_WORK_CANCELLING = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@SLOW_WORK_PENDING = common dso_local global i32 0, align 4
@slow_work_queue_lock = common dso_local global i32 0, align 4
@SLOW_WORK_DELAYED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@delayed_slow_work_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delayed_slow_work_enqueue(%struct.delayed_slow_work* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.delayed_slow_work*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.slow_work*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.delayed_slow_work* %0, %struct.delayed_slow_work** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.delayed_slow_work*, %struct.delayed_slow_work** %4, align 8
  %10 = getelementptr inbounds %struct.delayed_slow_work, %struct.delayed_slow_work* %9, i32 0, i32 1
  store %struct.slow_work* %10, %struct.slow_work** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.delayed_slow_work*, %struct.delayed_slow_work** %4, align 8
  %15 = getelementptr inbounds %struct.delayed_slow_work, %struct.delayed_slow_work* %14, i32 0, i32 1
  %16 = call i32 @slow_work_enqueue(%struct.slow_work* %15)
  store i32 %16, i32* %3, align 4
  br label %100

17:                                               ; preds = %2
  %18 = load i64, i64* @slow_work_user_count, align 8
  %19 = icmp sle i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.slow_work*, %struct.slow_work** %6, align 8
  %23 = icmp ne %struct.slow_work* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.slow_work*, %struct.slow_work** %6, align 8
  %28 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load i32, i32* @SLOW_WORK_CANCELLING, align 4
  %35 = load %struct.slow_work*, %struct.slow_work** %6, align 8
  %36 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %17
  %40 = load i32, i32* @ECANCELED, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %100

42:                                               ; preds = %17
  %43 = load i32, i32* @SLOW_WORK_PENDING, align 4
  %44 = load %struct.slow_work*, %struct.slow_work** %6, align 8
  %45 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %44, i32 0, i32 0
  %46 = call i32 @test_and_set_bit_lock(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %92, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_lock_irqsave(i32* @slow_work_queue_lock, i64 %49)
  %51 = load i32, i32* @SLOW_WORK_CANCELLING, align 4
  %52 = load %struct.slow_work*, %struct.slow_work** %6, align 8
  %53 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %93

57:                                               ; preds = %48
  %58 = load %struct.slow_work*, %struct.slow_work** %6, align 8
  %59 = call i32 @slow_work_get_ref(%struct.slow_work* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %96

63:                                               ; preds = %57
  %64 = load i32, i32* @SLOW_WORK_DELAYED, align 4
  %65 = load %struct.slow_work*, %struct.slow_work** %6, align 8
  %66 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %65, i32 0, i32 0
  %67 = call i64 @test_and_set_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (...) @BUG()
  br label %71

71:                                               ; preds = %69, %63
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.delayed_slow_work*, %struct.delayed_slow_work** %4, align 8
  %76 = getelementptr inbounds %struct.delayed_slow_work, %struct.delayed_slow_work* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i64 %74, i64* %77, align 8
  %78 = load %struct.slow_work*, %struct.slow_work** %6, align 8
  %79 = ptrtoint %struct.slow_work* %78 to i64
  %80 = load %struct.delayed_slow_work*, %struct.delayed_slow_work** %4, align 8
  %81 = getelementptr inbounds %struct.delayed_slow_work, %struct.delayed_slow_work* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load i32, i32* @delayed_slow_work_timer, align 4
  %84 = load %struct.delayed_slow_work*, %struct.delayed_slow_work** %4, align 8
  %85 = getelementptr inbounds %struct.delayed_slow_work, %struct.delayed_slow_work* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  %87 = load %struct.delayed_slow_work*, %struct.delayed_slow_work** %4, align 8
  %88 = getelementptr inbounds %struct.delayed_slow_work, %struct.delayed_slow_work* %87, i32 0, i32 0
  %89 = call i32 @add_timer(%struct.TYPE_2__* %88)
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* @slow_work_queue_lock, i64 %90)
  br label %92

92:                                               ; preds = %71, %42
  store i32 0, i32* %3, align 4
  br label %100

93:                                               ; preds = %56
  %94 = load i32, i32* @ECANCELED, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %62
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* @slow_work_queue_lock, i64 %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %92, %39, %13
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @slow_work_enqueue(%struct.slow_work*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @slow_work_get_ref(%struct.slow_work*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
