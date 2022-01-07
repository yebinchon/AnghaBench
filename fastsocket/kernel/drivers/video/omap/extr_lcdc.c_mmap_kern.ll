; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_mmap_kern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_mmap_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.vm_struct = type { i64 }
%struct.vm_area_struct = type { i64, i64, i32* }

@lcdc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VM_IOREMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't get kernel vm area\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@pgprot_kernel = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"kernel mmap for FB memory failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mmap_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_kern() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca %struct.vm_area_struct, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 3), align 8
  %7 = load i32, i32* @VM_IOREMAP, align 4
  %8 = call %struct.vm_struct* @get_vm_area(i64 %6, i32 %7)
  store %struct.vm_struct* %8, %struct.vm_struct** %2, align 8
  %9 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %10 = icmp eq %struct.vm_struct* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 2), align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %49

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i32 0, i32 2
  store i32* @init_mm, i32** %19, align 8
  %20 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  %21 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 3), align 8
  %27 = add i64 %25, %26
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @pgprot_kernel, align 4
  %30 = call i32 @pgprot_writecombine(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 3), align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %3, i64 %31, i32 %34, i64 %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %18
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 2), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %1, align 4
  br label %49

46:                                               ; preds = %18
  %47 = load i64, i64* %5, align 8
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %46, %39, %11
  %50 = load i32, i32* %1, align 4
  ret i32 %50
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
