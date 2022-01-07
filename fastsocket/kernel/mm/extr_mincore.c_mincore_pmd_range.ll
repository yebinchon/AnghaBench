; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_mincore_pmd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_mincore_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i32*, i64, i64, i8*)* @mincore_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mincore_pmd_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32* @pmd_offset(i32* %13, i64 %14)
  store i32* %15, i32** %12, align 8
  br label %16

16:                                               ; preds = %66, %5
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @pmd_addr_end(i64 %17, i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pmd_trans_huge(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %16
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @mincore_huge_pmd(%struct.vm_area_struct* %25, i32* %26, i64 %27, i64 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %10, align 8
  br label %66

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32*, i32** %12, align 8
  %43 = call i64 @pmd_none_or_trans_huge_or_clear_bad(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @mincore_unmapped_range(%struct.vm_area_struct* %46, i64 %47, i64 %48, i8* %49)
  br label %58

51:                                               ; preds = %41
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @mincore_pte_range(%struct.vm_area_struct* %52, i32* %53, i64 %54, i64 %55, i8* %56)
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %59, %60
  %62 = load i64, i64* @PAGE_SHIFT, align 8
  %63 = lshr i64 %61, %62
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %58, %32
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %12, align 8
  %69 = load i64, i64* %11, align 8
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %16, label %73

73:                                               ; preds = %66
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @mincore_huge_pmd(%struct.vm_area_struct*, i32*, i64, i64, i8*) #1

declare dso_local i64 @pmd_none_or_trans_huge_or_clear_bad(i32*) #1

declare dso_local i32 @mincore_unmapped_range(%struct.vm_area_struct*, i64, i64, i8*) #1

declare dso_local i32 @mincore_pte_range(%struct.vm_area_struct*, i32*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
