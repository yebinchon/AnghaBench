; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_oom_kill.c_oom_unkillable_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_oom_kill.c_oom_unkillable_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mem_cgroup = type { i32 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.mem_cgroup*, i32*)* @oom_unkillable_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oom_unkillable_task(%struct.task_struct* %0, %struct.mem_cgroup* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca i32*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = call i64 @is_global_init(%struct.task_struct* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %36

12:                                               ; preds = %3
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PF_KTHREAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %22 = icmp ne %struct.mem_cgroup* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %26 = call i32 @task_in_mem_cgroup(%struct.task_struct* %24, %struct.mem_cgroup* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %36

29:                                               ; preds = %23, %20
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @has_intersects_mems_allowed(%struct.task_struct* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34, %28, %19, %11
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @is_global_init(%struct.task_struct*) #1

declare dso_local i32 @task_in_mem_cgroup(%struct.task_struct*, %struct.mem_cgroup*) #1

declare dso_local i32 @has_intersects_mems_allowed(%struct.task_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
