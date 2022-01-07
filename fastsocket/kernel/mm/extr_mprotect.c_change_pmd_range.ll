; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mprotect.c_change_pmd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mprotect.c_change_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i32*, i64, i64, i32, i32)* @change_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_pmd_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32* @pmd_offset(i32* %15, i64 %16)
  store i32* %17, i32** %13, align 8
  br label %18

18:                                               ; preds = %63, %6
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @pmd_addr_end(i64 %19, i64 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pmd_trans_huge(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %18
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %9, align 8
  %29 = sub i64 %27, %28
  %30 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @split_huge_page_pmd(i32 %35, i32* %36)
  br label %47

38:                                               ; preds = %26
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @change_huge_pmd(%struct.vm_area_struct* %39, i32* %40, i64 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %63

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32*, i32** %13, align 8
  %50 = call i64 @pmd_none_or_clear_bad(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %63

53:                                               ; preds = %48
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @change_pte_range(i32 %56, i32* %57, i64 %58, i64 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %53, %52, %45
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %13, align 8
  %66 = load i64, i64* %14, align 8
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %18, label %70

70:                                               ; preds = %63
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i32 @split_huge_page_pmd(i32, i32*) #1

declare dso_local i64 @change_huge_pmd(%struct.vm_area_struct*, i32*, i64, i32) #1

declare dso_local i64 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i32 @change_pte_range(i32, i32*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
