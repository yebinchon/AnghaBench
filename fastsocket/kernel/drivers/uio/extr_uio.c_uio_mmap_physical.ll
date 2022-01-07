; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_mmap_physical.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uio/extr_uio.c_uio_mmap_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, i64, i64, %struct.uio_device* }
%struct.uio_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*)* @uio_mmap_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_mmap_physical(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.uio_device*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 4
  %8 = load %struct.uio_device*, %struct.uio_device** %7, align 8
  store %struct.uio_device* %8, %struct.uio_device** %4, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = call i32 @uio_find_mem_index(%struct.vm_area_struct* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load i32, i32* @VM_IO, align 4
  %18 = load i32, i32* @VM_RESERVED, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pgprot_noncached(i32 %26)
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.uio_device*, %struct.uio_device** %4, align 8
  %35 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @remap_pfn_range(%struct.vm_area_struct* %30, i64 %33, i32 %45, i64 %52, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %16, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @uio_find_mem_index(%struct.vm_area_struct*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
