; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_change_nodemask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_change_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cgroup_scanner = type { i32, i32* }
%struct.mm_struct = type { i32 }
%struct.cpuset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.cgroup_scanner*)* @cpuset_change_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_change_nodemask(%struct.task_struct* %0, %struct.cgroup_scanner* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.cgroup_scanner*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.cgroup_scanner* %1, %struct.cgroup_scanner** %4, align 8
  %10 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %4, align 8
  %11 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.cgroup_scanner*, %struct.cgroup_scanner** %4, align 8
  %14 = getelementptr inbounds %struct.cgroup_scanner, %struct.cgroup_scanner* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.cpuset* @cgroup_cs(i32 %15)
  store %struct.cpuset* %16, %struct.cpuset** %6, align 8
  %17 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %18 = call i32 @guarantee_online_mems(%struct.cpuset* %17, i32* %9)
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = call i32 @cpuset_change_task_nodemask(%struct.task_struct* %19, i32* %9)
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %21)
  store %struct.mm_struct* %22, %struct.mm_struct** %5, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = icmp ne %struct.mm_struct* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %28 = call i32 @is_memory_migrate(%struct.cpuset* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %30 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %31 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %30, i32 0, i32 0
  %32 = call i32 @mpol_rebind_mm(%struct.mm_struct* %29, i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %39 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %38, i32 0, i32 0
  %40 = call i32 @cpuset_migrate_mm(%struct.mm_struct* %36, i32* %37, i32* %39)
  br label %41

41:                                               ; preds = %35, %26
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = call i32 @mmput(%struct.mm_struct* %42)
  br label %44

44:                                               ; preds = %41, %25
  ret void
}

declare dso_local %struct.cpuset* @cgroup_cs(i32) #1

declare dso_local i32 @guarantee_online_mems(%struct.cpuset*, i32*) #1

declare dso_local i32 @cpuset_change_task_nodemask(%struct.task_struct*, i32*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @is_memory_migrate(%struct.cpuset*) #1

declare dso_local i32 @mpol_rebind_mm(%struct.mm_struct*, i32*) #1

declare dso_local i32 @cpuset_migrate_mm(%struct.mm_struct*, i32*, i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
