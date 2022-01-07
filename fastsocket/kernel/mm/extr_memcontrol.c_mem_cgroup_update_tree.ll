; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_update_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_update_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.page = type { i32 }
%struct.mem_cgroup_per_zone = type { i64 }
%struct.mem_cgroup_tree_per_zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, %struct.page*)* @mem_cgroup_update_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_cgroup_update_tree(%struct.mem_cgroup* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem_cgroup_per_zone*, align 8
  %7 = alloca %struct.mem_cgroup_tree_per_zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @page_to_nid(%struct.page* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i32 @page_zonenum(%struct.page* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call %struct.mem_cgroup_tree_per_zone* @soft_limit_tree_from_page(%struct.page* %14)
  store %struct.mem_cgroup_tree_per_zone* %15, %struct.mem_cgroup_tree_per_zone** %7, align 8
  br label %16

16:                                               ; preds = %57, %2
  %17 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %18 = icmp ne %struct.mem_cgroup* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.mem_cgroup_per_zone* @mem_cgroup_zoneinfo(%struct.mem_cgroup* %20, i32 %21, i32 %22)
  store %struct.mem_cgroup_per_zone* %23, %struct.mem_cgroup_per_zone** %6, align 8
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %25 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %24, i32 0, i32 0
  %26 = call i64 @res_counter_soft_limit_excess(i32* %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %6, align 8
  %31 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29, %19
  %35 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %7, align 8
  %36 = getelementptr inbounds %struct.mem_cgroup_tree_per_zone, %struct.mem_cgroup_tree_per_zone* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %6, align 8
  %39 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %44 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %6, align 8
  %45 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %7, align 8
  %46 = call i32 @__mem_cgroup_remove_exceeded(%struct.mem_cgroup* %43, %struct.mem_cgroup_per_zone* %44, %struct.mem_cgroup_tree_per_zone* %45)
  br label %47

47:                                               ; preds = %42, %34
  %48 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %49 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %6, align 8
  %50 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @__mem_cgroup_insert_exceeded(%struct.mem_cgroup* %48, %struct.mem_cgroup_per_zone* %49, %struct.mem_cgroup_tree_per_zone* %50, i64 %51)
  %53 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %7, align 8
  %54 = getelementptr inbounds %struct.mem_cgroup_tree_per_zone, %struct.mem_cgroup_tree_per_zone* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  br label %56

56:                                               ; preds = %47, %29
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %59 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %58)
  store %struct.mem_cgroup* %59, %struct.mem_cgroup** %3, align 8
  br label %16

60:                                               ; preds = %16
  ret void
}

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @page_zonenum(%struct.page*) #1

declare dso_local %struct.mem_cgroup_tree_per_zone* @soft_limit_tree_from_page(%struct.page*) #1

declare dso_local %struct.mem_cgroup_per_zone* @mem_cgroup_zoneinfo(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i64 @res_counter_soft_limit_excess(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__mem_cgroup_remove_exceeded(%struct.mem_cgroup*, %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_tree_per_zone*) #1

declare dso_local i32 @__mem_cgroup_insert_exceeded(%struct.mem_cgroup*, %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_tree_per_zone*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
