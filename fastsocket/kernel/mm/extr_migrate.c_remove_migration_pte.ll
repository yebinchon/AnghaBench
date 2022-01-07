; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_remove_migration_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_remove_migration_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@SWAP_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.vm_area_struct*, i64, i8*)* @remove_migration_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_migration_pte(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %9, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i64 @PageHuge(%struct.page* %20)
  %22 = call i64 @unlikely(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32* @huge_pte_offset(%struct.mm_struct* %25, i64 %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %159

31:                                               ; preds = %24
  %32 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  store i32* %33, i32** %16, align 8
  br label %74

34:                                               ; preds = %4
  %35 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32* @pgd_offset(%struct.mm_struct* %35, i64 %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pgd_present(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %159

43:                                               ; preds = %34
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32* @pud_offset(i32* %44, i64 %45)
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pud_present(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %159

52:                                               ; preds = %43
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32* @pmd_offset(i32* %53, i64 %54)
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @pmd_trans_huge(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %159

61:                                               ; preds = %52
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pmd_present(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %159

67:                                               ; preds = %61
  %68 = load i32*, i32** %13, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32* @pte_offset_map(i32* %68, i64 %69)
  store i32* %70, i32** %14, align 8
  %71 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32* @pte_lockptr(%struct.mm_struct* %71, i32* %72)
  store i32* %73, i32** %16, align 8
  br label %74

74:                                               ; preds = %67, %31
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @is_swap_pte(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %155

83:                                               ; preds = %74
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @pte_to_swp_entry(i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @is_migration_entry(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = call i8* @migration_entry_to_page(i32 %90)
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %83
  br label %155

95:                                               ; preds = %89
  %96 = load %struct.page*, %struct.page** %5, align 8
  %97 = call i32 @get_page(%struct.page* %96)
  %98 = load %struct.page*, %struct.page** %5, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @mk_pte(%struct.page* %98, i32 %101)
  %103 = call i32 @pte_mkold(i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @is_write_migration_entry(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %95
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @pte_mkwrite(i32 %108)
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %107, %95
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @pte_pfn(i32 %113)
  %115 = call i32 @flush_cache_page(%struct.vm_area_struct* %111, i64 %112, i32 %114)
  %116 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @set_pte_at(%struct.mm_struct* %116, i64 %117, i32* %118, i32 %119)
  %121 = load %struct.page*, %struct.page** %5, align 8
  %122 = call i64 @PageHuge(%struct.page* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %110
  %125 = load %struct.page*, %struct.page** %5, align 8
  %126 = call i64 @PageAnon(%struct.page* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.page*, %struct.page** %5, align 8
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @hugepage_add_anon_rmap(%struct.page* %129, %struct.vm_area_struct* %130, i64 %131)
  br label %136

133:                                              ; preds = %124
  %134 = load %struct.page*, %struct.page** %5, align 8
  %135 = call i32 @page_dup_rmap(%struct.page* %134)
  br label %136

136:                                              ; preds = %133, %128
  br label %150

137:                                              ; preds = %110
  %138 = load %struct.page*, %struct.page** %5, align 8
  %139 = call i64 @PageAnon(%struct.page* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.page*, %struct.page** %5, align 8
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @page_add_anon_rmap(%struct.page* %142, %struct.vm_area_struct* %143, i64 %144)
  br label %149

146:                                              ; preds = %137
  %147 = load %struct.page*, %struct.page** %5, align 8
  %148 = call i32 @page_add_file_rmap(%struct.page* %147)
  br label %149

149:                                              ; preds = %146, %141
  br label %150

150:                                              ; preds = %149, %136
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @update_mmu_cache(%struct.vm_area_struct* %151, i64 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %94, %82
  %156 = load i32*, i32** %14, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = call i32 @pte_unmap_unlock(i32* %156, i32* %157)
  br label %159

159:                                              ; preds = %155, %66, %60, %51, %42, %30
  %160 = load i32, i32* @SWAP_AGAIN, align 4
  ret i32 %160
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32* @pte_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @is_swap_pte(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i32 @is_migration_entry(i32) #1

declare dso_local i8* @migration_entry_to_page(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @pte_mkold(i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i64 @is_write_migration_entry(i32) #1

declare dso_local i32 @pte_mkwrite(i32) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @hugepage_add_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @page_dup_rmap(%struct.page*) #1

declare dso_local i32 @page_add_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @page_add_file_rmap(%struct.page*) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
