; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_remap_vmalloc_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_remap_vmalloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32 }
%struct.vm_struct = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_USERMAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remap_vmalloc_range(%struct.vm_area_struct* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %106

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = call %struct.vm_struct* @find_vm_area(i8* %34)
  store %struct.vm_struct* %35, %struct.vm_struct** %8, align 8
  %36 = load %struct.vm_struct*, %struct.vm_struct** %8, align 8
  %37 = icmp ne %struct.vm_struct* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %106

41:                                               ; preds = %33
  %42 = load %struct.vm_struct*, %struct.vm_struct** %8, align 8
  %43 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VM_USERMAP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %106

51:                                               ; preds = %41
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = add i64 %52, %55
  %57 = load %struct.vm_struct*, %struct.vm_struct** %8, align 8
  %58 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %56, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %106

67:                                               ; preds = %51
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @PAGE_SHIFT, align 8
  %70 = shl i64 %68, %69
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr i8, i8* %71, i64 %70
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %97, %67
  %74 = load i8*, i8** %6, align 8
  %75 = call %struct.page* @vmalloc_to_page(i8* %74)
  store %struct.page* %75, %struct.page** %11, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.page*, %struct.page** %11, align 8
  %79 = call i32 @vm_insert_page(%struct.vm_area_struct* %76, i64 %77, %struct.page* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %106

84:                                               ; preds = %73
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %9, align 8
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr i8, i8* %90, i64 %91
  store i8* %92, i8** %6, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %10, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %84
  %98 = load i64, i64* %10, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %73, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @VM_RESERVED, align 4
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %82, %64, %48, %38, %30
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.vm_struct* @find_vm_area(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
