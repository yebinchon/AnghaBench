; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_release_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_release_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32, %struct.task_struct* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i64 0, align 8
@EXIT_DEAD = common dso_local global i64 0, align 8
@delayed_put_task_struct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  br label %5

5:                                                ; preds = %67, %1
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call i32 @tracehook_prepare_release_task(%struct.task_struct* %6)
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = call %struct.TYPE_4__* @__task_cred(%struct.task_struct* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @atomic_dec(i32* %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = call i32 @proc_flush_task(%struct.task_struct* %14)
  %16 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = call i32 @tracehook_finish_release_task(%struct.task_struct* %17)
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = call i32 @__exit_signal(%struct.task_struct* %19)
  store i32 0, i32* %4, align 4
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 3
  %23 = load %struct.task_struct*, %struct.task_struct** %22, align 8
  store %struct.task_struct* %23, %struct.task_struct** %3, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %26 = icmp ne %struct.task_struct* %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %5
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call i64 @thread_group_empty(%struct.task_struct* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EXIT_ZOMBIE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %39 = call i32 @task_detached(%struct.task_struct* %38)
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @do_notify_parent(%struct.task_struct* %41, i32 %44)
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = call i32 @task_detached(%struct.task_struct* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i64, i64* @EXIT_DEAD, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %37
  br label %55

55:                                               ; preds = %54, %31, %27, %5
  %56 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %57 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %58 = call i32 @release_thread(%struct.task_struct* %57)
  %59 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 1
  %61 = load i32, i32* @delayed_put_task_struct, align 4
  %62 = call i32 @call_rcu(i32* %60, i32 %61)
  %63 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  store %struct.task_struct* %63, %struct.task_struct** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %5

68:                                               ; preds = %55
  ret void
}

declare dso_local i32 @tracehook_prepare_release_task(%struct.task_struct*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_4__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @proc_flush_task(%struct.task_struct*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @tracehook_finish_release_task(%struct.task_struct*) #1

declare dso_local i32 @__exit_signal(%struct.task_struct*) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @task_detached(%struct.task_struct*) #1

declare dso_local i32 @do_notify_parent(%struct.task_struct*, i32) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @release_thread(%struct.task_struct*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
