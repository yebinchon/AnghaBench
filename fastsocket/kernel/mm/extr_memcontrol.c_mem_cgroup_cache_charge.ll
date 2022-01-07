; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_cache_charge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_cache_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }

@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@MEM_CGROUP_CHARGE_TYPE_CACHE = common dso_local global i32 0, align 4
@MEM_CGROUP_CHARGE_TYPE_SHMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_cache_charge(%struct.page* %0, %struct.mm_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_cgroup*, align 8
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %8, align 8
  %10 = call i64 (...) @mem_cgroup_disabled()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

13:                                               ; preds = %3
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i64 @PageCompound(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %62

18:                                               ; preds = %13
  %19 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %20 = icmp ne %struct.mm_struct* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %6, align 8
  br label %26

26:                                               ; preds = %25, %18
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i64 @page_is_file_cache(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MEM_CGROUP_CHARGE_TYPE_CACHE, align 4
  %35 = call i32 @mem_cgroup_charge_common(%struct.page* %31, %struct.mm_struct* %32, i32 %33, i32 %34, %struct.mem_cgroup* null)
  store i32 %35, i32* %4, align 4
  br label %62

36:                                               ; preds = %26
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i64 @PageSwapCache(%struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mem_cgroup_try_charge_swapin(%struct.mm_struct* %41, %struct.page* %42, i32 %43, %struct.mem_cgroup** %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %50 = load i32, i32* @MEM_CGROUP_CHARGE_TYPE_SHMEM, align 4
  %51 = call i32 @__mem_cgroup_commit_charge_swapin(%struct.page* %48, %struct.mem_cgroup* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  br label %60

53:                                               ; preds = %36
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MEM_CGROUP_CHARGE_TYPE_SHMEM, align 4
  %58 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %59 = call i32 @mem_cgroup_charge_common(%struct.page* %54, %struct.mm_struct* %55, i32 %56, i32 %57, %struct.mem_cgroup* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %30, %17, %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i64 @PageCompound(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @mem_cgroup_charge_common(%struct.page*, %struct.mm_struct*, i32, i32, %struct.mem_cgroup*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @mem_cgroup_try_charge_swapin(%struct.mm_struct*, %struct.page*, i32, %struct.mem_cgroup**) #1

declare dso_local i32 @__mem_cgroup_commit_charge_swapin(%struct.page*, %struct.mem_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
