; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_resize_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_resize_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32, i32 }

@MEM_CGROUP_RECLAIM_RETRIES = common dso_local global i32 0, align 4
@RES_USAGE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@set_limit_mutex = common dso_local global i32 0, align 4
@RES_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_CGROUP_RECLAIM_SHRINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, i64)* @mem_cgroup_resize_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_resize_limit(%struct.mem_cgroup* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %15 = call i32 @mem_cgroup_count_children(%struct.mem_cgroup* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @MEM_CGROUP_RECLAIM_RETRIES, align 4
  %17 = load i32, i32* %10, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %20 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %19, i32 0, i32 1
  %21 = load i32, i32* @RES_USAGE, align 4
  %22 = call i64 @res_counter_read_u64(i32* %20, i32 %21)
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %95, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %96

26:                                               ; preds = %23
  %27 = load i32, i32* @current, align 4
  %28 = call i64 @signal_pending(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %96

33:                                               ; preds = %26
  %34 = call i32 @mutex_lock(i32* @set_limit_mutex)
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %36 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %35, i32 0, i32 2
  %37 = load i32, i32* @RES_LIMIT, align 4
  %38 = call i64 @res_counter_read_u64(i32* %36, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  %45 = call i32 @mutex_unlock(i32* @set_limit_mutex)
  br label %96

46:                                               ; preds = %33
  %47 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %48 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %47, i32 0, i32 1
  %49 = load i32, i32* @RES_LIMIT, align 4
  %50 = call i64 @res_counter_read_u64(i32* %48, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %57 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %56, i32 0, i32 1
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @res_counter_set_limit(i32* %57, i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %68 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %72

69:                                               ; preds = %62
  %70 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %71 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %55
  %74 = call i32 @mutex_unlock(i32* @set_limit_mutex)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %96

78:                                               ; preds = %73
  %79 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = load i32, i32* @MEM_CGROUP_RECLAIM_SHRINK, align 4
  %82 = call i32 @mem_cgroup_reclaim(%struct.mem_cgroup* %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %84 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %83, i32 0, i32 1
  %85 = load i32, i32* @RES_USAGE, align 4
  %86 = call i64 @res_counter_read_u64(i32* %84, i32 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %5, align 4
  br label %95

93:                                               ; preds = %78
  %94 = load i64, i64* %11, align 8
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %93, %90
  br label %23

96:                                               ; preds = %77, %42, %30, %23
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %104 = call i32 @memcg_oom_recover(%struct.mem_cgroup* %103)
  br label %105

105:                                              ; preds = %102, %99, %96
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i32 @mem_cgroup_count_children(%struct.mem_cgroup*) #1

declare dso_local i64 @res_counter_read_u64(i32*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @res_counter_set_limit(i32*, i64) #1

declare dso_local i32 @mem_cgroup_reclaim(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @memcg_oom_recover(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
