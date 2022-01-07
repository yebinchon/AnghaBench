; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_insert_pfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_insert_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64, i32)* @insert_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_pfn(%struct.vm_area_struct* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  store %struct.mm_struct* %16, %struct.mm_struct** %9, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32* @get_locked_pte(%struct.mm_struct* %19, i64 %20, i32** %13)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %51

25:                                               ; preds = %4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pte_none(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %47

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @pfn_pte(i64 %34, i32 %35)
  %37 = call i32 @pte_mkspecial(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @set_pte_at(%struct.mm_struct* %38, i64 %39, i32* %40, i32 %41)
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @update_mmu_cache(%struct.vm_area_struct* %43, i64 %44, i32 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %33, %32
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @pte_unmap_unlock(i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %24
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32* @get_locked_pte(%struct.mm_struct*, i64, i32**) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
