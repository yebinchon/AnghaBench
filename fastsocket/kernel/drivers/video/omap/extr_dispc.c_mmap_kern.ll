; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_mmap_kern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_mmap_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.omapfb_mem_region = type { i32, i8*, i64 }
%struct.vm_struct = type { i64 }
%struct.vm_area_struct = type { i64, i64, i32* }

@VM_IOREMAP = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"can't get kernel vm area\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@pgprot_kernel = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"kernel mmap for FBMEM failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_mem_region*)* @mmap_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_kern(%struct.omapfb_mem_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_mem_region*, align 8
  %4 = alloca %struct.vm_struct*, align 8
  %5 = alloca %struct.vm_area_struct, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.omapfb_mem_region* %0, %struct.omapfb_mem_region** %3, align 8
  %8 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %9 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @VM_IOREMAP, align 4
  %12 = call %struct.vm_struct* @get_vm_area(i64 %10, i32 %11)
  store %struct.vm_struct* %12, %struct.vm_struct** %4, align 8
  %13 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %14 = icmp eq %struct.vm_struct* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 2
  store i32* @init_mm, i32** %23, align 8
  %24 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* @pgprot_kernel, align 4
  %28 = call i32 @pgprot_writecombine(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %33 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %39 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %44 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %5, i64 %37, i32 %42, i64 %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %22
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %61

56:                                               ; preds = %22
  %57 = load i64, i64* %7, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %3, align 8
  %60 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %49, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.vm_struct* @get_vm_area(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
