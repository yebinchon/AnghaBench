; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c_init_task_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-tasks.c_init_task_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_entry = type { %struct.task_entry* }

@task_list = common dso_local global %struct.task_entry* null, align 8
@highest_task_num = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_task_list() #0 {
  %1 = alloca %struct.task_entry*, align 8
  %2 = alloca %struct.task_entry*, align 8
  %3 = load %struct.task_entry*, %struct.task_entry** @task_list, align 8
  store %struct.task_entry* %3, %struct.task_entry** %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load %struct.task_entry*, %struct.task_entry** %1, align 8
  %6 = icmp ne %struct.task_entry* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.task_entry*, %struct.task_entry** %1, align 8
  store %struct.task_entry* %8, %struct.task_entry** %2, align 8
  %9 = load %struct.task_entry*, %struct.task_entry** %1, align 8
  %10 = getelementptr inbounds %struct.task_entry, %struct.task_entry* %9, i32 0, i32 0
  %11 = load %struct.task_entry*, %struct.task_entry** %10, align 8
  store %struct.task_entry* %11, %struct.task_entry** %1, align 8
  %12 = load %struct.task_entry*, %struct.task_entry** %2, align 8
  %13 = call i32 @xfree(%struct.task_entry* %12)
  br label %4

14:                                               ; preds = %4
  store %struct.task_entry* null, %struct.task_entry** @task_list, align 8
  store i64 0, i64* @highest_task_num, align 8
  ret void
}

declare dso_local i32 @xfree(%struct.task_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
