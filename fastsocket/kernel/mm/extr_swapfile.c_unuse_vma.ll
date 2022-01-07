; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_unuse_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_unuse_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32 }
%struct.page = type { i32 }

@EFAULT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i32, %struct.page*)* @unuse_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_vma(%struct.vm_area_struct* %0, i32 %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.page* %2, %struct.page** %7, align 8
  %13 = load %struct.page*, %struct.page** %7, align 8
  %14 = call i64 @page_anon_vma(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = call i64 @page_address_in_vma(%struct.page* %17, %struct.vm_area_struct* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @EFAULT, align 8
  %22 = sub i64 0, %21
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %72

25:                                               ; preds = %16
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %25
  br label %37

30:                                               ; preds = %3
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %30, %29
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32* @pgd_offset(i32 %40, i64 %41)
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %64, %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @pgd_addr_end(i64 %44, i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @pgd_none_or_clear_bad(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %64

51:                                               ; preds = %43
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = call i32 @unuse_pud_range(%struct.vm_area_struct* %52, i32* %53, i64 %54, i64 %55, i32 %56, %struct.page* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %8, align 8
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %43, label %71

71:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %61, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @page_anon_vma(%struct.page*) #1

declare dso_local i64 @page_address_in_vma(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32 @unuse_pud_range(%struct.vm_area_struct*, i32*, i64, i64, i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
