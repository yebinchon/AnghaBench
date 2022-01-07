; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_pre_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_pre_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }
%struct.cgroup = type { i32 }

@top_cpuset = common dso_local global %struct.cpuset zeroinitializer, align 4
@cpus_attach = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@cpuset_attach_nodemask_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*)* @cpuset_pre_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_pre_attach(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca %struct.cpuset*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %4 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %5 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %4)
  store %struct.cpuset* %5, %struct.cpuset** %3, align 8
  %6 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %7 = icmp eq %struct.cpuset* %6, @top_cpuset
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @cpus_attach, align 4
  %10 = load i32, i32* @cpu_possible_mask, align 4
  %11 = call i32 @cpumask_copy(i32 %9, i32 %10)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %14 = load i32, i32* @cpus_attach, align 4
  %15 = call i32 @guarantee_online_cpus(%struct.cpuset* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %18 = call i32 @guarantee_online_mems(%struct.cpuset* %17, i32* @cpuset_attach_nodemask_to)
  ret void
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @guarantee_online_cpus(%struct.cpuset*, i32) #1

declare dso_local i32 @guarantee_online_mems(%struct.cpuset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
