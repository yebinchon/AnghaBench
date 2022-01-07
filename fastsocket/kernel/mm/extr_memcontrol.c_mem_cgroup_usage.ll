; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32 }

@RES_USAGE = common dso_local global i32 0, align 4
@MEM_CGROUP_STAT_CACHE = common dso_local global i32 0, align 4
@MEM_CGROUP_STAT_RSS = common dso_local global i32 0, align 4
@MEM_CGROUP_STAT_SWAPOUT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, i32)* @mem_cgroup_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_usage(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %8 = call i32 @mem_cgroup_is_root(%struct.mem_cgroup* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %15 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %14, i32 0, i32 1
  %16 = load i32, i32* @RES_USAGE, align 4
  %17 = call i32 @res_counter_read_u64(i32* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %10
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %20 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %19, i32 0, i32 0
  %21 = load i32, i32* @RES_USAGE, align 4
  %22 = call i32 @res_counter_read_u64(i32* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %25 = load i32, i32* @MEM_CGROUP_STAT_CACHE, align 4
  %26 = call i32 @mem_cgroup_get_recursive_idx_stat(%struct.mem_cgroup* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %28 = load i32, i32* @MEM_CGROUP_STAT_RSS, align 4
  %29 = call i32 @mem_cgroup_get_recursive_idx_stat(%struct.mem_cgroup* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %36 = load i32, i32* @MEM_CGROUP_STAT_SWAPOUT, align 4
  %37 = call i32 @mem_cgroup_get_recursive_idx_stat(%struct.mem_cgroup* %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %18, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mem_cgroup_is_root(%struct.mem_cgroup*) #1

declare dso_local i32 @res_counter_read_u64(i32*, i32) #1

declare dso_local i32 @mem_cgroup_get_recursive_idx_stat(%struct.mem_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
