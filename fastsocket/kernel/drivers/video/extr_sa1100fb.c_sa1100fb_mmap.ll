; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32 }
%struct.sa1100fb_info = type { i32, i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @sa1100fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100fb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.sa1100fb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = bitcast %struct.fb_info* %10 to %struct.sa1100fb_info*
  store %struct.sa1100fb_info* %11, %struct.sa1100fb_info** %6, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = shl i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %6, align 8
  %29 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %6, align 8
  %33 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %6, align 8
  %36 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %6, align 8
  %39 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dma_mmap_writecombine(i32 %30, %struct.vm_area_struct* %31, i32 %34, i32 %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %111

42:                                               ; preds = %2
  %43 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @PAGE_MASK, align 8
  %49 = xor i64 %48, -1
  %50 = and i64 %47, %49
  %51 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %50, %54
  %56 = call i64 @PAGE_ALIGN(i64 %55)
  store i64 %56, i64* %8, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %63, %64
  %66 = load i64, i64* %8, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %42
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %111

71:                                               ; preds = %42
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @PAGE_MASK, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @PAGE_SHIFT, align 8
  %79 = lshr i64 %77, %78
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @VM_IO, align 4
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pgprot_noncached(i32 %89)
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @PAGE_SHIFT, align 8
  %99 = lshr i64 %97, %98
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %104 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %102, %105
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %93, i64 %96, i64 %99, i64 %106, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %71, %68, %23
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @dma_mmap_writecombine(i32, %struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
