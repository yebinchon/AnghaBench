; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_check_for_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_check_for_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32, i32 }

@release_list_lock = common dso_local global i32 0, align 4
@release_list = common dso_local global i32 0, align 4
@release_agent_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*)* @check_for_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_release(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %4 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %5 = call i64 @cgroup_is_releasable(%struct.cgroup* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %9 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %8, i32 0, i32 2
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %7
  %13 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %14 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %13, i32 0, i32 1
  %15 = call i64 @list_empty(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %19 = call i32 @cgroup_has_css_refs(%struct.cgroup* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  %22 = call i32 @spin_lock(i32* @release_list_lock)
  %23 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %24 = call i32 @cgroup_is_removed(%struct.cgroup* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %28 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %27, i32 0, i32 0
  %29 = call i64 @list_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %33 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %32, i32 0, i32 0
  %34 = call i32 @list_add(i32* %33, i32* @release_list)
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26, %21
  %36 = call i32 @spin_unlock(i32* @release_list_lock)
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @cgroup_queue_work(i32* @release_agent_work)
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %17, %12, %7, %1
  ret void
}

declare dso_local i64 @cgroup_is_releasable(%struct.cgroup*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cgroup_has_css_refs(%struct.cgroup*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cgroup_is_removed(%struct.cgroup*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cgroup_queue_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
