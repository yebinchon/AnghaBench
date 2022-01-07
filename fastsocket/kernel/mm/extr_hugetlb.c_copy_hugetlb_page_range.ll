; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_copy_hugetlb_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_copy_hugetlb_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64 }
%struct.page = type { i32 }
%struct.hstate = type { i32 }

@VM_SHARED = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_hugetlb_page_range(%struct.mm_struct* %0, %struct.mm_struct* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hstate*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %17)
  store %struct.hstate* %18, %struct.hstate** %14, align 8
  %19 = load %struct.hstate*, %struct.hstate** %14, align 8
  %20 = call i64 @huge_page_size(%struct.hstate* %19)
  store i64 %20, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VM_SHARED, align 4
  %25 = load i32, i32* @VM_MAYWRITE, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @VM_MAYWRITE, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %100, %3
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %104

40:                                               ; preds = %34
  %41 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32* @huge_pte_offset(%struct.mm_struct* %41, i64 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %100

47:                                               ; preds = %40
  %48 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32* @huge_pte_alloc(%struct.mm_struct* %48, i64 %49, i64 %50, i32* %16)
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %105

55:                                               ; preds = %47
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %100

59:                                               ; preds = %55
  %60 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %64 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %63, i32 0, i32 0
  %65 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %66 = call i32 @spin_lock_nested(i32* %64, i32 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @huge_ptep_get(i32* %67)
  %69 = call i32 @huge_pte_none(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @huge_ptep_set_wrprotect(%struct.mm_struct* %75, i64 %76, i32* %77)
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @huge_ptep_get(i32* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call %struct.page* @pte_page(i32 %82)
  store %struct.page* %83, %struct.page** %11, align 8
  %84 = load %struct.page*, %struct.page** %11, align 8
  %85 = call i32 @get_page(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %11, align 8
  %87 = call i32 @page_dup_rmap(%struct.page* %86)
  %88 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @set_huge_pte_at(%struct.mm_struct* %88, i64 %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %79, %59
  %94 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %95 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %98 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  br label %100

100:                                              ; preds = %93, %58, %46
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %12, align 8
  br label %34

104:                                              ; preds = %34
  store i32 0, i32* %4, align 4
  br label %108

105:                                              ; preds = %54
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %104
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @huge_page_size(%struct.hstate*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @huge_pte_alloc(%struct.mm_struct*, i64, i64, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @huge_pte_none(i32) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i32 @huge_ptep_set_wrprotect(%struct.mm_struct*, i64, i32*) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @page_dup_rmap(%struct.page*) #1

declare dso_local i32 @set_huge_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
