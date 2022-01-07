; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_fremap.c_zap_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_fremap.c_zap_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@file_rss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*)* @zap_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zap_pte(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @pte_present(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @pte_pfn(i32 %19)
  %21 = call i32 @flush_cache_page(%struct.vm_area_struct* %17, i64 %18, i32 %20)
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @ptep_clear_flush(%struct.vm_area_struct* %22, i64 %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %26, i64 %27, i32 %28)
  store %struct.page* %29, %struct.page** %10, align 8
  %30 = load %struct.page*, %struct.page** %10, align 8
  %31 = icmp ne %struct.page* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %16
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @pte_dirty(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.page*, %struct.page** %10, align 8
  %38 = call i32 @set_page_dirty(%struct.page* %37)
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = call i32 @page_remove_rmap(%struct.page* %40)
  %42 = load %struct.page*, %struct.page** %10, align 8
  %43 = call i32 @page_cache_release(%struct.page* %42)
  %44 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %45 = call i32 @update_hiwater_rss(%struct.mm_struct* %44)
  %46 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %47 = load i32, i32* @file_rss, align 4
  %48 = call i32 @dec_mm_counter(%struct.mm_struct* %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %16
  br label %63

50:                                               ; preds = %4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @pte_file(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @pte_to_swp_entry(i32 %55)
  %57 = call i32 @free_swap_and_cache(i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @pte_clear_not_present_full(%struct.mm_struct* %59, i64 %60, i32* %61, i32 0)
  br label %63

63:                                               ; preds = %58, %49
  ret void
}

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @ptep_clear_flush(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @page_remove_rmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @update_hiwater_rss(%struct.mm_struct*) #1

declare dso_local i32 @dec_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @pte_file(i32) #1

declare dso_local i32 @free_swap_and_cache(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i32 @pte_clear_not_present_full(%struct.mm_struct*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
