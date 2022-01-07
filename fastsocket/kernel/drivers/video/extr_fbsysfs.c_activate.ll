; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbsysfs.c_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbsysfs.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_var_screeninfo = type { i32 }

@FB_ACTIVATE_FORCE = common dso_local global i32 0, align 4
@FBINFO_MISC_USEREVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_var_screeninfo*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %7 = load i32, i32* @FB_ACTIVATE_FORCE, align 4
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = call i32 (...) @acquire_console_sem()
  %13 = load i32, i32* @FBINFO_MISC_USEREVENT, align 4
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %20 = call i32 @fb_set_var(%struct.fb_info* %18, %struct.fb_var_screeninfo* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @FBINFO_MISC_USEREVENT, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = call i32 (...) @release_console_sem()
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @fb_set_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
