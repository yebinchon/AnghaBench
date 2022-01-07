; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_get_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_get_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_fix_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { i32 }
%struct.aafb_info = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"PMAG-AA\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_MONO10 = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_fix_screeninfo*, i32, %struct.fb_info*)* @aafb_get_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aafb_get_fix(%struct.fb_fix_screeninfo* %0, i32 %1, %struct.fb_info* %2) #0 {
  %4 = alloca %struct.fb_fix_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.aafb_info*, align 8
  store %struct.fb_fix_screeninfo* %0, %struct.fb_fix_screeninfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fb_info* %2, %struct.fb_info** %6, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %9 = bitcast %struct.fb_info* %8 to %struct.aafb_info*
  store %struct.aafb_info* %9, %struct.aafb_info** %7, align 8
  %10 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %11 = call i32 @memset(%struct.fb_fix_screeninfo* %10, i32 0, i32 36)
  %12 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.aafb_info*, %struct.aafb_info** %7, align 8
  %17 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %20 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.aafb_info*, %struct.aafb_info** %7, align 8
  %22 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %27 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %28 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %30 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @FB_VISUAL_MONO10, align 4
  %34 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %36, i32 0, i32 2
  store i32 1280, i32* %37, align 4
  %38 = load i32, i32* @FB_ACCEL_NONE, align 4
  %39 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.fb_fix_screeninfo*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
