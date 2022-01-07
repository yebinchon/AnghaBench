; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { i32 }
%struct.pxafb_info = type { i64, i32, i32* }

@DMA_MAX = common dso_local global i32 0, align 4
@DMA_BASE = common dso_local global i32 0, align 4
@C_ENABLE = common dso_local global i64 0, align 8
@LCCR0_SDS = common dso_local global i32 0, align 4
@FBR1 = common dso_local global i32 0, align 4
@FBR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pxafb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.pxafb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = bitcast %struct.fb_info* %8 to %struct.pxafb_info*
  store %struct.pxafb_info* %9, %struct.pxafb_info** %6, align 8
  %10 = load i32, i32* @DMA_MAX, align 4
  %11 = load i32, i32* @DMA_BASE, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %14 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @C_ENABLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %21 = call i32 @setup_base_frame(%struct.pxafb_info* %20, i32 1)
  %22 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %23 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LCCR0_SDS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %30 = load i32, i32* @FBR1, align 4
  %31 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %32 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, 1
  %40 = call i32 @lcd_writel(%struct.pxafb_info* %29, i32 %30, i32 %39)
  br label %41

41:                                               ; preds = %28, %19
  %42 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %43 = load i32, i32* @FBR0, align 4
  %44 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %45 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 1
  %52 = call i32 @lcd_writel(%struct.pxafb_info* %42, i32 %43, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %41, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @setup_base_frame(%struct.pxafb_info*, i32) #1

declare dso_local i32 @lcd_writel(%struct.pxafb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
