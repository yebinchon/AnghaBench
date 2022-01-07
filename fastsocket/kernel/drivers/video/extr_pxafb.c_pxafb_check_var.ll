; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { i32 }
%struct.pxafb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pxafb_mach_info* }
%struct.pxafb_mach_info = type { i64 }
%struct.pxafb_mode_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pxafb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.pxafb_info*, align 8
  %7 = alloca %struct.pxafb_mach_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pxafb_mode_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = bitcast %struct.fb_info* %10 to %struct.pxafb_info*
  store %struct.pxafb_info* %11, %struct.pxafb_info** %6, align 8
  %12 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %13 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %15, align 8
  store %struct.pxafb_mach_info* %16, %struct.pxafb_mach_info** %7, align 8
  %17 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %7, align 8
  %18 = getelementptr inbounds %struct.pxafb_mach_info, %struct.pxafb_mach_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %7, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %24 = call %struct.pxafb_mode_info* @pxafb_getmode(%struct.pxafb_mach_info* %22, %struct.fb_var_screeninfo* %23)
  store %struct.pxafb_mode_info* %24, %struct.pxafb_mode_info** %9, align 8
  %25 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %9, align 8
  %26 = icmp ne %struct.pxafb_mode_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %54

30:                                               ; preds = %21
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = load %struct.pxafb_mode_info*, %struct.pxafb_mode_info** %9, align 8
  %33 = call i32 @pxafb_setmode(%struct.fb_var_screeninfo* %31, %struct.pxafb_mode_info* %32)
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = call i32 @pxafb_var_to_bpp(%struct.fb_var_screeninfo* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %34
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = call i32 @var_to_depth(%struct.fb_var_screeninfo* %43)
  %45 = call i32 @pxafb_set_pixfmt(%struct.fb_var_screeninfo* %42, i32 %44)
  %46 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %48 = call i32 @pxafb_adjust_timing(%struct.pxafb_info* %46, %struct.fb_var_screeninfo* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %51, %39, %27
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.pxafb_mode_info* @pxafb_getmode(%struct.pxafb_mach_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @pxafb_setmode(%struct.fb_var_screeninfo*, %struct.pxafb_mode_info*) #1

declare dso_local i32 @pxafb_var_to_bpp(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @pxafb_set_pixfmt(%struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @var_to_depth(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @pxafb_adjust_timing(%struct.pxafb_info*, %struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
