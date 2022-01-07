; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pvr2fb.c_pvr2_update_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pvr2fb.c_pvr2_update_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, i64 }
%struct.fb_var_screeninfo = type { i32, i64, i64 }
%struct.pvr2fb_par = type { i64 }

@DISP_DIWADDRL = common dso_local global i32 0, align 4
@DISP_DIWADDRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @pvr2_update_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_update_display(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pvr2fb_par*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.pvr2fb_par*
  store %struct.pvr2fb_par* %8, %struct.pvr2fb_par** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  store %struct.fb_var_screeninfo* %10, %struct.fb_var_screeninfo** %4, align 8
  %11 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %12 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @DISP_DIWADDRL, align 4
  %15 = call i32 @fb_writel(i64 %13, i32 %14)
  %16 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @get_line_length(i64 %25, i32 %28)
  %30 = add nsw i64 %18, %29
  %31 = load i32, i32* @DISP_DIWADDRS, align 4
  %32 = call i32 @fb_writel(i64 %30, i32 %31)
  ret void
}

declare dso_local i32 @fb_writel(i64, i32) #1

declare dso_local i64 @get_line_length(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
