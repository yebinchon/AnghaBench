; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_fb_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.bfin_t350mcqbfb_info* }
%struct.TYPE_2__ = type { i64 }
%struct.bfin_t350mcqbfb_info = type { i32, i64, i32 }
%struct.vm_area_struct = type { i64, i32, i64 }

@ACTIVE_VIDEO_MEM_OFFSET = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @bfin_t350mcqb_fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_t350mcqb_fb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.bfin_t350mcqbfb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %8, align 8
  store %struct.bfin_t350mcqbfb_info* %9, %struct.bfin_t350mcqbfb_info** %6, align 8
  %10 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %6, align 8
  %11 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %6, align 8
  %17 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %6, align 8
  %20 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %6, align 8
  %22 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %21, i32 0, i32 2
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.bfin_t350mcqbfb_info*, %struct.bfin_t350mcqbfb_info** %6, align 8
  %25 = getelementptr inbounds %struct.bfin_t350mcqbfb_info, %struct.bfin_t350mcqbfb_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ACTIVE_VIDEO_MEM_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %33, %37
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @VM_MAYSHARE, align 4
  %42 = load i32, i32* @VM_SHARED, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %15, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
