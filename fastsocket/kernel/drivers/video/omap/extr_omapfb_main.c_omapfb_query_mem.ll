; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_query_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_query_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { i64, %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.omapfb_mem_region* }
%struct.omapfb_mem_region = type { i32, i32 }
%struct.omapfb_mem_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_mem_info*)* @omapfb_query_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_query_mem(%struct.fb_info* %0, %struct.omapfb_mem_info* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.omapfb_mem_info*, align 8
  %5 = alloca %struct.omapfb_plane_struct*, align 8
  %6 = alloca %struct.omapfb_device*, align 8
  %7 = alloca %struct.omapfb_mem_region*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.omapfb_mem_info* %1, %struct.omapfb_mem_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %9, align 8
  store %struct.omapfb_plane_struct* %10, %struct.omapfb_plane_struct** %5, align 8
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %12 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %11, i32 0, i32 1
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %12, align 8
  store %struct.omapfb_device* %13, %struct.omapfb_device** %6, align 8
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %15 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %16, align 8
  %18 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %19 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %17, i64 %20
  store %struct.omapfb_mem_region* %21, %struct.omapfb_mem_region** %7, align 8
  %22 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %4, align 8
  %23 = call i32 @memset(%struct.omapfb_mem_info* %22, i32 0, i32 8)
  %24 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %7, align 8
  %25 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %4, align 8
  %28 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %7, align 8
  %30 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %4, align 8
  %33 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.omapfb_mem_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
