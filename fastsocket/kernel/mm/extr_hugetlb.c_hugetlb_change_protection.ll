; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_change_protection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_change_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_4__*, %struct.mm_struct* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mm_struct = type { i32 }
%struct.hstate = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_change_protection(%struct.vm_area_struct* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hstate*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  store %struct.mm_struct* %16, %struct.mm_struct** %9, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %18)
  store %struct.hstate* %19, %struct.hstate** %13, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp uge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @flush_cache_range(%struct.vm_area_struct* %25, i64 %26, i64 %27)
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  br label %39

39:                                               ; preds = %76, %4
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32* @huge_pte_offset(%struct.mm_struct* %44, i64 %45)
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %76

50:                                               ; preds = %43
  %51 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i64 @huge_pmd_unshare(%struct.mm_struct* %51, i64* %6, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %76

56:                                               ; preds = %50
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @huge_ptep_get(i32* %57)
  %59 = call i32 @huge_pte_none(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %56
  %62 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @huge_ptep_get_and_clear(%struct.mm_struct* %62, i64 %63, i32* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @pte_modify(i32 %66, i32 %67)
  %69 = call i32 @pte_mkhuge(i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @set_huge_pte_at(%struct.mm_struct* %70, i64 %71, i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %61, %56
  br label %76

76:                                               ; preds = %75, %55, %49
  %77 = load %struct.hstate*, %struct.hstate** %13, align 8
  %78 = call i64 @huge_page_size(%struct.hstate* %77)
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %6, align 8
  br label %39

81:                                               ; preds = %39
  %82 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %83 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @flush_tlb_range(%struct.vm_area_struct* %85, i64 %86, i64 %87)
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  ret void
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @huge_pmd_unshare(%struct.mm_struct*, i64*, i32*) #1

declare dso_local i32 @huge_pte_none(i32) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i32 @huge_ptep_get_and_clear(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pte_mkhuge(i32) #1

declare dso_local i32 @pte_modify(i32, i32) #1

declare dso_local i32 @set_huge_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i64 @huge_page_size(%struct.hstate*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
