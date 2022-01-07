; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_free_pmd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_free_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PUD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, i32*, i64, i64, i64, i64)* @free_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pmd_range(%struct.mmu_gather* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.mmu_gather*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %15, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32* @pmd_offset(i32* %17, i64 %18)
  store i32* %19, i32** %13, align 8
  br label %20

20:                                               ; preds = %33, %6
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @pmd_addr_end(i64 %21, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i64 @pmd_none_or_clear_bad(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @free_pte_range(%struct.mmu_gather* %29, i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %13, align 8
  %36 = load i64, i64* %14, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %20, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* @PUD_MASK, align 8
  %42 = load i64, i64* %15, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %76

48:                                               ; preds = %40
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64, i64* @PUD_MASK, align 8
  %53 = load i64, i64* %12, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %76

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 %60, 1
  %62 = load i64, i64* %12, align 8
  %63 = sub i64 %62, 1
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %76

66:                                               ; preds = %59
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32* @pmd_offset(i32* %67, i64 %68)
  store i32* %69, i32** %13, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @pud_clear(i32* %70)
  %72 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @pmd_free_tlb(%struct.mmu_gather* %72, i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %66, %65, %57, %47
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i32 @free_pte_range(%struct.mmu_gather*, i32*, i64) #1

declare dso_local i32 @pud_clear(i32*) #1

declare dso_local i32 @pmd_free_tlb(%struct.mmu_gather*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
