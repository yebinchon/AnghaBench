; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_free_pgd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_free_pgd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_pgd_range(%struct.mmu_gather* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* @PMD_MASK, align 8
  %15 = load i64, i64* %7, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load i64, i64* @PMD_SIZE, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %85

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %5
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* @PMD_MASK, align 8
  %33 = load i64, i64* %10, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %85

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, 1
  %42 = load i64, i64* %10, align 8
  %43 = sub i64 %42, 1
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* @PMD_SIZE, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, 1
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %85

55:                                               ; preds = %49
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %13, align 8
  %57 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %58 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32* @pgd_offset(i32 %59, i64 %60)
  store i32* %61, i32** %11, align 8
  br label %62

62:                                               ; preds = %78, %55
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i64 @pgd_addr_end(i64 %63, i64 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i64 @pgd_none_or_clear_bad(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %78

70:                                               ; preds = %62
  %71 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @free_pud_range(%struct.mmu_gather* %71, i32* %72, i64 %73, i64 %74, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %70, %69
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %11, align 8
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %62, label %85

85:                                               ; preds = %26, %37, %54, %78
  ret void
}

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32 @free_pud_range(%struct.mmu_gather*, i32*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
