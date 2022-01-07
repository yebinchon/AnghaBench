; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_copy_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_copy_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@anon_rss = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_huge_pmd(%struct.mm_struct* %0, %struct.mm_struct* %1, i32* %2, i32* %3, i64 %4, %struct.vm_area_struct* %5) #0 {
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.vm_area_struct* %5, %struct.vm_area_struct** %12, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @pte_alloc_one(%struct.mm_struct* %19, i64 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %115

29:                                               ; preds = %6
  %30 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 0
  %35 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %36 = call i32 @spin_lock_nested(i32* %34, i32 %35)
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %16, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @pmd_trans_huge(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @pte_free(%struct.mm_struct* %49, i32 %50)
  br label %108

52:                                               ; preds = %29
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @pmd_trans_splitting(i32 %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %59 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @pte_free(%struct.mm_struct* %64, i32 %65)
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @wait_split_huge_page(i32 %69, i32* %70)
  br label %115

72:                                               ; preds = %52
  %73 = load i32, i32* %14, align 4
  %74 = call %struct.page* @pmd_page(i32 %73)
  store %struct.page* %74, %struct.page** %13, align 8
  %75 = load %struct.page*, %struct.page** %13, align 8
  %76 = call i32 @PageHead(%struct.page* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @VM_BUG_ON(i32 %79)
  %81 = load %struct.page*, %struct.page** %13, align 8
  %82 = call i32 @get_page(%struct.page* %81)
  %83 = load %struct.page*, %struct.page** %13, align 8
  %84 = call i32 @page_dup_rmap(%struct.page* %83)
  %85 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %86 = load i32, i32* @anon_rss, align 4
  %87 = load i32, i32* @HPAGE_PMD_NR, align 4
  %88 = call i32 @add_mm_counter(%struct.mm_struct* %85, i32 %86, i32 %87)
  %89 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @pmdp_set_wrprotect(%struct.mm_struct* %89, i64 %90, i32* %91)
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @pmd_wrprotect(i32 %93)
  %95 = call i32 @pmd_mkold(i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @set_pmd_at(%struct.mm_struct* %96, i64 %97, i32* %98, i32 %99)
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %103 = call i32 @prepare_pmd_huge_pte(i32 %101, %struct.mm_struct* %102)
  %104 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %105 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %72, %48
  %109 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %110 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %113 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock(i32* %113)
  br label %115

115:                                              ; preds = %108, %57, %28
  %116 = load i32, i32* %16, align 4
  ret i32 %116
}

declare dso_local i32 @pte_alloc_one(%struct.mm_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32 @pte_free(%struct.mm_struct*, i32) #1

declare dso_local i32 @pmd_trans_splitting(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_split_huge_page(i32, i32*) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @page_dup_rmap(%struct.page*) #1

declare dso_local i32 @add_mm_counter(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @pmdp_set_wrprotect(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pmd_mkold(i32) #1

declare dso_local i32 @pmd_wrprotect(i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @prepare_pmd_huge_pte(i32, %struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
