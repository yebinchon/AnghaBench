; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_swap_statistics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_swap_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.mem_cgroup_stat }
%struct.mem_cgroup_stat = type { %struct.mem_cgroup_stat_cpu* }
%struct.mem_cgroup_stat_cpu = type { i32 }

@MEM_CGROUP_STAT_SWAPOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i32)* @mem_cgroup_swap_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_cgroup_swap_statistics(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_cgroup_stat*, align 8
  %7 = alloca %struct.mem_cgroup_stat_cpu*, align 8
  %8 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 -1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %14 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %13, i32 0, i32 0
  store %struct.mem_cgroup_stat* %14, %struct.mem_cgroup_stat** %6, align 8
  %15 = call i32 (...) @get_cpu()
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mem_cgroup_stat*, %struct.mem_cgroup_stat** %6, align 8
  %17 = getelementptr inbounds %struct.mem_cgroup_stat, %struct.mem_cgroup_stat* %16, i32 0, i32 0
  %18 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mem_cgroup_stat_cpu, %struct.mem_cgroup_stat_cpu* %18, i64 %20
  store %struct.mem_cgroup_stat_cpu* %21, %struct.mem_cgroup_stat_cpu** %7, align 8
  %22 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %7, align 8
  %23 = load i32, i32* @MEM_CGROUP_STAT_SWAPOUT, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu* %22, i32 %23, i32 %24)
  %26 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu*, i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
