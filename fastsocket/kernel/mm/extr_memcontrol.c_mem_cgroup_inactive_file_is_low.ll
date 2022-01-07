; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_inactive_file_is_low.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_inactive_file_is_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.zone = type { i32 }

@LRU_INACTIVE_FILE = common dso_local global i32 0, align 4
@LRU_ACTIVE_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_inactive_file_is_low(%struct.mem_cgroup* %0, %struct.zone* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store %struct.zone* %1, %struct.zone** %4, align 8
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %8 = load %struct.zone*, %struct.zone** %4, align 8
  %9 = load i32, i32* @LRU_INACTIVE_FILE, align 4
  %10 = call i64 @mem_cgroup_zone_nr_pages(%struct.mem_cgroup* %7, %struct.zone* %8, i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %12 = load %struct.zone*, %struct.zone** %4, align 8
  %13 = load i32, i32* @LRU_ACTIVE_FILE, align 4
  %14 = call i64 @mem_cgroup_zone_nr_pages(%struct.mem_cgroup* %11, %struct.zone* %12, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %15, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @mem_cgroup_zone_nr_pages(%struct.mem_cgroup*, %struct.zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
