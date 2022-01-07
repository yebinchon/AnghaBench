; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_handle_mm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_handle_mm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@TASK_RUNNING = common dso_local global i32 0, align 4
@PGFAULT = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_mm_fault(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @TASK_RUNNING, align 4
  %17 = call i32 @__set_current_state(i32 %16)
  %18 = load i32, i32* @PGFAULT, align 4
  %19 = call i32 @count_vm_event(i32 %18)
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = call i32 @is_vm_hugetlb_page(%struct.vm_area_struct* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @hugetlb_fault(%struct.mm_struct* %25, %struct.vm_area_struct* %26, i64 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %145

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %106, %30
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32* @pgd_offset(%struct.mm_struct* %32, i64 %33)
  store i32* %34, i32** %10, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32* @pud_alloc(%struct.mm_struct* %35, i32* %36, i64 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %42, i32* %5, align 4
  br label %145

43:                                               ; preds = %31
  %44 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32* @pmd_alloc(%struct.mm_struct* %44, i32* %45, i64 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %51, i32* %5, align 4
  br label %145

52:                                               ; preds = %43
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pmd_none(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %59 = call i64 @transparent_hugepage_enabled(%struct.vm_area_struct* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @do_huge_pmd_anonymous_page(%struct.mm_struct* %67, %struct.vm_area_struct* %68, i64 %69, i32* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %145

73:                                               ; preds = %61
  br label %111

74:                                               ; preds = %57, %52
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %14, align 4
  %77 = call i32 (...) @barrier()
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @pmd_trans_huge(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @pmd_write(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @pmd_trans_splitting(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %90
  %95 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @do_huge_pmd_wp_page(%struct.mm_struct* %95, %struct.vm_area_struct* %96, i64 %97, i32* %98, i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @VM_FAULT_OOM, align 4
  %103 = and i32 %101, %102
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %31

107:                                              ; preds = %94
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %5, align 4
  br label %145

109:                                              ; preds = %90, %86, %81
  store i32 0, i32* %5, align 4
  br label %145

110:                                              ; preds = %74
  br label %111

111:                                              ; preds = %110, %73
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @pmd_none(i32 %113)
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @__pte_alloc(%struct.mm_struct* %118, %struct.vm_area_struct* %119, i32* %120, i64 %121)
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %126, i32* %5, align 4
  br label %145

127:                                              ; preds = %117, %111
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @pmd_trans_huge(i32 %129)
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %145

134:                                              ; preds = %127
  %135 = load i32*, i32** %12, align 8
  %136 = load i64, i64* %8, align 8
  %137 = call i32* @pte_offset_map(i32* %135, i64 %136)
  store i32* %137, i32** %13, align 8
  %138 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @handle_pte_fault(%struct.mm_struct* %138, %struct.vm_area_struct* %139, i64 %140, i32* %141, i32* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %134, %133, %125, %109, %107, %66, %50, %41, %24
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @hugetlb_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i64 @transparent_hugepage_enabled(%struct.vm_area_struct*) #1

declare dso_local i32 @do_huge_pmd_anonymous_page(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32 @pmd_write(i32) #1

declare dso_local i32 @pmd_trans_splitting(i32) #1

declare dso_local i32 @do_huge_pmd_wp_page(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32) #1

declare dso_local i32 @__pte_alloc(%struct.mm_struct*, %struct.vm_area_struct*, i32*, i64) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @handle_pte_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
