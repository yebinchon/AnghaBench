; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_vma_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_vma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mon_reader_bin* }
%struct.mon_reader_bin = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.page* }
%struct.page = type { i32 }
%struct.vm_fault = type { i64, %struct.page* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @mon_bin_vma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_bin_vma_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.mon_reader_bin*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %11, align 8
  store %struct.mon_reader_bin* %12, %struct.mon_reader_bin** %6, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = shl i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %6, align 8
  %20 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @CHUNK_SIZE, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %6, align 8
  %30 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.page*, %struct.page** %34, align 8
  store %struct.page* %35, %struct.page** %9, align 8
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = call i32 @get_page(%struct.page* %36)
  %38 = load %struct.page*, %struct.page** %9, align 8
  %39 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 1
  store %struct.page* %38, %struct.page** %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %25, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
