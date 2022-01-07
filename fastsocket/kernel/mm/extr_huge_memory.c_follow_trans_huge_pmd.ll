; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_follow_trans_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_follow_trans_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_TOUCH = common dso_local global i32 0, align 4
@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@FOLL_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @follow_trans_huge_pmd(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.page* null, %struct.page** %9, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i32 @spin_can_lock(i32* %12)
  %14 = call i32 @VM_BUG_ON(i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @FOLL_WRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pmd_write(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %74

25:                                               ; preds = %19, %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.page* @pmd_page(i32 %27)
  store %struct.page* %28, %struct.page** %9, align 8
  %29 = load %struct.page*, %struct.page** %9, align 8
  %30 = call i32 @PageHead(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @VM_BUG_ON(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FOLL_TOUCH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %25
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pmd_mkdirty(i32 %41)
  %43 = call i32 @pmd_mkyoung(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %47 = and i64 %45, %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @set_pmd_at(%struct.mm_struct* %44, i64 %47, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %25
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = lshr i64 %55, %56
  %58 = load %struct.page*, %struct.page** %9, align 8
  %59 = getelementptr inbounds %struct.page, %struct.page* %58, i64 %57
  store %struct.page* %59, %struct.page** %9, align 8
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = call i32 @PageCompound(%struct.page* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @VM_BUG_ON(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @FOLL_GET, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load %struct.page*, %struct.page** %9, align 8
  %72 = call i32 @get_page_foll(%struct.page* %71)
  br label %73

73:                                               ; preds = %70, %51
  br label %74

74:                                               ; preds = %73, %24
  %75 = load %struct.page*, %struct.page** %9, align 8
  ret %struct.page* %75
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @spin_can_lock(i32*) #1

declare dso_local i32 @pmd_write(i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @PageHead(%struct.page*) #1

declare dso_local i32 @pmd_mkyoung(i32) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i32 @set_pmd_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @get_page_foll(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
