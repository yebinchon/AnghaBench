; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c___do_huge_pmd_anonymous_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c___do_huge_pmd_anonymous_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@anon_rss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, %struct.page*)* @__do_huge_pmd_anonymous_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_huge_pmd_anonymous_page(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, %struct.page* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.page* %4, %struct.page** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.page*, %struct.page** %11, align 8
  %16 = call i32 @PageCompound(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @VM_BUG_ON(i32 %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @pte_alloc_one(%struct.mm_struct* %21, i64 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = load %struct.page*, %struct.page** %11, align 8
  %32 = call i32 @mem_cgroup_uncharge_page(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %11, align 8
  %34 = call i32 @put_page(%struct.page* %33)
  %35 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %35, i32* %6, align 4
  br label %102

36:                                               ; preds = %5
  %37 = load %struct.page*, %struct.page** %11, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @HPAGE_PMD_NR, align 4
  %40 = call i32 @clear_huge_page(%struct.page* %37, i64 %38, i32 %39)
  %41 = load %struct.page*, %struct.page** %11, align 8
  %42 = call i32 @__SetPageUptodate(%struct.page* %41)
  %43 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pmd_none(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %36
  %55 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %56 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.page*, %struct.page** %11, align 8
  %59 = call i32 @mem_cgroup_uncharge_page(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = call i32 @put_page(%struct.page* %60)
  %62 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @pte_free(%struct.mm_struct* %62, i32 %63)
  br label %100

65:                                               ; preds = %36
  %66 = load %struct.page*, %struct.page** %11, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mk_pmd(%struct.page* %66, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @pmd_mkdirty(i32 %71)
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %74 = call i32 @maybe_pmd_mkwrite(i32 %72, %struct.vm_area_struct* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @pmd_mkhuge(i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.page*, %struct.page** %11, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @page_add_new_anon_rmap(%struct.page* %77, %struct.vm_area_struct* %78, i64 %79)
  %81 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @set_pmd_at(%struct.mm_struct* %81, i64 %82, i32* %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %88 = call i32 @prepare_pmd_huge_pte(i32 %86, %struct.mm_struct* %87)
  %89 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %90 = load i32, i32* @anon_rss, align 4
  %91 = load i32, i32* @HPAGE_PMD_NR, align 4
  %92 = call i32 @add_mm_counter(%struct.mm_struct* %89, i32 %90, i32 %91)
  %93 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %94 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %98 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  br label %100

100:                                              ; preds = %65, %54
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %30
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @pte_alloc_one(%struct.mm_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mem_cgroup_uncharge_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @clear_huge_page(%struct.page*, i64, i32) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pte_free(%struct.mm_struct*, i32) #1

declare dso_local i32 @mk_pmd(%struct.page*, i32) #1

declare dso_local i32 @maybe_pmd_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i32 @pmd_mkhuge(i32) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @prepare_pmd_huge_pte(i32, %struct.mm_struct*) #1

declare dso_local i32 @add_mm_counter(%struct.mm_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
