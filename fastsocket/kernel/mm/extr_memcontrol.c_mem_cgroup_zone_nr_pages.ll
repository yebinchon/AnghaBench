; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_zone_nr_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_zone_nr_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.zone = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mem_cgroup_per_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mem_cgroup_zone_nr_pages(%struct.mem_cgroup* %0, %struct.zone* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_cgroup_per_zone*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store %struct.zone* %1, %struct.zone** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.zone*, %struct.zone** %5, align 8
  %11 = getelementptr inbounds %struct.zone, %struct.zone* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.zone*, %struct.zone** %5, align 8
  %16 = call i32 @zone_idx(%struct.zone* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.mem_cgroup_per_zone* @mem_cgroup_zoneinfo(%struct.mem_cgroup* %17, i32 %18, i32 %19)
  store %struct.mem_cgroup_per_zone* %20, %struct.mem_cgroup_per_zone** %9, align 8
  %21 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @MEM_CGROUP_ZSTAT(%struct.mem_cgroup_per_zone* %21, i32 %22)
  ret i64 %23
}

declare dso_local i32 @zone_idx(%struct.zone*) #1

declare dso_local %struct.mem_cgroup_per_zone* @mem_cgroup_zoneinfo(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i64 @MEM_CGROUP_ZSTAT(%struct.mem_cgroup_per_zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
