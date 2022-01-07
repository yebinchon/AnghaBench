; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_controlfb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_controlfb.c_controlfb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64 }
%struct.fb_info = type { i32 }
%struct.fb_info_control = type { %struct.fb_par_control }
%struct.fb_par_control = type { i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @controlfb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @controlfb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fb_info_control*, align 8
  %9 = alloca %struct.fb_par_control*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = bitcast %struct.fb_info* %10 to %struct.fb_info_control*
  store %struct.fb_info_control* %11, %struct.fb_info_control** %8, align 8
  %12 = load %struct.fb_info_control*, %struct.fb_info_control** %8, align 8
  %13 = getelementptr inbounds %struct.fb_info_control, %struct.fb_info_control* %12, i32 0, i32 0
  store %struct.fb_par_control* %13, %struct.fb_par_control** %9, align 8
  %14 = load %struct.fb_par_control*, %struct.fb_par_control** %9, align 8
  %15 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 31, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.fb_par_control*, %struct.fb_par_control** %9, align 8
  %29 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.fb_par_control*, %struct.fb_par_control** %9, align 8
  %33 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %2
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fb_par_control*, %struct.fb_par_control** %9, align 8
  %41 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.fb_par_control*, %struct.fb_par_control** %9, align 8
  %45 = getelementptr inbounds %struct.fb_par_control, %struct.fb_par_control* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36, %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %36
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.fb_info_control*, %struct.fb_info_control** %8, align 8
  %57 = call i32 @set_screen_start(i32 %52, i64 %55, %struct.fb_info_control* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @set_screen_start(i32, i64, %struct.fb_info_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
