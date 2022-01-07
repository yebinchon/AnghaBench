; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i32 }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.cpuset = type { i32 }

@cpuset_attach_nodemask_from = common dso_local global i32 0, align 4
@cpuset_attach_nodemask_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_subsys*, %struct.cgroup*, %struct.cgroup*, %struct.task_struct*)* @cpuset_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_attach(%struct.cgroup_subsys* %0, %struct.cgroup* %1, %struct.cgroup* %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.cgroup_subsys*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.cgroup*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.cpuset*, align 8
  %11 = alloca %struct.cpuset*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %5, align 8
  store %struct.cgroup* %1, %struct.cgroup** %6, align 8
  store %struct.cgroup* %2, %struct.cgroup** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %12 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %13 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %12)
  store %struct.cpuset* %13, %struct.cpuset** %10, align 8
  %14 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %15 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %14)
  store %struct.cpuset* %15, %struct.cpuset** %11, align 8
  %16 = load %struct.cpuset*, %struct.cpuset** %11, align 8
  %17 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @cpuset_attach_nodemask_from, align 4
  %19 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %20 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @cpuset_attach_nodemask_to, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %23 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %22)
  store %struct.mm_struct* %23, %struct.mm_struct** %9, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %25 = icmp ne %struct.mm_struct* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %28 = call i32 @mpol_rebind_mm(%struct.mm_struct* %27, i32* @cpuset_attach_nodemask_to)
  %29 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %30 = call i64 @is_memory_migrate(%struct.cpuset* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %34 = call i32 @cpuset_migrate_mm(%struct.mm_struct* %33, i32* @cpuset_attach_nodemask_from, i32* @cpuset_attach_nodemask_to)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %37 = call i32 @mmput(%struct.mm_struct* %36)
  br label %38

38:                                               ; preds = %35, %4
  ret void
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @mpol_rebind_mm(%struct.mm_struct*, i32*) #1

declare dso_local i64 @is_memory_migrate(%struct.cpuset*) #1

declare dso_local i32 @cpuset_migrate_mm(%struct.mm_struct*, i32*, i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
