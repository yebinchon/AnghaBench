; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_vm_normal_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_vm_normal_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64 }

@HAVE_PTE_SPECIAL = common dso_local global i64 0, align 8
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@highest_memmap_pfn = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @pte_pfn(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* @HAVE_PTE_SPECIAL, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pte_special(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %97

23:                                               ; preds = %14
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VM_PFNMAP, align 4
  %28 = load i32, i32* @VM_MIXEDMAP, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store %struct.page* null, %struct.page** %4, align 8
  br label %113

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @is_zero_pfn(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @print_bad_pte(%struct.vm_area_struct* %38, i64 %39, i32 %40, i32* null)
  br label %42

42:                                               ; preds = %37, %33
  store %struct.page* null, %struct.page** %4, align 8
  br label %113

43:                                               ; preds = %3
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VM_PFNMAP, align 4
  %48 = load i32, i32* @VM_MIXEDMAP, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %43
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @VM_MIXEDMAP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @pfn_valid(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store %struct.page* null, %struct.page** %4, align 8
  br label %113

65:                                               ; preds = %60
  br label %110

66:                                               ; preds = %53
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %67, %70
  %72 = load i64, i64* @PAGE_SHIFT, align 8
  %73 = lshr i64 %71, %72
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %77, %78
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store %struct.page* null, %struct.page** %4, align 8
  br label %113

82:                                               ; preds = %66
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @is_cow_mapping(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store %struct.page* null, %struct.page** %4, align 8
  br label %113

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %43
  %92 = load i64, i64* %8, align 8
  %93 = call i64 @is_zero_pfn(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store %struct.page* null, %struct.page** %4, align 8
  br label %113

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %22
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @highest_memmap_pfn, align 8
  %100 = icmp ugt i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @print_bad_pte(%struct.vm_area_struct* %105, i64 %106, i32 %107, i32* null)
  store %struct.page* null, %struct.page** %4, align 8
  br label %113

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %65
  %111 = load i64, i64* %8, align 8
  %112 = call %struct.page* @pfn_to_page(i64 %111)
  store %struct.page* %112, %struct.page** %4, align 8
  br label %113

113:                                              ; preds = %110, %104, %95, %88, %81, %64, %42, %32
  %114 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %114
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pte_special(i32) #1

declare dso_local i64 @is_zero_pfn(i64) #1

declare dso_local i32 @print_bad_pte(%struct.vm_area_struct*, i64, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i32 @is_cow_mapping(i32) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
