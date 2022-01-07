; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_css_is_ancestor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_css_is_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.css_id = type { i64, i64*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @css_is_ancestor(%struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca %struct.css_id*, align 8
  %7 = alloca %struct.css_id*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cgroup_subsys_state* %1, %struct.cgroup_subsys_state** %5, align 8
  %8 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %9 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.css_id* @rcu_dereference(i32 %10)
  store %struct.css_id* %11, %struct.css_id** %6, align 8
  %12 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %13 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.css_id* @rcu_dereference(i32 %14)
  store %struct.css_id* %15, %struct.css_id** %7, align 8
  %16 = load %struct.css_id*, %struct.css_id** %6, align 8
  %17 = icmp ne %struct.css_id* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.css_id*, %struct.css_id** %7, align 8
  %20 = icmp ne %struct.css_id* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.css_id*, %struct.css_id** %6, align 8
  %23 = getelementptr inbounds %struct.css_id, %struct.css_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.css_id*, %struct.css_id** %7, align 8
  %26 = getelementptr inbounds %struct.css_id, %struct.css_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %18, %2
  store i32 0, i32* %3, align 4
  br label %44

30:                                               ; preds = %21
  %31 = load %struct.css_id*, %struct.css_id** %6, align 8
  %32 = getelementptr inbounds %struct.css_id, %struct.css_id* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.css_id*, %struct.css_id** %7, align 8
  %35 = getelementptr inbounds %struct.css_id, %struct.css_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.css_id*, %struct.css_id** %7, align 8
  %40 = getelementptr inbounds %struct.css_id, %struct.css_id* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %30, %29
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.css_id* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
