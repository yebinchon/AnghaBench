; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_zone_lruvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_zone_lruvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruvec = type { i32 }
%struct.zone = type { %struct.lruvec }
%struct.mem_cgroup = type { i32 }
%struct.mem_cgroup_per_zone = type { %struct.lruvec }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lruvec* @mem_cgroup_zone_lruvec(%struct.zone* %0, %struct.mem_cgroup* %1) #0 {
  %3 = alloca %struct.lruvec*, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca %struct.mem_cgroup_per_zone*, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %5, align 8
  %7 = call i64 (...) @mem_cgroup_disabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.zone*, %struct.zone** %4, align 8
  %11 = getelementptr inbounds %struct.zone, %struct.zone* %10, i32 0, i32 0
  store %struct.lruvec* %11, %struct.lruvec** %3, align 8
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %14 = load %struct.zone*, %struct.zone** %4, align 8
  %15 = call i32 @zone_to_nid(%struct.zone* %14)
  %16 = load %struct.zone*, %struct.zone** %4, align 8
  %17 = call i32 @zone_idx(%struct.zone* %16)
  %18 = call %struct.mem_cgroup_per_zone* @mem_cgroup_zoneinfo(%struct.mem_cgroup* %13, i32 %15, i32 %17)
  store %struct.mem_cgroup_per_zone* %18, %struct.mem_cgroup_per_zone** %6, align 8
  %19 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %6, align 8
  %20 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %19, i32 0, i32 0
  store %struct.lruvec* %20, %struct.lruvec** %3, align 8
  br label %21

21:                                               ; preds = %12, %9
  %22 = load %struct.lruvec*, %struct.lruvec** %3, align 8
  ret %struct.lruvec* %22
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local %struct.mem_cgroup_per_zone* @mem_cgroup_zoneinfo(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @zone_to_nid(%struct.zone*) #1

declare dso_local i32 @zone_idx(%struct.zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
