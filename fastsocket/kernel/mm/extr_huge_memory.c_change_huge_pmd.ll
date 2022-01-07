; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_change_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_change_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct*, i32 }
%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_huge_pmd(%struct.vm_area_struct* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pmd_trans_huge(i32 %19)
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pmd_trans_splitting(i32 %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @wait_split_huge_page(i32 %35, i32* %36)
  br label %56

38:                                               ; preds = %23
  %39 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @pmdp_get_and_clear(%struct.mm_struct* %39, i64 %40, i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pmd_modify(i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @set_pmd_at(%struct.mm_struct* %46, i64 %47, i32* %48, i32 %49)
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load %struct.mm_struct*, %struct.mm_struct** %52, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %38, %29
  br label %63

57:                                               ; preds = %4
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 0
  %60 = load %struct.mm_struct*, %struct.mm_struct** %59, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  br label %63

63:                                               ; preds = %57, %56
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_trans_splitting(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_split_huge_page(i32, i32*) #1

declare dso_local i32 @pmdp_get_and_clear(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pmd_modify(i32, i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
