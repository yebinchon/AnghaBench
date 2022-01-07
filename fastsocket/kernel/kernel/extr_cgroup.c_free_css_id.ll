; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_free_css_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_free_css_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i32, i32, i32 }
%struct.cgroup_subsys_state = type { %struct.css_id* }
%struct.css_id = type { i32, i32, %struct.css_id* }

@__free_css_id_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_css_id(%struct.cgroup_subsys* %0, %struct.cgroup_subsys_state* %1) #0 {
  %3 = alloca %struct.cgroup_subsys*, align 8
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.css_id*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %3, align 8
  store %struct.cgroup_subsys_state* %1, %struct.cgroup_subsys_state** %4, align 8
  %6 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %7 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %6, i32 0, i32 0
  %8 = load %struct.css_id*, %struct.css_id** %7, align 8
  store %struct.css_id* %8, %struct.css_id** %5, align 8
  %9 = load %struct.css_id*, %struct.css_id** %5, align 8
  %10 = icmp ne %struct.css_id* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %3, align 8
  %14 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.css_id*, %struct.css_id** %5, align 8
  %21 = getelementptr inbounds %struct.css_id, %struct.css_id* %20, i32 0, i32 2
  %22 = load %struct.css_id*, %struct.css_id** %21, align 8
  %23 = call i32 @rcu_assign_pointer(%struct.css_id* %22, i32* null)
  %24 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %25 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %24, i32 0, i32 0
  %26 = load %struct.css_id*, %struct.css_id** %25, align 8
  %27 = call i32 @rcu_assign_pointer(%struct.css_id* %26, i32* null)
  %28 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %3, align 8
  %29 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %3, align 8
  %32 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %31, i32 0, i32 1
  %33 = load %struct.css_id*, %struct.css_id** %5, align 8
  %34 = getelementptr inbounds %struct.css_id, %struct.css_id* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @idr_remove(i32* %32, i32 %35)
  %37 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %3, align 8
  %38 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.css_id*, %struct.css_id** %5, align 8
  %41 = getelementptr inbounds %struct.css_id, %struct.css_id* %40, i32 0, i32 0
  %42 = load i32, i32* @__free_css_id_cb, align 4
  %43 = call i32 @call_rcu(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.css_id*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
