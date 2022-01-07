; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_copy_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_copy_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }

@VM_HUGETLB = common dso_local global i32 0, align 4
@VM_NONLINEAR = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_INSERTPAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_page_range(%struct.mm_struct* %0, %struct.mm_struct* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VM_HUGETLB, align 4
  %24 = load i32, i32* @VM_NONLINEAR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VM_PFNMAP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @VM_INSERTPAGE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %22, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %126

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %41 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %45 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %47 = call i32 @copy_hugetlb_page_range(%struct.mm_struct* %44, %struct.mm_struct* %45, %struct.vm_area_struct* %46)
  store i32 %47, i32* %4, align 4
  br label %126

48:                                               ; preds = %39
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %50 = call i32 @is_pfn_mapping(%struct.vm_area_struct* %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %55 = call i32 @track_pfn_vma_copy(%struct.vm_area_struct* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %4, align 4
  br label %126

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %48
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @is_cow_mapping(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @mmu_notifier_invalidate_range_start(%struct.mm_struct* %68, i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %61
  store i32 0, i32* %13, align 4
  %73 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32* @pgd_offset(%struct.mm_struct* %73, i64 %74)
  store i32* %75, i32** %9, align 8
  %76 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32* @pgd_offset(%struct.mm_struct* %76, i64 %77)
  store i32* %78, i32** %8, align 8
  br label %79

79:                                               ; preds = %102, %72
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i64 @pgd_addr_end(i64 %80, i64 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @pgd_none_or_clear_bad(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %102

87:                                               ; preds = %79
  %88 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %89 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @copy_pud_range(%struct.mm_struct* %88, %struct.mm_struct* %89, i32* %90, i32* %91, %struct.vm_area_struct* %92, i64 %93, i64 %94)
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %13, align 4
  br label %111

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %9, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %8, align 8
  %107 = load i64, i64* %10, align 8
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %79, label %111

111:                                              ; preds = %102, %98
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %113 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @is_cow_mapping(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @mmu_notifier_invalidate_range_end(%struct.mm_struct* %118, i64 %121, i64 %122)
  br label %124

124:                                              ; preds = %117, %111
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %58, %43, %37
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @copy_hugetlb_page_range(%struct.mm_struct*, %struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_pfn_mapping(%struct.vm_area_struct*) #1

declare dso_local i32 @track_pfn_vma_copy(%struct.vm_area_struct*) #1

declare dso_local i64 @is_cow_mapping(i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mm_struct*, i64, i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32 @copy_pud_range(%struct.mm_struct*, %struct.mm_struct*, i32*, i32*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mm_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
