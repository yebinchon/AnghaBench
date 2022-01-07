; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c__rcu_barrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c__rcu_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_state = type { i32 }
%struct.rcu_head = type opaque

@rcu_barrier_mutex = common dso_local global i32 0, align 4
@rcu_barrier_completion = common dso_local global i32 0, align 4
@rcu_barrier_cpu_count = common dso_local global i32 0, align 4
@rcu_barrier_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_state*, void (%struct.rcu_head*, void (%struct.rcu_head*)*)*)* @_rcu_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rcu_barrier(%struct.rcu_state* %0, void (%struct.rcu_head*, void (%struct.rcu_head*)*)* %1) #0 {
  %3 = alloca %struct.rcu_state*, align 8
  %4 = alloca void (%struct.rcu_head*, void (%struct.rcu_head*)*)*, align 8
  store %struct.rcu_state* %0, %struct.rcu_state** %3, align 8
  store void (%struct.rcu_head*, void (%struct.rcu_head*)*)* %1, void (%struct.rcu_head*, void (%struct.rcu_head*)*)** %4, align 8
  %5 = call i32 (...) @in_interrupt()
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = call i32 @mutex_lock(i32* @rcu_barrier_mutex)
  %8 = call i32 @init_completion(i32* @rcu_barrier_completion)
  %9 = call i32 @atomic_set(i32* @rcu_barrier_cpu_count, i32 1)
  %10 = call i32 (...) @preempt_disable()
  %11 = load %struct.rcu_state*, %struct.rcu_state** %3, align 8
  %12 = call i32 @rcu_adopt_orphan_cbs(%struct.rcu_state* %11)
  %13 = load i32, i32* @rcu_barrier_func, align 4
  %14 = load void (%struct.rcu_head*, void (%struct.rcu_head*)*)*, void (%struct.rcu_head*, void (%struct.rcu_head*)*)** %4, align 8
  %15 = bitcast void (%struct.rcu_head*, void (%struct.rcu_head*)*)* %14 to i8*
  %16 = call i32 @on_each_cpu(i32 %13, i8* %15, i32 1)
  %17 = call i32 (...) @preempt_enable()
  %18 = call i64 @atomic_dec_and_test(i32* @rcu_barrier_cpu_count)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @complete(i32* @rcu_barrier_completion)
  br label %22

22:                                               ; preds = %20, %2
  %23 = call i32 @wait_for_completion(i32* @rcu_barrier_completion)
  %24 = call i32 @mutex_unlock(i32* @rcu_barrier_mutex)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @rcu_adopt_orphan_cbs(%struct.rcu_state*) #1

declare dso_local i32 @on_each_cpu(i32, i8*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
