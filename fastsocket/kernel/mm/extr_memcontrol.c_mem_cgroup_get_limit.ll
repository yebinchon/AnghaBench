; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_get_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_get_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32 }

@RES_LIMIT = common dso_local global i32 0, align 4
@total_swap_pages = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_get_limit(%struct.mem_cgroup* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %2, align 8
  %5 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %6 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %5, i32 0, i32 1
  %7 = load i32, i32* @RES_LIMIT, align 4
  %8 = call i32 @res_counter_read_u64(i32* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %10 = call i64 @get_swappiness(%struct.mem_cgroup* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @total_swap_pages, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %18, i32 0, i32 0
  %20 = load i32, i32* @RES_LIMIT, align 4
  %21 = call i32 @res_counter_read_u64(i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %12, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @res_counter_read_u64(i32*, i32) #1

declare dso_local i64 @get_swappiness(%struct.mem_cgroup*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
