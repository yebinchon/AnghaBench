; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_page_add_new_anon_rmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_page_add_new_anon_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@NR_ANON_PAGES = common dso_local global i32 0, align 4
@NR_ANON_TRANSPARENT_HUGEPAGES = common dso_local global i32 0, align 4
@LRU_ACTIVE_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_add_new_anon_rmap(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i1 [ true, %3 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @VM_BUG_ON(i32 %20)
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @SetPageSwapBacked(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 0
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @PageTransHuge(%struct.page* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %18
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = load i32, i32* @NR_ANON_PAGES, align 4
  %33 = call i32 @__inc_zone_page_state(%struct.page* %31, i32 %32)
  br label %38

34:                                               ; preds = %18
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = load i32, i32* @NR_ANON_TRANSPARENT_HUGEPAGES, align 4
  %37 = call i32 @__inc_zone_page_state(%struct.page* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @__page_set_anon_rmap(%struct.page* %39, %struct.vm_area_struct* %40, i64 %41, i32 1)
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = call i64 @page_evictable(%struct.page* %43, %struct.vm_area_struct* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = load i32, i32* @LRU_ACTIVE_ANON, align 4
  %50 = call i32 @lru_cache_add_lru(%struct.page* %48, i32 %49)
  br label %54

51:                                               ; preds = %38
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = call i32 @add_page_to_unevictable_list(%struct.page* %52)
  br label %54

54:                                               ; preds = %51, %47
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @SetPageSwapBacked(%struct.page*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @__inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @__page_set_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @page_evictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @lru_cache_add_lru(%struct.page*, i32) #1

declare dso_local i32 @add_page_to_unevictable_list(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
