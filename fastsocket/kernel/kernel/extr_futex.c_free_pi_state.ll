; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_free_pi_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_free_pi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.futex_pi_state* }
%struct.futex_pi_state = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_pi_state*)* @free_pi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pi_state(%struct.futex_pi_state* %0) #0 {
  %2 = alloca %struct.futex_pi_state*, align 8
  store %struct.futex_pi_state* %0, %struct.futex_pi_state** %2, align 8
  %3 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %4 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %3, i32 0, i32 0
  %5 = call i32 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %10 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %15 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %20 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %19, i32 0, i32 3
  %21 = call i32 @list_del_init(i32* %20)
  %22 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %23 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_irq(i32* %25)
  %27 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %28 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %27, i32 0, i32 2
  %29 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %30 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @rt_mutex_proxy_unlock(i32* %28, %struct.TYPE_3__* %31)
  br label %33

33:                                               ; preds = %13, %8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.futex_pi_state*, %struct.futex_pi_state** %35, align 8
  %37 = icmp ne %struct.futex_pi_state* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %40 = call i32 @kfree(%struct.futex_pi_state* %39)
  br label %50

41:                                               ; preds = %33
  %42 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %43 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %42, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %43, align 8
  %44 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %45 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %44, i32 0, i32 0
  %46 = call i32 @atomic_set(i32* %45, i32 1)
  %47 = load %struct.futex_pi_state*, %struct.futex_pi_state** %2, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.futex_pi_state* %47, %struct.futex_pi_state** %49, align 8
  br label %50

50:                                               ; preds = %7, %41, %38
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rt_mutex_proxy_unlock(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.futex_pi_state*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
