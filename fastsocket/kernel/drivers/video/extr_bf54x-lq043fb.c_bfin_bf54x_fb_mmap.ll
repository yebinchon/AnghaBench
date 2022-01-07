; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bf54x-lq043fb.c_bfin_bf54x_fb_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bf54x-lq043fb.c_bfin_bf54x_fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.bfin_bf54xfb_info* }
%struct.TYPE_2__ = type { i64 }
%struct.bfin_bf54xfb_info = type { i32, i64, i32 }
%struct.vm_area_struct = type { i64, i32, i64 }

@VM_MAYSHARE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @bfin_bf54x_fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_bf54x_fb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.bfin_bf54xfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %8, align 8
  store %struct.bfin_bf54xfb_info* %9, %struct.bfin_bf54xfb_info** %6, align 8
  %10 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %6, align 8
  %11 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %6, align 8
  %17 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %6, align 8
  %20 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %6, align 8
  %22 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %21, i32 0, i32 2
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.bfin_bf54xfb_info*, %struct.bfin_bf54xfb_info** %6, align 8
  %25 = getelementptr inbounds %struct.bfin_bf54xfb_info, %struct.bfin_bf54xfb_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %31, %35
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @VM_MAYSHARE, align 4
  %40 = load i32, i32* @VM_SHARED, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %15, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
