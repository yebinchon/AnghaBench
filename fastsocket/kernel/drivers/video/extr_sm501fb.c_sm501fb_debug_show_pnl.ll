; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_debug_show_pnl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_debug_show_pnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sm501fb_info = type { i32 }

@SM501_DC_PANEL_HWC_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sm501fb_debug_show_pnl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_debug_show_pnl(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sm501fb_info*, align 8
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.sm501fb_info* @dev_get_drvdata(%struct.device* %9)
  store %struct.sm501fb_info* %10, %struct.sm501fb_info** %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load %struct.sm501fb_info*, %struct.sm501fb_info** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @sm501fb_show_regs(%struct.sm501fb_info* %12, i8* %13, i32 0, i32 64)
  %15 = load i8*, i8** %8, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %8, align 8
  %18 = load %struct.sm501fb_info*, %struct.sm501fb_info** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @SM501_DC_PANEL_HWC_BASE, align 4
  %21 = call i32 @sm501fb_show_regs(%struct.sm501fb_info* %18, i8* %19, i32 %20, i32 16)
  %22 = load i8*, i8** %8, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  ret i32 %30
}

declare dso_local %struct.sm501fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sm501fb_show_regs(%struct.sm501fb_info*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
