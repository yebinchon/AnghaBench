; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_end_migration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_end_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.page = type { i32 }
%struct.page_cgroup = type { i32 }

@MEM_CGROUP_CHARGE_TYPE_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_end_migration(%struct.mem_cgroup* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page_cgroup*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %13 = icmp ne %struct.mem_cgroup* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %58

15:                                               ; preds = %4
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %17 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %16, i32 0, i32 0
  %18 = call i32 @cgroup_exclude_rmdir(i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %22, %struct.page** %9, align 8
  %23 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %23, %struct.page** %10, align 8
  br label %27

24:                                               ; preds = %15
  %25 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %25, %struct.page** %9, align 8
  %26 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %26, %struct.page** %10, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %28)
  store %struct.page_cgroup* %29, %struct.page_cgroup** %11, align 8
  %30 = load %struct.page_cgroup*, %struct.page_cgroup** %11, align 8
  %31 = call i32 @lock_page_cgroup(%struct.page_cgroup* %30)
  %32 = load %struct.page_cgroup*, %struct.page_cgroup** %11, align 8
  %33 = call i32 @ClearPageCgroupMigration(%struct.page_cgroup* %32)
  %34 = load %struct.page_cgroup*, %struct.page_cgroup** %11, align 8
  %35 = call i32 @unlock_page_cgroup(%struct.page_cgroup* %34)
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = icmp ne %struct.page* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %40)
  store %struct.page_cgroup* %41, %struct.page_cgroup** %11, align 8
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = load i32, i32* @MEM_CGROUP_CHARGE_TYPE_FORCE, align 4
  %45 = call i32 @__mem_cgroup_uncharge_common(%struct.page* %43, i32 %44)
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call %struct.page_cgroup* @lookup_page_cgroup(%struct.page* %46)
  store %struct.page_cgroup* %47, %struct.page_cgroup** %11, align 8
  %48 = load %struct.page*, %struct.page** %9, align 8
  %49 = call i64 @PageAnon(%struct.page* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = call i32 @mem_cgroup_uncharge_page(%struct.page* %52)
  br label %54

54:                                               ; preds = %51, %42
  %55 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %56 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %55, i32 0, i32 0
  %57 = call i32 @cgroup_release_and_wakeup_rmdir(i32* %56)
  br label %58

58:                                               ; preds = %54, %14
  ret void
}

declare dso_local i32 @cgroup_exclude_rmdir(i32*) #1

declare dso_local %struct.page_cgroup* @lookup_page_cgroup(%struct.page*) #1

declare dso_local i32 @lock_page_cgroup(%struct.page_cgroup*) #1

declare dso_local i32 @ClearPageCgroupMigration(%struct.page_cgroup*) #1

declare dso_local i32 @unlock_page_cgroup(%struct.page_cgroup*) #1

declare dso_local i32 @__mem_cgroup_uncharge_common(%struct.page*, i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @mem_cgroup_uncharge_page(%struct.page*) #1

declare dso_local i32 @cgroup_release_and_wakeup_rmdir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
