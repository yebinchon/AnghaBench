; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_pan_pnl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_pan_pnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }
%struct.fb_info = type { %struct.sm501fb_par* }
%struct.sm501fb_par = type { %struct.sm501fb_info* }
%struct.sm501fb_info = type { i64 }

@SM501_DC_PANEL_FB_WIDTH = common dso_local global i64 0, align 8
@SM501_DC_PANEL_FB_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @sm501fb_pan_pnl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_pan_pnl(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.sm501fb_par*, align 8
  %6 = alloca %struct.sm501fb_info*, align 8
  %7 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.sm501fb_par*, %struct.sm501fb_par** %9, align 8
  store %struct.sm501fb_par* %10, %struct.sm501fb_par** %5, align 8
  %11 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %12 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %11, i32 0, i32 0
  %13 = load %struct.sm501fb_info*, %struct.sm501fb_info** %12, align 8
  store %struct.sm501fb_info* %13, %struct.sm501fb_info** %6, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %16, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %25 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SM501_DC_PANEL_FB_WIDTH, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i64 %23, i64 %28)
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %32, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %41 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SM501_DC_PANEL_FB_HEIGHT, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i64 %39, i64 %44)
  %46 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %47 = call i32 @sm501fb_sync_regs(%struct.sm501fb_info* %46)
  ret i32 0
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @sm501fb_sync_regs(%struct.sm501fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
