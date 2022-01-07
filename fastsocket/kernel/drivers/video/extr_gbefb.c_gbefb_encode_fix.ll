; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_gbefb.c_gbefb_encode_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_gbefb.c_gbefb_encode_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_fix_screeninfo = type { i64, i32, i32, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"SGI GBE\00", align 1
@gbe_mem = common dso_local global i64 0, align 8
@gbe_mem_size = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@GBE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_fix_screeninfo*, %struct.fb_var_screeninfo*)* @gbefb_encode_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbefb_encode_fix(%struct.fb_fix_screeninfo* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.fb_fix_screeninfo*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_fix_screeninfo* %0, %struct.fb_fix_screeninfo** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %5 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %6 = call i32 @memset(%struct.fb_fix_screeninfo* %5, i32 0, i32 80)
  %7 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %8 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @strcpy(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @gbe_mem, align 8
  %12 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %13 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i32, i32* @gbe_mem_size, align 4
  %15 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %18 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %21 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @FB_ACCEL_NONE, align 4
  %23 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %32 [
    i32 8, label %28
  ]

28:                                               ; preds = %2
  %29 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %30 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %31 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %34 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %38 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %42 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = sdiv i32 %49, 8
  %51 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %52 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @GBE_BASE, align 4
  %54 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %55 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %57 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %56, i32 0, i32 2
  store i32 4, i32* %57, align 4
  ret void
}

declare dso_local i32 @memset(%struct.fb_fix_screeninfo*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
