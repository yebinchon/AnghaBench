; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_set_aoi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_set_aoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.mfb_info*, %struct.fb_var_screeninfo }
%struct.mfb_info = type { i32, i32, %struct.diu_ad* }
%struct.diu_ad = type { i8*, i8* }
%struct.fb_var_screeninfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @fsl_diu_set_aoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_set_aoi(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.mfb_info*, align 8
  %5 = alloca %struct.diu_ad*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  store %struct.fb_var_screeninfo* %7, %struct.fb_var_screeninfo** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.mfb_info*, %struct.mfb_info** %9, align 8
  store %struct.mfb_info* %10, %struct.mfb_info** %4, align 8
  %11 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %12 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %11, i32 0, i32 2
  %13 = load %struct.diu_ad*, %struct.diu_ad** %12, align 8
  store %struct.diu_ad* %13, %struct.diu_ad** %5, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 16
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.diu_ad*, %struct.diu_ad** %5, align 8
  %24 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %26 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 16
  %29 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %30 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.diu_ad*, %struct.diu_ad** %5, align 8
  %35 = getelementptr inbounds %struct.diu_ad, %struct.diu_ad* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
