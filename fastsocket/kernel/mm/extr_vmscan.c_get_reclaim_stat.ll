; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_get_reclaim_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_get_reclaim_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_reclaim_stat = type { i32 }
%struct.mem_cgroup_zone = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.zone_reclaim_stat }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zone_reclaim_stat* (%struct.mem_cgroup_zone*)* @get_reclaim_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zone_reclaim_stat* @get_reclaim_stat(%struct.mem_cgroup_zone* %0) #0 {
  %2 = alloca %struct.zone_reclaim_stat*, align 8
  %3 = alloca %struct.mem_cgroup_zone*, align 8
  store %struct.mem_cgroup_zone* %0, %struct.mem_cgroup_zone** %3, align 8
  %4 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %3, align 8
  %5 = call i32 @scanning_global_lru(%struct.mem_cgroup_zone* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %3, align 8
  %9 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %3, align 8
  %12 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call %struct.zone_reclaim_stat* @mem_cgroup_get_reclaim_stat(i32 %10, %struct.TYPE_2__* %13)
  store %struct.zone_reclaim_stat* %14, %struct.zone_reclaim_stat** %2, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %3, align 8
  %17 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.zone_reclaim_stat* %19, %struct.zone_reclaim_stat** %2, align 8
  br label %20

20:                                               ; preds = %15, %7
  %21 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %2, align 8
  ret %struct.zone_reclaim_stat* %21
}

declare dso_local i32 @scanning_global_lru(%struct.mem_cgroup_zone*) #1

declare dso_local %struct.zone_reclaim_stat* @mem_cgroup_get_reclaim_stat(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
