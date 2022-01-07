; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_move_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_move_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @move_huge_pmd(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mm_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %15, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = and i64 %19, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %6
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %10, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24, %6
  br label %97

37:                                               ; preds = %30
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pmd_none(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = call i32 @WARN_ON(i32 1)
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pmd_trans_huge(i32 %45)
  %47 = call i32 @VM_BUG_ON(i32 %46)
  br label %97

48:                                               ; preds = %37
  %49 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pmd_trans_huge(i32 %53)
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @pmd_trans_splitting(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %64 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @wait_split_huge_page(i32 %68, i32* %69)
  store i32 -1, i32* %13, align 4
  br label %91

71:                                               ; preds = %57
  %72 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @pmdp_get_and_clear(%struct.mm_struct* %72, i64 %73, i32* %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pmd_none(i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @VM_BUG_ON(i32 %81)
  %83 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @set_pmd_at(%struct.mm_struct* %83, i64 %84, i32* %85, i32 %86)
  %88 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %71, %62
  br label %96

92:                                               ; preds = %48
  %93 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %94 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  br label %96

96:                                               ; preds = %92, %91
  br label %97

97:                                               ; preds = %96, %42, %36
  %98 = load i32, i32* %13, align 4
  ret i32 %98
}

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @pmd_trans_splitting(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_split_huge_page(i32, i32*) #1

declare dso_local i32 @pmdp_get_and_clear(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
