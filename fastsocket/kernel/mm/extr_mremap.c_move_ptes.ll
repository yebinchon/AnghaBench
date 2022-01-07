; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_move_ptes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_move_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, %struct.TYPE_2__*, %struct.mm_struct* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.mm_struct = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i32*, i64, i64, %struct.vm_area_struct*, i32*, i64)* @move_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_ptes(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, %struct.vm_area_struct* %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.address_space*, align 8
  %16 = alloca %struct.mm_struct*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.vm_area_struct* %4, %struct.vm_area_struct** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  store %struct.address_space* null, %struct.address_space** %15, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 3
  %24 = load %struct.mm_struct*, %struct.mm_struct** %23, align 8
  store %struct.mm_struct* %24, %struct.mm_struct** %16, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %7
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.address_space*, %struct.address_space** %33, align 8
  store %struct.address_space* %34, %struct.address_space** %15, align 8
  %35 = load %struct.address_space*, %struct.address_space** %15, align 8
  %36 = getelementptr inbounds %struct.address_space, %struct.address_space* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %29, %7
  %41 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32* @pte_offset_map_lock(%struct.mm_struct* %41, i32* %42, i64 %43, i32** %20)
  store i32* %44, i32** %17, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32* @pte_offset_map_nested(i32* %45, i64 %46)
  store i32* %47, i32** %18, align 8
  %48 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32* @pte_lockptr(%struct.mm_struct* %48, i32* %49)
  store i32* %50, i32** %21, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = load i32*, i32** %20, align 8
  %53 = icmp ne i32* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i32*, i32** %21, align 8
  %56 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %57 = call i32 @spin_lock_nested(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %40
  %59 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %60

60:                                               ; preds = %87, %58
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pte_none(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %87

70:                                               ; preds = %64
  %71 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = call i32 @ptep_get_and_clear(%struct.mm_struct* %71, i64 %72, i32* %73)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @move_pte(i32 %75, i32 %78, i64 %79, i64 %80)
  store i32 %81, i32* %19, align 4
  %82 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @set_pte_at(%struct.mm_struct* %82, i64 %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %70, %69
  %88 = load i32*, i32** %17, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %17, align 8
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %10, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %18, align 8
  %95 = load i64, i64* @PAGE_SIZE, align 8
  %96 = load i64, i64* %14, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %14, align 8
  br label %60

98:                                               ; preds = %60
  %99 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %100 = load i32*, i32** %21, align 8
  %101 = load i32*, i32** %20, align 8
  %102 = icmp ne i32* %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32*, i32** %21, align 8
  %105 = call i32 @spin_unlock(i32* %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32*, i32** %18, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 -1
  %109 = call i32 @pte_unmap_nested(i32* %108)
  %110 = load i32*, i32** %17, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 -1
  %112 = load i32*, i32** %20, align 8
  %113 = call i32 @pte_unmap_unlock(i32* %111, i32* %112)
  %114 = load %struct.address_space*, %struct.address_space** %15, align 8
  %115 = icmp ne %struct.address_space* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  %117 = load %struct.address_space*, %struct.address_space** %15, align 8
  %118 = getelementptr inbounds %struct.address_space, %struct.address_space* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock(i32* %118)
  br label %120

120:                                              ; preds = %116, %106
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32* @pte_offset_map_nested(i32*, i64) #1

declare dso_local i32* @pte_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @ptep_get_and_clear(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @move_pte(i32, i32, i64, i64) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pte_unmap_nested(i32*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
