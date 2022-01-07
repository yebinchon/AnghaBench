; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_iter_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_iter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cgroup_iter = type { i32* }

@use_task_css_set_links = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup_iter_start(%struct.cgroup* %0, %struct.cgroup_iter* %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.cgroup_iter*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store %struct.cgroup_iter* %1, %struct.cgroup_iter** %4, align 8
  %5 = load i32, i32* @use_task_css_set_links, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 (...) @cgroup_enable_task_cg_lists()
  br label %9

9:                                                ; preds = %7, %2
  %10 = call i32 @read_lock(i32* @css_set_lock)
  %11 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %12 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %11, i32 0, i32 0
  %13 = load %struct.cgroup_iter*, %struct.cgroup_iter** %4, align 8
  %14 = getelementptr inbounds %struct.cgroup_iter, %struct.cgroup_iter* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %16 = load %struct.cgroup_iter*, %struct.cgroup_iter** %4, align 8
  %17 = call i32 @cgroup_advance_iter(%struct.cgroup* %15, %struct.cgroup_iter* %16)
  ret void
}

declare dso_local i32 @cgroup_enable_task_cg_lists(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @cgroup_advance_iter(%struct.cgroup*, %struct.cgroup_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
