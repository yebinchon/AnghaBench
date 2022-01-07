; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c___css_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c___css_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32, %struct.cgroup* }
%struct.cgroup = type { i32 }

@CGRP_RELEASABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__css_put(%struct.cgroup_subsys_state* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca i32, align 4
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  %8 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %7, i32 0, i32 1
  %9 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  store %struct.cgroup* %9, %struct.cgroup** %5, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  %13 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %12, i32 0, i32 0
  %14 = call i32 @atomic_sub_return(i32 %11, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %19 = call i64 @notify_on_release(%struct.cgroup* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* @CGRP_RELEASABLE, align 4
  %23 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %24 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %27 = call i32 @check_for_release(%struct.cgroup* %26)
  br label %28

28:                                               ; preds = %21, %17
  %29 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %30 = call i32 @cgroup_wakeup_rmdir_waiter(%struct.cgroup* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @atomic_sub_return(i32, i32*) #1

declare dso_local i64 @notify_on_release(%struct.cgroup*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @check_for_release(%struct.cgroup*) #1

declare dso_local i32 @cgroup_wakeup_rmdir_waiter(%struct.cgroup*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
