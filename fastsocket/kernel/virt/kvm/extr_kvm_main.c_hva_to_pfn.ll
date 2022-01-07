; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_hva_to_pfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_hva_to_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.kvm = type { i32 }
%struct.vm_area_struct = type { i64, i32, i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@hwpoison_page = common dso_local global %struct.page* null, align 8
@VM_PFNMAP = common dso_local global i32 0, align 4
@fault_page = common dso_local global %struct.page* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hva_to_pfn(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1 x %struct.page*], align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = call i32 (...) @might_sleep()
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %6, i64 0, i64 0
  %13 = call i32 @get_user_pages_fast(i64 %11, i32 1, i32 1, %struct.page** %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @down_read(i32* %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @check_user_page_hwpoison(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @up_read(i32* %32)
  %34 = load %struct.page*, %struct.page** @hwpoison_page, align 8
  %35 = call i32 @get_page(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** @hwpoison_page, align 8
  %37 = call i64 @page_to_pfn(%struct.page* %36)
  store i64 %37, i64* %3, align 8
  br label %98

38:                                               ; preds = %19
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_3__* %41, i64 %42)
  store %struct.vm_area_struct* %43, %struct.vm_area_struct** %9, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %45 = icmp eq %struct.vm_area_struct* %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @VM_PFNMAP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %52, %46, %38
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  %65 = load %struct.page*, %struct.page** @fault_page, align 8
  %66 = call i32 @get_page(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** @fault_page, align 8
  %68 = call i64 @page_to_pfn(%struct.page* %67)
  store i64 %68, i64* %3, align 8
  br label %98

69:                                               ; preds = %52
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %70, %73
  %75 = load i64, i64* @PAGE_SHIFT, align 8
  %76 = lshr i64 %74, %75
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  store i64 %80, i64* %8, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = call i32 @up_read(i32* %84)
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @kvm_is_mmio_pfn(i64 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @BUG_ON(i32 %90)
  br label %96

92:                                               ; preds = %2
  %93 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %6, i64 0, i64 0
  %94 = load %struct.page*, %struct.page** %93, align 8
  %95 = call i64 @page_to_pfn(%struct.page* %94)
  store i64 %95, i64* %8, align 8
  br label %96

96:                                               ; preds = %92, %69
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %3, align 8
  br label %98

98:                                               ; preds = %96, %59, %28
  %99 = load i64, i64* %3, align 8
  ret i64 %99
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @check_user_page_hwpoison(i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvm_is_mmio_pfn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
