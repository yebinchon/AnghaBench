; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_vma_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_vma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.uio_device* }
%struct.uio_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.vm_fault = type { i32, %struct.page* }
%struct.page = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@UIO_MEM_LOGICAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @uio_vma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_vma_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.uio_device*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.uio_device*, %struct.uio_device** %11, align 8
  store %struct.uio_device* %12, %struct.uio_device** %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = call i32 @uio_find_mem_index(%struct.vm_area_struct* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load %struct.uio_device*, %struct.uio_device** %6, align 8
  %29 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UIO_MEM_LOGICAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %19
  %41 = load %struct.uio_device*, %struct.uio_device** %6, align 8
  %42 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %50, %51
  %53 = call %struct.page* @virt_to_page(i64 %52)
  store %struct.page* %53, %struct.page** %7, align 8
  br label %69

54:                                               ; preds = %19
  %55 = load %struct.uio_device*, %struct.uio_device** %6, align 8
  %56 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr i8, i8* %65, i64 %66
  %68 = call %struct.page* @vmalloc_to_page(i8* %67)
  store %struct.page* %68, %struct.page** %7, align 8
  br label %69

69:                                               ; preds = %54, %40
  %70 = load %struct.page*, %struct.page** %7, align 8
  %71 = call i32 @get_page(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %74 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %73, i32 0, i32 1
  store %struct.page* %72, %struct.page** %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %69, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @uio_find_mem_index(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
