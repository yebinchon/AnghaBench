; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_free_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_free_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i32 0, i32 1
  %5 = call i32 @prop_local_destroy_single(i32* %4)
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @account_kernel_stack(i32 %8, i32 -1)
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free_thread_info(i32 %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = call i32 @rt_mutex_debug_task_free(%struct.task_struct* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = call i32 @ftrace_graph_exit_task(%struct.task_struct* %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %19 = call i32 @tracehook_free_task(%struct.task_struct* %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = call i32 @free_task_struct(%struct.task_struct* %20)
  ret void
}

declare dso_local i32 @prop_local_destroy_single(i32*) #1

declare dso_local i32 @account_kernel_stack(i32, i32) #1

declare dso_local i32 @free_thread_info(i32) #1

declare dso_local i32 @rt_mutex_debug_task_free(%struct.task_struct*) #1

declare dso_local i32 @ftrace_graph_exit_task(%struct.task_struct*) #1

declare dso_local i32 @tracehook_free_task(%struct.task_struct*) #1

declare dso_local i32 @free_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
