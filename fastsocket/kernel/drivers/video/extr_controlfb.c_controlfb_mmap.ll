; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_controlfb_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_controlfb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { i64, i64, i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @controlfb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @controlfb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = shl i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = xor i64 %19, -1
  %21 = and i64 %18, %20
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %21, %25
  %27 = call i64 @PAGE_ALIGN(i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %121

43:                                               ; preds = %31
  %44 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @PAGE_MASK, align 8
  %50 = xor i64 %49, -1
  %51 = and i64 %48, %50
  %52 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %51, %55
  %57 = call i64 @PAGE_ALIGN(i64 %56)
  store i64 %57, i64* %8, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pgprot_noncached(i32 %60)
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  br label %71

64:                                               ; preds = %2
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pgprot_cached_wthru(i32 %67)
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %64, %43
  %72 = load i64, i64* @PAGE_MASK, align 8
  %73 = load i64, i64* %7, align 8
  %74 = and i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %77, %80
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %81, %82
  %84 = load i64, i64* %8, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %121

89:                                               ; preds = %71
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @PAGE_SHIFT, align 8
  %95 = lshr i64 %93, %94
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @PAGE_SHIFT, align 8
  %104 = lshr i64 %102, %103
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %106 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %107, %110
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %113 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %98, i64 %101, i64 %104, i64 %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %89
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %121

120:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %117, %86, %40
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @pgprot_cached_wthru(i32) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
