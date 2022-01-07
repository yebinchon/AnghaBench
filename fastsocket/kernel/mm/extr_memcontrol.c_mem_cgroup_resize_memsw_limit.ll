; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_resize_memsw_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_resize_memsw_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@MEM_CGROUP_RECLAIM_RETRIES = common dso_local global i32 0, align 4
@RES_USAGE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@set_limit_mutex = common dso_local global i32 0, align 4
@RES_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_CGROUP_RECLAIM_NOSWAP = common dso_local global i32 0, align 4
@MEM_CGROUP_RECLAIM_SHRINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, i64)* @mem_cgroup_resize_memsw_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_resize_memsw_limit(%struct.mem_cgroup* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %14 = call i32 @mem_cgroup_count_children(%struct.mem_cgroup* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @MEM_CGROUP_RECLAIM_RETRIES, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %21 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %20, i32 0, i32 1
  %22 = load i32, i32* @RES_USAGE, align 4
  %23 = call i64 @res_counter_read_u64(i32* %21, i32 %22)
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %98, %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %99

27:                                               ; preds = %24
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @signal_pending(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINTR, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %99

34:                                               ; preds = %27
  %35 = call i32 @mutex_lock(i32* @set_limit_mutex)
  %36 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %37 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %36, i32 0, i32 2
  %38 = load i32, i32* @RES_LIMIT, align 4
  %39 = call i64 @res_counter_read_u64(i32* %37, i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  %46 = call i32 @mutex_unlock(i32* @set_limit_mutex)
  br label %99

47:                                               ; preds = %34
  %48 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %49 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %48, i32 0, i32 1
  %50 = load i32, i32* @RES_LIMIT, align 4
  %51 = call i64 @res_counter_read_u64(i32* %49, i32 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %58 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %57, i32 0, i32 1
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @res_counter_set_limit(i32* %58, i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %69 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  br label %73

70:                                               ; preds = %63
  %71 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %72 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %56
  %75 = call i32 @mutex_unlock(i32* @set_limit_mutex)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %99

79:                                               ; preds = %74
  %80 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = load i32, i32* @MEM_CGROUP_RECLAIM_NOSWAP, align 4
  %83 = load i32, i32* @MEM_CGROUP_RECLAIM_SHRINK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @mem_cgroup_reclaim(%struct.mem_cgroup* %80, i32 %81, i32 %84)
  %86 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %87 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %86, i32 0, i32 1
  %88 = load i32, i32* @RES_USAGE, align 4
  %89 = call i64 @res_counter_read_u64(i32* %87, i32 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %5, align 4
  br label %98

96:                                               ; preds = %79
  %97 = load i64, i64* %9, align 8
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %96, %93
  br label %24

99:                                               ; preds = %78, %43, %31, %24
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %107 = call i32 @memcg_oom_recover(%struct.mem_cgroup* %106)
  br label %108

108:                                              ; preds = %105, %102, %99
  %109 = load i32, i32* %11, align 4
  ret i32 %109
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
