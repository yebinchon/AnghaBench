; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_task_in_mem_cgroup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_task_in_mem_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mem_cgroup = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_in_mem_cgroup(%struct.task_struct* %0, %struct.mem_cgroup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %5, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* %9)
  store %struct.task_struct* %10, %struct.task_struct** %8, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mem_cgroup* @try_get_mem_cgroup_from_mm(i32 %17)
  store %struct.mem_cgroup* %18, %struct.mem_cgroup** %7, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %20 = call i32 @task_unlock(%struct.task_struct* %19)
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %22 = icmp ne %struct.mem_cgroup* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %14
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %26 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %31 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %30, i32 0, i32 0
  %32 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %33 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %32, i32 0, i32 0
  %34 = call i32 @css_is_ancestor(i32* %31, i32* %33)
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %24
  %36 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %37 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %38 = icmp eq %struct.mem_cgroup* %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %42 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %41, i32 0, i32 0
  %43 = call i32 @css_put(i32* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %23, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.task_struct* @find_lock_task_mm(%struct.task_struct*) #1

declare dso_local %struct.mem_cgroup* @try_get_mem_cgroup_from_mm(i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @css_is_ancestor(i32*, i32*) #1

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
