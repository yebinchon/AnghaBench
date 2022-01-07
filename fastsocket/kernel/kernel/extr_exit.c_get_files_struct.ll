; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_get_files_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_get_files_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_struct = type { i32 }
%struct.task_struct = type { %struct.files_struct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.files_struct* @get_files_struct(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.files_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call i32 @task_lock(%struct.task_struct* %4)
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load %struct.files_struct*, %struct.files_struct** %7, align 8
  store %struct.files_struct* %8, %struct.files_struct** %3, align 8
  %9 = load %struct.files_struct*, %struct.files_struct** %3, align 8
  %10 = icmp ne %struct.files_struct* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.files_struct*, %struct.files_struct** %3, align 8
  %13 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %12, i32 0, i32 0
  %14 = call i32 @atomic_inc(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = call i32 @task_unlock(%struct.task_struct* %16)
  %18 = load %struct.files_struct*, %struct.files_struct** %3, align 8
  ret %struct.files_struct* %18
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
