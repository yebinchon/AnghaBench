; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_get_locked_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_get_locked_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_locked_pte(%struct.mm_struct* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32* @pgd_offset(%struct.mm_struct* %11, i64 %12)
  store i32* %13, i32** %8, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @pud_alloc(%struct.mm_struct* %14, i32* %15, i64 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %3
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32* @pmd_alloc(%struct.mm_struct* %21, i32* %22, i64 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pmd_trans_huge(i32 %29)
  %31 = call i32 @VM_BUG_ON(i32 %30)
  %32 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32**, i32*** %7, align 8
  %36 = call i32* @pte_alloc_map_lock(%struct.mm_struct* %32, i32* %33, i64 %34, i32** %35)
  store i32* %36, i32** %4, align 8
  br label %39

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %3
  store i32* null, i32** %4, align 8
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32* @pte_alloc_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
