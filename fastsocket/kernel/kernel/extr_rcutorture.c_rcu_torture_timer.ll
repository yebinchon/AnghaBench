; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)*, i32 (i32)*, i32 (i32*)* }
%struct.rcu_torture = type { i64, i32 }

@rcu_torture_timer.rand = internal global i32 0, align 4
@rcu_torture_timer.rand_lock = internal global i32 0, align 4
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@rcu_torture_current = common dso_local global i32 0, align 4
@n_rcu_torture_mberror = common dso_local global i32 0, align 4
@n_rcu_torture_timers = common dso_local global i32 0, align 4
@RCU_TORTURE_PIPE_LEN = common dso_local global i32 0, align 4
@rcu_torture_count = common dso_local global i32 0, align 4
@rcu_torture_batch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rcu_torture_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_torture_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcu_torture*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (...)*, i32 (...)** %8, align 8
  %10 = call i32 (...) %9()
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = call i32 (...) %13()
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @rcu_torture_current, align 4
  %16 = call %struct.rcu_torture* @rcu_dereference(i32 %15)
  store %struct.rcu_torture* %16, %struct.rcu_torture** %5, align 8
  %17 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %18 = icmp eq %struct.rcu_torture* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 %22(i32 %23)
  br label %83

25:                                               ; preds = %1
  %26 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %27 = getelementptr inbounds %struct.rcu_torture, %struct.rcu_torture* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @atomic_inc(i32* @n_rcu_torture_mberror)
  br label %32

32:                                               ; preds = %30, %25
  %33 = call i32 @spin_lock(i32* @rcu_torture_timer.rand_lock)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32 (i32*)*, i32 (i32*)** %35, align 8
  %37 = call i32 %36(i32* @rcu_torture_timer.rand)
  %38 = load i32, i32* @n_rcu_torture_timers, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @n_rcu_torture_timers, align 4
  %40 = call i32 @spin_unlock(i32* @rcu_torture_timer.rand_lock)
  %41 = call i32 (...) @preempt_disable()
  %42 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %43 = getelementptr inbounds %struct.rcu_torture, %struct.rcu_torture* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %32
  %51 = load i32, i32* @rcu_torture_count, align 4
  %52 = call i32* @__get_cpu_var(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %50
  %70 = load i32, i32* @rcu_torture_batch, align 4
  %71 = call i32* @__get_cpu_var(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = call i32 (...) @preempt_enable()
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32 (i32)*, i32 (i32)** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 %80(i32 %81)
  br label %83

83:                                               ; preds = %69, %19
  ret void
}

declare dso_local %struct.rcu_torture* @rcu_dereference(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32* @__get_cpu_var(i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
