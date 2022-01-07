; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_hugepage_madvise.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_hugepage_madvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_HUGEPAGE = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i64 0, align 8
@VM_PFNMAP = common dso_local global i64 0, align 8
@VM_IO = common dso_local global i64 0, align 8
@VM_DONTEXPAND = common dso_local global i64 0, align 8
@VM_RESERVED = common dso_local global i64 0, align 8
@VM_HUGETLB = common dso_local global i64 0, align 8
@VM_INSERTPAGE = common dso_local global i64 0, align 8
@VM_MIXEDMAP = common dso_local global i64 0, align 8
@VM_SAO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_NOHUGEPAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hugepage_madvise(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %85 [
    i32 129, label %7
    i32 128, label %46
  ]

7:                                                ; preds = %2
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VM_HUGEPAGE, align 8
  %11 = load i64, i64* @VM_SHARED, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @VM_MAYSHARE, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @VM_PFNMAP, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @VM_IO, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @VM_DONTEXPAND, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @VM_RESERVED, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @VM_HUGETLB, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @VM_INSERTPAGE, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @VM_MIXEDMAP, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @VM_SAO, align 8
  %30 = or i64 %28, %29
  %31 = and i64 %9, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %7
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %86

36:                                               ; preds = %7
  %37 = load i64, i64* @VM_NOHUGEPAGE, align 8
  %38 = xor i64 %37, -1
  %39 = load i64*, i64** %4, align 8
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, %38
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* @VM_HUGEPAGE, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %42
  store i64 %45, i64* %43, align 8
  br label %85

46:                                               ; preds = %2
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VM_NOHUGEPAGE, align 8
  %50 = load i64, i64* @VM_SHARED, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @VM_MAYSHARE, align 8
  %53 = or i64 %51, %52
  %54 = load i64, i64* @VM_PFNMAP, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* @VM_IO, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* @VM_DONTEXPAND, align 8
  %59 = or i64 %57, %58
  %60 = load i64, i64* @VM_RESERVED, align 8
  %61 = or i64 %59, %60
  %62 = load i64, i64* @VM_HUGETLB, align 8
  %63 = or i64 %61, %62
  %64 = load i64, i64* @VM_INSERTPAGE, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* @VM_MIXEDMAP, align 8
  %67 = or i64 %65, %66
  %68 = load i64, i64* @VM_SAO, align 8
  %69 = or i64 %67, %68
  %70 = and i64 %48, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %46
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %86

75:                                               ; preds = %46
  %76 = load i64, i64* @VM_HUGEPAGE, align 8
  %77 = xor i64 %76, -1
  %78 = load i64*, i64** %4, align 8
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, %77
  store i64 %80, i64* %78, align 8
  %81 = load i64, i64* @VM_NOHUGEPAGE, align 8
  %82 = load i64*, i64** %4, align 8
  %83 = load i64, i64* %82, align 8
  %84 = or i64 %83, %81
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %2, %75, %36
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %72, %33
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
