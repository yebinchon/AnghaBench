; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_follow_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_follow_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i32**, i32**)* @follow_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_pte(%struct.mm_struct* %0, i64 %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32* @pgd_offset(%struct.mm_struct* %14, i64 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pgd_none(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pgd_bad(i32 %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %4
  br label %91

28:                                               ; preds = %21
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32* @pud_offset(i32* %29, i64 %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pud_none(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pud_bad(i32 %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %28
  br label %91

43:                                               ; preds = %36
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32* @pmd_offset(i32* %44, i64 %45)
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pmd_trans_huge(i32 %48)
  %50 = call i32 @VM_BUG_ON(i32 %49)
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @pmd_none(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %43
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pmd_bad(i32 %57)
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %43
  br label %91

62:                                               ; preds = %55
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pmd_huge(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %91

68:                                               ; preds = %62
  %69 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i32**, i32*** %9, align 8
  %73 = call i32* @pte_offset_map_lock(%struct.mm_struct* %69, i32* %70, i64 %71, i32** %72)
  store i32* %73, i32** %13, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %91

77:                                               ; preds = %68
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pte_present(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %86

83:                                               ; preds = %77
  %84 = load i32*, i32** %13, align 8
  %85 = load i32**, i32*** %8, align 8
  store i32* %84, i32** %85, align 8
  store i32 0, i32* %5, align 4
  br label %94

86:                                               ; preds = %82
  %87 = load i32*, i32** %13, align 8
  %88 = load i32**, i32*** %9, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @pte_unmap_unlock(i32* %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %76, %67, %61, %42, %27
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %83
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pgd_bad(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @pud_bad(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @pmd_bad(i32) #1

declare dso_local i64 @pmd_huge(i32) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
