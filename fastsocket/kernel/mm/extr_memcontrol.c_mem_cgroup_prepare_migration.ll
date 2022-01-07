; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_prepare_migration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_prepare_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.page_cgroup = type { %struct.mem_cgroup* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEM_CGROUP_CHARGE_TYPE_MAPPED = common dso_local global i32 0, align 4
@MEM_CGROUP_CHARGE_TYPE_CACHE = common dso_local global i32 0, align 4
@MEM_CGROUP_CHARGE_TYPE_SHMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_prepare_migration(%struct.page* %0, %struct.page* %1, %struct.mem_cgroup** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.mem_cgroup**, align 8
  %8 = alloca %struct.page_cgroup*, align 8
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.mem_cgroup** %2, %struct.mem_cgroup*** %7, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = call i64 (...) @mem_cgroup_disabled()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

15:                                               ; preds = %3
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %16)
  store %struct.page_cgroup* %17, %struct.page_cgroup** %8, align 8
  %18 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %19 = call i32 @lock_page_cgroup(%struct.page_cgroup* %18)
  %20 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %21 = call i64 @PageCgroupUsed(%struct.page_cgroup* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %25 = getelementptr inbounds %struct.page_cgroup, %struct.page_cgroup* %24, i32 0, i32 0
  %26 = load %struct.mem_cgroup*, %struct.mem_cgroup** %25, align 8
  store %struct.mem_cgroup* %26, %struct.mem_cgroup** %9, align 8
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %28 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %27, i32 0, i32 0
  %29 = call i32 @css_get(i32* %28)
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i64 @PageAnon(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %35 = call i32 @SetPageCgroupMigration(%struct.page_cgroup* %34)
  br label %36

36:                                               ; preds = %33, %23
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %39 = call i32 @unlock_page_cgroup(%struct.page_cgroup* %38)
  %40 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %41 = icmp ne %struct.mem_cgroup* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %100

43:                                               ; preds = %37
  %44 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %45 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %7, align 8
  store %struct.mem_cgroup* %44, %struct.mem_cgroup** %45, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %7, align 8
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = call i32 @__mem_cgroup_try_charge(i32* null, i32 %46, %struct.mem_cgroup** %47, i32 0, %struct.page* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %52 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %51, i32 0, i32 0
  %53 = call i32 @css_put(i32* %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %43
  %57 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %7, align 8
  %58 = load %struct.mem_cgroup*, %struct.mem_cgroup** %57, align 8
  %59 = icmp eq %struct.mem_cgroup* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %56, %43
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i64 @PageAnon(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %66 = call i32 @lock_page_cgroup(%struct.page_cgroup* %65)
  %67 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %68 = call i32 @ClearPageCgroupMigration(%struct.page_cgroup* %67)
  %69 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %70 = call i32 @unlock_page_cgroup(%struct.page_cgroup* %69)
  %71 = load %struct.page*, %struct.page** %5, align 8
  %72 = call i32 @mem_cgroup_uncharge_page(%struct.page* %71)
  br label %73

73:                                               ; preds = %64, %60
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %100

76:                                               ; preds = %56
  %77 = load %struct.page*, %struct.page** %6, align 8
  %78 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %77)
  store %struct.page_cgroup* %78, %struct.page_cgroup** %8, align 8
  %79 = load %struct.page*, %struct.page** %5, align 8
  %80 = call i64 @PageAnon(%struct.page* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @MEM_CGROUP_CHARGE_TYPE_MAPPED, align 4
  store i32 %83, i32* %10, align 4
  br label %93

84:                                               ; preds = %76
  %85 = load %struct.page*, %struct.page** %5, align 8
  %86 = call i64 @page_is_file_cache(%struct.page* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @MEM_CGROUP_CHARGE_TYPE_CACHE, align 4
  store i32 %89, i32* %10, align 4
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @MEM_CGROUP_CHARGE_TYPE_SHMEM, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %82
  %94 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %95 = load %struct.page_cgroup*, %struct.page_cgroup** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = call i32 @__mem_cgroup_commit_charge(%struct.mem_cgroup* %94, %struct.page_cgroup* %95, i32 %96, i32 %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %93, %73, %42, %14
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local %struct.page_cgroup* @lookup_page_cgroup(%struct.page*) #1

declare dso_local i32 @lock_page_cgroup(%struct.page_cgroup*) #1

declare dso_local i64 @PageCgroupUsed(%struct.page_cgroup*) #1

declare dso_local i32 @css_get(i32*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @SetPageCgroupMigration(%struct.page_cgroup*) #1

declare dso_local i32 @unlock_page_cgroup(%struct.page_cgroup*) #1

declare dso_local i32 @__mem_cgroup_try_charge(i32*, i32, %struct.mem_cgroup**, i32, %struct.page*, i32) #1

declare dso_local i32 @css_put(i32*) #1

declare dso_local i32 @ClearPageCgroupMigration(%struct.page_cgroup*) #1

declare dso_local i32 @mem_cgroup_uncharge_page(%struct.page*) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @__mem_cgroup_commit_charge(%struct.mem_cgroup*, %struct.page_cgroup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
