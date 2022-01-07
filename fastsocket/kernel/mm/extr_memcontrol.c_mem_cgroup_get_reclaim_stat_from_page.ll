; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_get_reclaim_stat_from_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_get_reclaim_stat_from_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_reclaim_stat = type { i32 }
%struct.page = type { i32 }
%struct.page_cgroup = type { i32 }
%struct.mem_cgroup_per_zone = type { %struct.zone_reclaim_stat }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zone_reclaim_stat* @mem_cgroup_get_reclaim_stat_from_page(%struct.page* %0) #0 {
  %2 = alloca %struct.zone_reclaim_stat*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page_cgroup*, align 8
  %5 = alloca %struct.mem_cgroup_per_zone*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = call i64 (...) @mem_cgroup_disabled()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.zone_reclaim_stat* null, %struct.zone_reclaim_stat** %2, align 8
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %10)
  store %struct.page_cgroup* %11, %struct.page_cgroup** %4, align 8
  %12 = load %struct.page_cgroup*, %struct.page_cgroup** %4, align 8
  %13 = call i32 @PageCgroupUsed(%struct.page_cgroup* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store %struct.zone_reclaim_stat* null, %struct.zone_reclaim_stat** %2, align 8
  br label %29

16:                                               ; preds = %9
  %17 = call i32 (...) @smp_rmb()
  %18 = load %struct.page_cgroup*, %struct.page_cgroup** %4, align 8
  %19 = getelementptr inbounds %struct.page_cgroup, %struct.page_cgroup* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call %struct.mem_cgroup_per_zone* @page_cgroup_zoneinfo(i32 %20, %struct.page* %21)
  store %struct.mem_cgroup_per_zone* %22, %struct.mem_cgroup_per_zone** %5, align 8
  %23 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %5, align 8
  %24 = icmp ne %struct.mem_cgroup_per_zone* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store %struct.zone_reclaim_stat* null, %struct.zone_reclaim_stat** %2, align 8
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %5, align 8
  %28 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %27, i32 0, i32 0
  store %struct.zone_reclaim_stat* %28, %struct.zone_reclaim_stat** %2, align 8
  br label %29

29:                                               ; preds = %26, %25, %15, %8
  %30 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %2, align 8
  ret %struct.zone_reclaim_stat* %30
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local %struct.page_cgroup* @lookup_page_cgroup(%struct.page*) #1

declare dso_local i32 @PageCgroupUsed(%struct.page_cgroup*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.mem_cgroup_per_zone* @page_cgroup_zoneinfo(i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
