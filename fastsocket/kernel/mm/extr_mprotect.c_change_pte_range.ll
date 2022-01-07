; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mprotect.c_change_pte_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mprotect.c_change_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGE_MIGRATION = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*, i64, i64, i32, i32)* @change_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_pte_range(%struct.mm_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32* @pte_offset_map_lock(%struct.mm_struct* %18, i32* %19, i64 %20, i32** %15)
  store i32* %21, i32** %13, align 8
  %22 = call i32 (...) @arch_enter_lazy_mmu_mode()
  br label %23

23:                                               ; preds = %76, %6
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i64 @pte_present(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @ptep_modify_prot_start(%struct.mm_struct* %30, i64 %31, i32* %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @pte_modify(i32 %34, i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load i32, i32* %16, align 4
  %41 = call i64 @pte_dirty(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @pte_mkwrite(i32 %44)
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %43, %39, %29
  %47 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @ptep_modify_prot_commit(%struct.mm_struct* %47, i64 %48, i32* %49, i32 %50)
  br label %75

52:                                               ; preds = %23
  %53 = load i64, i64* @PAGE_MIGRATION, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @pte_file(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @pte_to_swp_entry(i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i64 @is_write_migration_entry(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = call i32 @make_migration_entry_read(i32* %17)
  %67 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @swp_entry_to_pte(i32 %70)
  %72 = call i32 @set_pte_at(%struct.mm_struct* %67, i64 %68, i32* %69, i32 %71)
  br label %73

73:                                               ; preds = %65, %59
  br label %74

74:                                               ; preds = %73, %55, %52
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %13, align 8
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %23, label %85

85:                                               ; preds = %76
  %86 = call i32 (...) @arch_leave_lazy_mmu_mode()
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 -1
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @pte_unmap_unlock(i32* %88, i32* %89)
  ret void
}

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @arch_enter_lazy_mmu_mode(...) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @ptep_modify_prot_start(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pte_modify(i32, i32) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i32 @pte_mkwrite(i32) #1

declare dso_local i32 @ptep_modify_prot_commit(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pte_file(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i64 @is_write_migration_entry(i32) #1

declare dso_local i32 @make_migration_entry_read(i32*) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i32 @arch_leave_lazy_mmu_mode(...) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
