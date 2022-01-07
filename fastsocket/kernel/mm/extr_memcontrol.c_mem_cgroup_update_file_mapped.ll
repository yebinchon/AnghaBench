; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_update_file_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_update_file_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mem_cgroup = type { %struct.mem_cgroup_stat }
%struct.mem_cgroup_stat = type { %struct.mem_cgroup_stat_cpu* }
%struct.mem_cgroup_stat_cpu = type { i32 }
%struct.page_cgroup = type { %struct.mem_cgroup* }

@MEM_CGROUP_STAT_FILE_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_update_file_mapped(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca %struct.mem_cgroup_stat*, align 8
  %7 = alloca %struct.mem_cgroup_stat_cpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page_cgroup*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %10)
  store %struct.page_cgroup* %11, %struct.page_cgroup** %9, align 8
  %12 = load %struct.page_cgroup*, %struct.page_cgroup** %9, align 8
  %13 = icmp ne %struct.page_cgroup* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.page_cgroup*, %struct.page_cgroup** %9, align 8
  %21 = call i32 @lock_page_cgroup(%struct.page_cgroup* %20)
  %22 = load %struct.page_cgroup*, %struct.page_cgroup** %9, align 8
  %23 = getelementptr inbounds %struct.page_cgroup, %struct.page_cgroup* %22, i32 0, i32 0
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %23, align 8
  store %struct.mem_cgroup* %24, %struct.mem_cgroup** %5, align 8
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %26 = icmp ne %struct.mem_cgroup* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %61

28:                                               ; preds = %19
  %29 = load %struct.page_cgroup*, %struct.page_cgroup** %9, align 8
  %30 = call i32 @PageCgroupUsed(%struct.page_cgroup* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %61

33:                                               ; preds = %28
  %34 = call i32 (...) @smp_processor_id()
  store i32 %34, i32* %8, align 4
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %36 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %35, i32 0, i32 0
  store %struct.mem_cgroup_stat* %36, %struct.mem_cgroup_stat** %6, align 8
  %37 = load %struct.mem_cgroup_stat*, %struct.mem_cgroup_stat** %6, align 8
  %38 = getelementptr inbounds %struct.mem_cgroup_stat, %struct.mem_cgroup_stat* %37, i32 0, i32 0
  %39 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mem_cgroup_stat_cpu, %struct.mem_cgroup_stat_cpu* %39, i64 %41
  store %struct.mem_cgroup_stat_cpu* %42, %struct.mem_cgroup_stat_cpu** %7, align 8
  %43 = load %struct.mem_cgroup_stat_cpu*, %struct.mem_cgroup_stat_cpu** %7, align 8
  %44 = load i32, i32* @MEM_CGROUP_STAT_FILE_MAPPED, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu* %43, i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load %struct.page_cgroup*, %struct.page_cgroup** %9, align 8
  %51 = call i32 @SetPageCgroupFileMapped(%struct.page_cgroup* %50)
  br label %60

52:                                               ; preds = %33
  %53 = load %struct.page*, %struct.page** %3, align 8
  %54 = call i32 @page_mapped(%struct.page* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load %struct.page_cgroup*, %struct.page_cgroup** %9, align 8
  %58 = call i32 @ClearPageCgroupFileMapped(%struct.page_cgroup* %57)
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %32, %27
  %62 = load %struct.page_cgroup*, %struct.page_cgroup** %9, align 8
  %63 = call i32 @unlock_page_cgroup(%struct.page_cgroup* %62)
  br label %64

64:                                               ; preds = %61, %18
  ret void
}

declare dso_local %struct.page_cgroup* @lookup_page_cgroup(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_page_cgroup(%struct.page_cgroup*) #1

declare dso_local i32 @PageCgroupUsed(%struct.page_cgroup*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__mem_cgroup_stat_add_safe(%struct.mem_cgroup_stat_cpu*, i32, i32) #1

declare dso_local i32 @SetPageCgroupFileMapped(%struct.page_cgroup*) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i32 @ClearPageCgroupFileMapped(%struct.page_cgroup*) #1

declare dso_local i32 @unlock_page_cgroup(%struct.page_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
