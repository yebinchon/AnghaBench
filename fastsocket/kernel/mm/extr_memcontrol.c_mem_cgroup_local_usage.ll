; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_local_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_local_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup_stat = type { i32 }

@MEM_CGROUP_STAT_CACHE = common dso_local global i32 0, align 4
@MEM_CGROUP_STAT_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_cgroup_stat*)* @mem_cgroup_local_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mem_cgroup_local_usage(%struct.mem_cgroup_stat* %0) #0 {
  %2 = alloca %struct.mem_cgroup_stat*, align 8
  %3 = alloca i64, align 8
  store %struct.mem_cgroup_stat* %0, %struct.mem_cgroup_stat** %2, align 8
  %4 = load %struct.mem_cgroup_stat*, %struct.mem_cgroup_stat** %2, align 8
  %5 = load i32, i32* @MEM_CGROUP_STAT_CACHE, align 4
  %6 = call i64 @mem_cgroup_read_stat(%struct.mem_cgroup_stat* %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.mem_cgroup_stat*, %struct.mem_cgroup_stat** %2, align 8
  %8 = load i32, i32* @MEM_CGROUP_STAT_RSS, align 4
  %9 = call i64 @mem_cgroup_read_stat(%struct.mem_cgroup_stat* %7, i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = add nsw i64 %10, %9
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

declare dso_local i64 @mem_cgroup_read_stat(%struct.mem_cgroup_stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
