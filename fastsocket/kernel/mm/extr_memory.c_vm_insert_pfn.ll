; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_vm_insert_pfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_vm_insert_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_insert_pfn(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VM_PFNMAP, align 4
  %17 = load i32, i32* @VM_MIXEDMAP, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VM_PFNMAP, align 4
  %28 = load i32, i32* @VM_MIXEDMAP, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = load i32, i32* @VM_PFNMAP, align 4
  %32 = load i32, i32* @VM_MIXEDMAP, align 4
  %33 = or i32 %31, %32
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @VM_PFNMAP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @is_cow_mapping(i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %43, %3
  %50 = phi i1 [ false, %3 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @VM_MIXEDMAP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @pfn_valid(i64 %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %59, %49
  %64 = phi i1 [ false, %49 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp uge i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %63
  %79 = load i32, i32* @EFAULT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %105

81:                                               ; preds = %72
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = call i64 @track_pfn_vma_new(%struct.vm_area_struct* %82, i32* %9, i64 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %105

90:                                               ; preds = %81
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @insert_pfn(%struct.vm_area_struct* %91, i64 %92, i64 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = call i32 @untrack_pfn_vma(%struct.vm_area_struct* %99, i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %90
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %87, %78
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_cow_mapping(i32) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i64 @track_pfn_vma_new(%struct.vm_area_struct*, i32*, i64, i32) #1

declare dso_local i32 @insert_pfn(%struct.vm_area_struct*, i64, i64, i32) #1

declare dso_local i32 @untrack_pfn_vma(%struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
