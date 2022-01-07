; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_remap_pte_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_remap_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32*, i64, i64, i64, i32)* @remap_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_pte_range(%struct.mm_struct* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32* @pte_alloc_map_lock(%struct.mm_struct* %16, i32* %17, i64 %18, i32** %15)
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %60

25:                                               ; preds = %6
  %26 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %27

27:                                               ; preds = %45, %25
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pte_none(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @pfn_pte(i64 %38, i32 %39)
  %41 = call i32 @pte_mkspecial(i32 %40)
  %42 = call i32 @set_pte_at(%struct.mm_struct* %35, i64 %36, i32* %37, i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %27
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %14, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %27, label %54

54:                                               ; preds = %45
  %55 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 -1
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @pte_unmap_unlock(i32* %57, i32* %58)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %22
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32* @pte_alloc_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
