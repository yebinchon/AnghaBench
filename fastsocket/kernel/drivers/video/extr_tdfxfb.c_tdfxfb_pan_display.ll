; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_tdfxfb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_tdfxfb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64 }
%struct.fb_info = type { %struct.TYPE_2__, %struct.tdfx_par* }
%struct.TYPE_2__ = type { i32 }
%struct.tdfx_par = type { i32 }

@nopan = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VIDDESKSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @tdfxfb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfxfb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.tdfx_par*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.tdfx_par*, %struct.tdfx_par** %9, align 8
  store %struct.tdfx_par* %10, %struct.tdfx_par** %6, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* @nopan, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %21
  %30 = load %struct.tdfx_par*, %struct.tdfx_par** %6, align 8
  %31 = call i32 @banshee_make_room(%struct.tdfx_par* %30, i32 1)
  %32 = load %struct.tdfx_par*, %struct.tdfx_par** %6, align 8
  %33 = load i32, i32* @VIDDESKSTART, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @tdfx_outl(%struct.tdfx_par* %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @banshee_make_room(%struct.tdfx_par*, i32) #1

declare dso_local i32 @tdfx_outl(%struct.tdfx_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
