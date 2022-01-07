; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_do_anonymous_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_do_anonymous_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@anon_rss = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32)* @do_anonymous_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_anonymous_page(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @pte_unmap(i32* %17)
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @check_stack_guard_page(%struct.vm_area_struct* %19, i64 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %24, i32* %7, align 4
  br label %131

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @my_zero_pfn(i64 %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pfn_pte(i32 %32, i32 %35)
  %37 = call i32 @pte_mkspecial(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32* @pte_offset_map_lock(%struct.mm_struct* %38, i32* %39, i64 %40, i32** %15)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pte_none(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %30
  br label %117

47:                                               ; preds = %30
  br label %107

48:                                               ; preds = %25
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %50 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %129

54:                                               ; preds = %48
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call %struct.page* @alloc_zeroed_user_highpage_movable(%struct.vm_area_struct* %55, i64 %56)
  store %struct.page* %57, %struct.page** %14, align 8
  %58 = load %struct.page*, %struct.page** %14, align 8
  %59 = icmp ne %struct.page* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %129

61:                                               ; preds = %54
  %62 = load %struct.page*, %struct.page** %14, align 8
  %63 = call i32 @__SetPageUptodate(%struct.page* %62)
  %64 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @trace_mm_anon_fault(%struct.mm_struct* %64, i64 %65)
  %67 = load %struct.page*, %struct.page** %14, align 8
  %68 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i64 @mem_cgroup_newpage_charge(%struct.page* %67, %struct.mm_struct* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %126

73:                                               ; preds = %61
  %74 = load %struct.page*, %struct.page** %14, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mk_pte(%struct.page* %74, i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @VM_WRITE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %73
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @pte_mkdirty(i32 %86)
  %88 = call i32 @pte_mkwrite(i32 %87)
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %85, %73
  %90 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32* @pte_offset_map_lock(%struct.mm_struct* %90, i32* %91, i64 %92, i32** %15)
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pte_none(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  br label %121

99:                                               ; preds = %89
  %100 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %101 = load i32, i32* @anon_rss, align 4
  %102 = call i32 @inc_mm_counter(%struct.mm_struct* %100, i32 %101)
  %103 = load %struct.page*, %struct.page** %14, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @page_add_new_anon_rmap(%struct.page* %103, %struct.vm_area_struct* %104, i64 %105)
  br label %107

107:                                              ; preds = %99, %47
  %108 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @set_pte_at(%struct.mm_struct* %108, i64 %109, i32* %110, i32 %111)
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @update_mmu_cache(%struct.vm_area_struct* %113, i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %121, %107, %46
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @pte_unmap_unlock(i32* %118, i32* %119)
  store i32 0, i32* %7, align 4
  br label %131

121:                                              ; preds = %98
  %122 = load %struct.page*, %struct.page** %14, align 8
  %123 = call i32 @mem_cgroup_uncharge_page(%struct.page* %122)
  %124 = load %struct.page*, %struct.page** %14, align 8
  %125 = call i32 @page_cache_release(%struct.page* %124)
  br label %117

126:                                              ; preds = %72
  %127 = load %struct.page*, %struct.page** %14, align 8
  %128 = call i32 @page_cache_release(%struct.page* %127)
  br label %129

129:                                              ; preds = %126, %60, %53
  %130 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %129, %117, %23
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i64 @check_stack_guard_page(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @my_zero_pfn(i64) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @alloc_zeroed_user_highpage_movable(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @trace_mm_anon_fault(%struct.mm_struct*, i64) #1

declare dso_local i64 @mem_cgroup_newpage_charge(%struct.page*, %struct.mm_struct*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @pte_mkwrite(i32) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @inc_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @mem_cgroup_uncharge_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
