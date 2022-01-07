; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_unuse_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_unuse_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@anon_rss = common dso_local global i32 0, align 4
@swap_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i32*, i64, i32, %struct.page*)* @unuse_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_pte(%struct.vm_area_struct* %0, i32* %1, i64 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.mem_cgroup*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.page* %4, %struct.page** %11, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %12, align 8
  store i32 1, i32* %16, align 4
  %17 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %17, %struct.page** %13, align 8
  %18 = load %struct.page*, %struct.page** %11, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call %struct.page* @ksm_might_need_to_copy(%struct.page* %18, %struct.vm_area_struct* %19, i64 %20)
  store %struct.page* %21, %struct.page** %11, align 8
  %22 = load %struct.page*, %struct.page** %11, align 8
  %23 = icmp ne %struct.page* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %127

31:                                               ; preds = %5
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.page*, %struct.page** %11, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64 @mem_cgroup_try_charge_swapin(i32 %34, %struct.page* %35, i32 %36, %struct.mem_cgroup** %12)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %16, align 4
  br label %116

42:                                               ; preds = %31
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32* @pte_offset_map_lock(i32 %45, i32* %46, i64 %47, i32** %14)
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @swp_entry_to_pte(i32 %51)
  %53 = call i32 @pte_same(i32 %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %42
  %60 = load i32, i32* %16, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.mem_cgroup*, %struct.mem_cgroup** %12, align 8
  %64 = call i32 @mem_cgroup_cancel_charge_swapin(%struct.mem_cgroup* %63)
  br label %65

65:                                               ; preds = %62, %59
  store i32 0, i32* %16, align 4
  br label %112

66:                                               ; preds = %42
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @anon_rss, align 4
  %71 = call i32 @inc_mm_counter(i32 %69, i32 %70)
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @swap_usage, align 4
  %76 = call i32 @dec_mm_counter(i32 %74, i32 %75)
  %77 = load %struct.page*, %struct.page** %11, align 8
  %78 = call i32 @get_page(%struct.page* %77)
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load %struct.page*, %struct.page** %11, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mk_pte(%struct.page* %84, i32 %87)
  %89 = call i32 @pte_mkold(i32 %88)
  %90 = call i32 @set_pte_at(i32 %81, i64 %82, i32* %83, i32 %89)
  %91 = load %struct.page*, %struct.page** %11, align 8
  %92 = load %struct.page*, %struct.page** %13, align 8
  %93 = icmp eq %struct.page* %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %66
  %95 = load %struct.page*, %struct.page** %11, align 8
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @page_add_anon_rmap(%struct.page* %95, %struct.vm_area_struct* %96, i64 %97)
  br label %104

99:                                               ; preds = %66
  %100 = load %struct.page*, %struct.page** %11, align 8
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @page_add_new_anon_rmap(%struct.page* %100, %struct.vm_area_struct* %101, i64 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.page*, %struct.page** %11, align 8
  %106 = load %struct.mem_cgroup*, %struct.mem_cgroup** %12, align 8
  %107 = call i32 @mem_cgroup_commit_charge_swapin(%struct.page* %105, %struct.mem_cgroup* %106)
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @swap_free(i32 %108)
  %110 = load %struct.page*, %struct.page** %11, align 8
  %111 = call i32 @activate_page(%struct.page* %110)
  br label %112

112:                                              ; preds = %104, %65
  %113 = load i32*, i32** %15, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @pte_unmap_unlock(i32* %113, i32* %114)
  br label %116

116:                                              ; preds = %112, %39
  %117 = load %struct.page*, %struct.page** %11, align 8
  %118 = load %struct.page*, %struct.page** %13, align 8
  %119 = icmp ne %struct.page* %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.page*, %struct.page** %11, align 8
  %122 = call i32 @unlock_page(%struct.page* %121)
  %123 = load %struct.page*, %struct.page** %11, align 8
  %124 = call i32 @put_page(%struct.page* %123)
  br label %125

125:                                              ; preds = %120, %116
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %28
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local %struct.page* @ksm_might_need_to_copy(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mem_cgroup_try_charge_swapin(i32, %struct.page*, i32, %struct.mem_cgroup**) #1

declare dso_local i32* @pte_offset_map_lock(i32, i32*, i64, i32**) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i32 @mem_cgroup_cancel_charge_swapin(%struct.mem_cgroup*) #1

declare dso_local i32 @inc_mm_counter(i32, i32) #1

declare dso_local i32 @dec_mm_counter(i32, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @set_pte_at(i32, i64, i32*, i32) #1

declare dso_local i32 @pte_mkold(i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @page_add_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @mem_cgroup_commit_charge_swapin(%struct.page*, %struct.mem_cgroup*) #1

declare dso_local i32 @swap_free(i32) #1

declare dso_local i32 @activate_page(%struct.page*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
