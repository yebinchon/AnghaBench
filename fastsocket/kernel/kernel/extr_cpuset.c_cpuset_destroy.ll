; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i32 }
%struct.cpuset = type { i32 }

@CS_SCHED_LOAD_BALANCE = common dso_local global i32 0, align 4
@number_of_cpusets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_subsys*, %struct.cgroup*)* @cpuset_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_destroy(%struct.cgroup_subsys* %0, %struct.cgroup* %1) #0 {
  %3 = alloca %struct.cgroup_subsys*, align 8
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cpuset*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %3, align 8
  store %struct.cgroup* %1, %struct.cgroup** %4, align 8
  %6 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %7 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %6)
  store %struct.cpuset* %7, %struct.cpuset** %5, align 8
  %8 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %9 = call i64 @is_sched_load_balance(%struct.cpuset* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @CS_SCHED_LOAD_BALANCE, align 4
  %13 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %14 = call i32 @update_flag(i32 %12, %struct.cpuset* %13, i32 0)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @number_of_cpusets, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @number_of_cpusets, align 4
  %18 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %19 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free_cpumask_var(i32 %20)
  %22 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %23 = call i32 @kfree(%struct.cpuset* %22)
  ret void
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local i64 @is_sched_load_balance(%struct.cpuset*) #1

declare dso_local i32 @update_flag(i32, %struct.cpuset*, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @kfree(%struct.cpuset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
