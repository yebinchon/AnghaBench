; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ffb.c_ffb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ffb.c_ffb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64 }
%struct.fb_info = type { i64 }
%struct.ffb_par = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @ffb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.ffb_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ffb_par*
  store %struct.ffb_par* %10, %struct.ffb_par** %6, align 8
  %11 = load %struct.ffb_par*, %struct.ffb_par** %6, align 8
  %12 = call i32 @ffb_switch_from_graph(%struct.ffb_par* %11)
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ffb_switch_from_graph(%struct.ffb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
