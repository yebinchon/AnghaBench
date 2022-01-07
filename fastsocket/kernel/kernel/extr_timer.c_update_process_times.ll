; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_update_process_times.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_update_process_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_process_times(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %3, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %4, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @account_process_tick(%struct.task_struct* %7, i32 %8)
  %10 = call i32 (...) @run_local_timers()
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @rcu_check_callbacks(i32 %11, i32 %12)
  %14 = call i32 (...) @printk_tick()
  %15 = call i32 (...) @scheduler_tick()
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = call i32 @run_posix_cpu_timers(%struct.task_struct* %16)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @account_process_tick(%struct.task_struct*, i32) #1

declare dso_local i32 @run_local_timers(...) #1

declare dso_local i32 @rcu_check_callbacks(i32, i32) #1

declare dso_local i32 @printk_tick(...) #1

declare dso_local i32 @scheduler_tick(...) #1

declare dso_local i32 @run_posix_cpu_timers(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
