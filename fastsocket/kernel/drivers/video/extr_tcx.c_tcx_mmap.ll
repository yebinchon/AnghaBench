; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tcx.c_tcx_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tcx.c_tcx_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vm_area_struct = type { i32 }
%struct.tcx_par = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @tcx_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcx_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.tcx_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.tcx_par*
  store %struct.tcx_par* %9, %struct.tcx_par** %5, align 8
  %10 = load %struct.tcx_par*, %struct.tcx_par** %5, align 8
  %11 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tcx_par*, %struct.tcx_par** %5, align 8
  %22 = getelementptr inbounds %struct.tcx_par, %struct.tcx_par* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = call i32 @sbusfb_mmap_helper(i32 %12, i32 %16, i32 %20, i32 %23, %struct.vm_area_struct* %24)
  ret i32 %25
}

declare dso_local i32 @sbusfb_mmap_helper(i32, i32, i32, i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
