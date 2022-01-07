; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_insert_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_insert_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@file_rss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.page*, i32)* @insert_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_page(%struct.vm_area_struct* %0, i64 %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  store %struct.mm_struct* %16, %struct.mm_struct** %10, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.page*, %struct.page** %8, align 8
  %20 = call i64 @PageAnon(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %65

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.page*, %struct.page** %8, align 8
  %27 = call i32 @flush_dcache_page(%struct.page* %26)
  %28 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32* @get_locked_pte(%struct.mm_struct* %28, i64 %29, i32** %13)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %65

34:                                               ; preds = %23
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pte_none(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %61

42:                                               ; preds = %34
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i32 @get_page(%struct.page* %43)
  %45 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %46 = load i32, i32* @file_rss, align 4
  %47 = call i32 @inc_mm_counter(%struct.mm_struct* %45, i32 %46)
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = call i32 @page_add_file_rmap(%struct.page* %48)
  %50 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.page*, %struct.page** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @mk_pte(%struct.page* %53, i32 %54)
  %56 = call i32 @set_pte_at(%struct.mm_struct* %50, i64 %51, i32* %52, i32 %55)
  store i32 0, i32* %11, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @pte_unmap_unlock(i32* %57, i32* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %67

61:                                               ; preds = %41
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @pte_unmap_unlock(i32* %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %33, %22
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %42
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32* @get_locked_pte(%struct.mm_struct*, i64, i32**) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @inc_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @page_add_file_rmap(%struct.page*) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
