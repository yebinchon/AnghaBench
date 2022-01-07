; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_do_mincore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_do_mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i8*)* @do_mincore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_mincore(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.vm_area_struct* @find_vma(i32 %12, i64 %13)
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %8, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %16 = icmp ne %struct.vm_area_struct* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %3
  %24 = load i64, i64* @ENOMEM, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %75

26:                                               ; preds = %17
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = add i64 %30, %33
  %35 = call i64 @min(i32 %29, i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %37 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %26
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @mincore_hugetlb_page_range(%struct.vm_area_struct* %40, i64 %41, i64 %42, i8* %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = lshr i64 %47, %48
  store i64 %49, i64* %4, align 8
  br label %75

50:                                               ; preds = %26
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @pmd_addr_end(i64 %51, i64 %52)
  store i64 %53, i64* %9, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %55 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @mincore_hugetlb_page_range(%struct.vm_area_struct* %58, i64 %59, i64 %60, i8* %61)
  br label %69

63:                                               ; preds = %50
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @mincore_page_range(%struct.vm_area_struct* %64, i64 %65, i64 %66, i8* %67)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %5, align 8
  %72 = sub i64 %70, %71
  %73 = load i64, i64* @PAGE_SHIFT, align 8
  %74 = lshr i64 %72, %73
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %69, %39, %23
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @mincore_hugetlb_page_range(%struct.vm_area_struct*, i64, i64, i8*) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i32 @mincore_page_range(%struct.vm_area_struct*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
