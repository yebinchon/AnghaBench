; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_remap_pfn_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_remap_pfn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@VM_PFN_AT_MMAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remap_pfn_range(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mm_struct*, align 8
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @PAGE_ALIGN(i64 %18)
  %20 = add i64 %17, %19
  store i64 %20, i64* %14, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 4
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  store %struct.mm_struct* %23, %struct.mm_struct** %15, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %5
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @VM_PFN_AT_MMAP, align 4
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %54

44:                                               ; preds = %29, %5
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @is_cow_mapping(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %145

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32, i32* @VM_IO, align 4
  %56 = load i32, i32* @VM_RESERVED, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @VM_PFNMAP, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @PAGE_ALIGN(i64 %66)
  %68 = call i32 @track_pfn_vma_new(%struct.vm_area_struct* %64, i32* %11, i64 %65, i64 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %54
  %72 = load i32, i32* @VM_IO, align 4
  %73 = load i32, i32* @VM_RESERVED, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @VM_PFNMAP, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* @VM_PFN_AT_MMAP, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %145

90:                                               ; preds = %54
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp uge i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @PAGE_SHIFT, align 8
  %98 = lshr i64 %96, %97
  %99 = load i64, i64* %9, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %9, align 8
  %101 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32* @pgd_offset(%struct.mm_struct* %101, i64 %102)
  store i32* %103, i32** %12, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @flush_cache_range(%struct.vm_area_struct* %104, i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %127, %90
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %14, align 8
  %111 = call i64 @pgd_addr_end(i64 %109, i64 %110)
  store i64 %111, i64* %13, align 8
  %112 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @PAGE_SHIFT, align 8
  %119 = lshr i64 %117, %118
  %120 = add i64 %116, %119
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @remap_pud_range(%struct.mm_struct* %112, i32* %113, i64 %114, i64 %115, i64 %120, i32 %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %108
  br label %134

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126
  %128 = load i32*, i32** %12, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %12, align 8
  %130 = load i64, i64* %13, align 8
  store i64 %130, i64* %8, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %14, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %108, label %134

134:                                              ; preds = %127, %125
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %10, align 8
  %141 = call i64 @PAGE_ALIGN(i64 %140)
  %142 = call i32 @untrack_pfn_vma(%struct.vm_area_struct* %138, i64 %139, i64 %141)
  br label %143

143:                                              ; preds = %137, %134
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %71, %50
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @is_cow_mapping(i32) #1

declare dso_local i32 @track_pfn_vma_new(%struct.vm_area_struct*, i32*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32 @remap_pud_range(%struct.mm_struct*, i32*, i64, i64, i64, i32) #1

declare dso_local i32 @untrack_pfn_vma(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
