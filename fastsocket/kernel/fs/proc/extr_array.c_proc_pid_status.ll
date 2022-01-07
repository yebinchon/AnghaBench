; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_array.c_proc_pid_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_array.c_proc_pid_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pid_status(%struct.seq_file* %0, %struct.pid_namespace* %1, %struct.pid* %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %6, align 8
  store %struct.pid* %2, %struct.pid** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %11 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %10)
  store %struct.mm_struct* %11, %struct.mm_struct** %9, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %14 = call i32 @task_name(%struct.seq_file* %12, %struct.task_struct* %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %16 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %17 = load %struct.pid*, %struct.pid** %7, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %19 = call i32 @task_state(%struct.seq_file* %15, %struct.pid_namespace* %16, %struct.pid* %17, %struct.task_struct* %18)
  %20 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %21 = icmp ne %struct.mm_struct* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %25 = call i32 @task_mem(%struct.seq_file* %23, %struct.mm_struct* %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %27 = call i32 @mmput(%struct.mm_struct* %26)
  br label %28

28:                                               ; preds = %22, %4
  %29 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %31 = call i32 @task_sig(%struct.seq_file* %29, %struct.task_struct* %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %34 = call i32 @task_cap(%struct.seq_file* %32, %struct.task_struct* %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %37 = call i32 @cpuset_task_status_allowed(%struct.seq_file* %35, %struct.task_struct* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %40 = call i32 @task_context_switch_counts(%struct.seq_file* %38, %struct.task_struct* %39)
  ret i32 0
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @task_name(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @task_state(%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*) #1

declare dso_local i32 @task_mem(%struct.seq_file*, %struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @task_sig(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @task_cap(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @cpuset_task_status_allowed(%struct.seq_file*, %struct.task_struct*) #1

declare dso_local i32 @task_context_switch_counts(%struct.seq_file*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
