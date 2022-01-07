; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_attach_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_attach_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.task_struct = type { i32 }
%struct.cpuset = type { i32 }

@cpus_attach = common dso_local global i32 0, align 4
@cpuset_attach_nodemask_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*, %struct.task_struct*)* @cpuset_attach_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_attach_task(%struct.cgroup* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpuset*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %8 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %7)
  store %struct.cpuset* %8, %struct.cpuset** %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = load i32, i32* @cpus_attach, align 4
  %11 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = call i32 @cpuset_change_task_nodemask(%struct.task_struct* %14, i32* @cpuset_attach_nodemask_to)
  %16 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call i32 @cpuset_update_task_spread_flag(%struct.cpuset* %16, %struct.task_struct* %17)
  ret void
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpuset_change_task_nodemask(%struct.task_struct*, i32*) #1

declare dso_local i32 @cpuset_update_task_spread_flag(%struct.cpuset*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
