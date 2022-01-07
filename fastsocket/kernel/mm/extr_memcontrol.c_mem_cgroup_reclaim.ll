; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i64 }

@MEM_CGROUP_RECLAIM_NOSWAP = common dso_local global i64 0, align 8
@MEM_CGROUP_RECLAIM_SHRINK = common dso_local global i64 0, align 8
@MEM_CGROUP_MAX_RECLAIM_LOOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_cgroup*, i32, i64)* @mem_cgroup_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mem_cgroup_reclaim(%struct.mem_cgroup* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @MEM_CGROUP_RECLAIM_NOSWAP, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MEM_CGROUP_RECLAIM_SHRINK, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %22 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %20, %15
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %66, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MEM_CGROUP_MAX_RECLAIM_LOOPS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @drain_all_stock_async()
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %41 = call i32 @get_swappiness(%struct.mem_cgroup* %40)
  %42 = call i64 @try_to_free_mem_cgroup_pages(%struct.mem_cgroup* %37, i32 %38, i32 %39, i32 %41)
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @MEM_CGROUP_RECLAIM_SHRINK, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %69

53:                                               ; preds = %47, %36
  %54 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %55 = call i64 @mem_cgroup_check_under_limit(%struct.mem_cgroup* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %69

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %69

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %27

69:                                               ; preds = %64, %57, %52, %27
  %70 = load i64, i64* %7, align 8
  ret i64 %70
}

declare dso_local i32 @drain_all_stock_async(...) #1

declare dso_local i64 @try_to_free_mem_cgroup_pages(%struct.mem_cgroup*, i32, i32, i32) #1

declare dso_local i32 @get_swappiness(%struct.mem_cgroup*) #1

declare dso_local i64 @mem_cgroup_check_under_limit(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
