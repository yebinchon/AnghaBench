; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_charge_statistics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_charge_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.mem_cgroup_stat }
%struct.mem_cgroup_stat = type { %struct.mem_cgroup_stat_cpu* }
%struct.mem_cgroup_stat_cpu = type { i32 }
%struct.page_cgroup = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@MEM_CGROUP_STAT_CACHE = common dso_local global i32 0, align 4
@MEM_CGROUP_STAT_RSS = common dso_local global i32 0, align 4
@MEM_CGROUP_STAT_PGPGIN_COUNT = common dso_local global i32 0, align 4
@MEM_CGROUP_STAT_PGPGOUT_COUNT = common dso_local global i32 0, align 4
@MEM_CGROUP_STAT_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, %struct.page_cgroup*, i64)* @mem_cgroup_charge_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_cgroup_charge_statistics(%struct.mem_cgroup* %0, %struct.page_cgroup* %1, i64 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca %struct.page_cgroup*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mem_cgroup_stat*, align 8
  %8 = alloca %struct.mem_cgroup_stat_cpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store %struct.page_cgroup* %1, %struct.page_cgroup** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %12 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %11, i32 0, i32 0
  store %struct.mem_cgroup_stat* %12, %struct.mem_cgroup_stat** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = ashr i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = call i32 (...) @get_cpu()
  store i32 %16, i32* %10, align 4
  %17 = load %struct.mem_cgroup_stat*, %struct.mem_cgroup_stat** %7, align 8
  %18 = getelementptr inbounds %struct.mem_cgroup_stat, %struct.mem_cgroup_stat* %17, i32 0, i32 0
  %19 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mem_cgroup_stat_cpu, %struct.mem_cgroup_stat_cpu* %19, i64 %21
  store %struct.mem_cgroup_stat_cpu* %22, %struct.mem_cgroup_stat_cpu** %8, align 8
  %23 = load %struct.page_cgroup*, %struct.page_cgroup** %5, align 8
  %24 = call i64 @PageCgroupCache(%struct.page_cgroup* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %8, align 8
  %28 = load i32, i32* @MEM_CGROUP_STAT_CACHE, align 4
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu* %27, i32 %28, i32 %30)
  br label %38

32:                                               ; preds = %3
  %33 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %8, align 8
  %34 = load i32, i32* @MEM_CGROUP_STAT_RSS, align 4
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu* %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i64, i64* %9, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %8, align 8
  %43 = load i32, i32* @MEM_CGROUP_STAT_PGPGIN_COUNT, align 4
  %44 = call i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu* %42, i32 %43, i32 1)
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %8, align 8
  %47 = load i32, i32* @MEM_CGROUP_STAT_PGPGOUT_COUNT, align 4
  %48 = call i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu* %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %8, align 8
  %51 = load i32, i32* @MEM_CGROUP_STAT_EVENTS, align 4
  %52 = call i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu* %50, i32 %51, i32 1)
  %53 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @PageCgroupCache(%struct.page_cgroup*) #1

declare dso_local i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu*, i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
