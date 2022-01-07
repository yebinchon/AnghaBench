; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_mmap_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_mmap_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.fb_info = type { %struct.TYPE_3__, %struct.omapfb_plane_struct* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.omapfb_plane_struct = type { i64 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32, i8*, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@mmap_user_ops = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @omap_dispc_mmap_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dispc_mmap_user(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.omapfb_plane_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %11, align 8
  store %struct.omapfb_plane_struct* %12, %struct.omapfb_plane_struct** %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %126

22:                                               ; preds = %2
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 -1, %26
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %126

32:                                               ; preds = %22
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = shl i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %126

52:                                               ; preds = %32
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %126

67:                                               ; preds = %52
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @PAGE_SHIFT, align 8
  %73 = lshr i64 %71, %72
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @VM_IO, align 4
  %77 = load i32, i32* @VM_RESERVED, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pgprot_writecombine(i32 %85)
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 6
  store i32* @mmap_user_ops, i32** %90, align 8
  %91 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %92 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @PAGE_SHIFT, align 8
  %103 = lshr i64 %101, %102
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %106, %109
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %97, i64 %100, i64 %103, i64 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %67
  %117 = load i32, i32* @EAGAIN, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %126

119:                                              ; preds = %67
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %121 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %122 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = call i32 @atomic_inc(i32* %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %119, %116, %64, %49, %29, %21
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
