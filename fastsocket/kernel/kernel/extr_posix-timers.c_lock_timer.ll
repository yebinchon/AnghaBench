; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_lock_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_lock_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.k_itimer = type { i64, i32 }

@posix_timers_id = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.k_itimer* (i64, i64*)* @lock_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.k_itimer* @lock_timer(i64 %0, i64* %1) #0 {
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.k_itimer*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = call %struct.k_itimer* @idr_find(i32* @posix_timers_id, i32 %9)
  store %struct.k_itimer* %10, %struct.k_itimer** %6, align 8
  %11 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %12 = icmp ne %struct.k_itimer* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %15 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %14, i32 0, i32 1
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %15, i64 %17)
  %19 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %20 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  store %struct.k_itimer* %28, %struct.k_itimer** %3, align 8
  br label %37

29:                                               ; preds = %13
  %30 = load %struct.k_itimer*, %struct.k_itimer** %6, align 8
  %31 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %30, i32 0, i32 1
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = call i32 (...) @rcu_read_unlock()
  store %struct.k_itimer* null, %struct.k_itimer** %3, align 8
  br label %37

37:                                               ; preds = %35, %26
  %38 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  ret %struct.k_itimer* %38
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.k_itimer* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
