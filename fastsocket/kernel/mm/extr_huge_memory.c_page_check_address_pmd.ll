; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_page_check_address_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_page_check_address_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG = common dso_local global i32 0, align 4
@PAGE_CHECK_ADDRESS_PMD_SPLITTING_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @page_check_address_pmd(%struct.page* %0, %struct.mm_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %84

19:                                               ; preds = %4
  %20 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32* @pgd_offset(%struct.mm_struct* %20, i64 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pgd_present(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %84

28:                                               ; preds = %19
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32* @pud_offset(i32* %29, i64 %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pud_present(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %84

37:                                               ; preds = %28
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32* @pmd_offset(i32* %38, i64 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @pmd_none(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %84

46:                                               ; preds = %37
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.page* @pmd_page(i32 %48)
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = icmp ne %struct.page* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %84

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @pmd_trans_splitting(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %84

63:                                               ; preds = %57, %53
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @pmd_trans_huge(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @PAGE_CHECK_ADDRESS_PMD_SPLITTING_FLAG, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @pmd_trans_splitting(i32 %74)
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %72, %68
  %79 = phi i1 [ false, %68 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @VM_BUG_ON(i32 %80)
  %82 = load i32*, i32** %11, align 8
  store i32* %82, i32** %12, align 8
  br label %83

83:                                               ; preds = %78, %63
  br label %84

84:                                               ; preds = %83, %62, %52, %45, %36, %27, %18
  %85 = load i32*, i32** %12, align 8
  ret i32* %85
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i64 @pmd_trans_splitting(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
