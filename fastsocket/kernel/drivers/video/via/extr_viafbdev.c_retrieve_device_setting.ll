; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_retrieve_device_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_retrieve_device_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viafb_ioctl_setting = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@viafb_CRT_ON = common dso_local global i32 0, align 4
@CRT_Device = common dso_local global i32 0, align 4
@viafb_DVI_ON = common dso_local global i32 0, align 4
@DVI_Device = common dso_local global i32 0, align 4
@viafb_LCD_ON = common dso_local global i32 0, align 4
@LCD_Device = common dso_local global i32 0, align 4
@viafb_LCD2_ON = common dso_local global i32 0, align 4
@LCD2_Device = common dso_local global i32 0, align 4
@viafb_SAMM_ON = common dso_local global i32 0, align 4
@viafb_bpp = common dso_local global i32 0, align 4
@viafb_bpp1 = common dso_local global i32 0, align 4
@viafb_refresh = common dso_local global i32 0, align 4
@viafb_refresh1 = common dso_local global i32 0, align 4
@viafb_hotplug_Xres = common dso_local global i32 0, align 4
@viafb_hotplug_Yres = common dso_local global i32 0, align 4
@viafb_second_xres = common dso_local global i32 0, align 4
@viafb_second_yres = common dso_local global i32 0, align 4
@viafb_lcd_dsp_method = common dso_local global i32 0, align 4
@viafb_lcd_panel_id = common dso_local global i32 0, align 4
@viafb_lcd_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.viafb_ioctl_setting*)* @retrieve_device_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retrieve_device_setting(%struct.viafb_ioctl_setting* %0) #0 {
  %2 = alloca %struct.viafb_ioctl_setting*, align 8
  store %struct.viafb_ioctl_setting* %0, %struct.viafb_ioctl_setting** %2, align 8
  %3 = load i32, i32* @viafb_CRT_ON, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @CRT_Device, align 4
  %7 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %8 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %7, i32 0, i32 11
  store i32 %6, i32* %8, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = load i32, i32* @viafb_DVI_ON, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @DVI_Device, align 4
  %14 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %15 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i32, i32* @viafb_LCD_ON, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* @LCD_Device, align 4
  %23 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %24 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* @viafb_LCD2_ON, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* @LCD2_Device, align 4
  %32 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %33 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %27
  %37 = load i32, i32* @viafb_SAMM_ON, align 4
  %38 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %39 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 4
  %40 = call i32 (...) @get_primary_device()
  %41 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %42 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @viafb_bpp, align 4
  %44 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %45 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @viafb_bpp1, align 4
  %47 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %48 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @viafb_refresh, align 4
  %50 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %51 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @viafb_refresh1, align 4
  %53 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %54 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @viafb_hotplug_Xres, align 4
  %56 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %57 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @viafb_hotplug_Yres, align 4
  %59 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %60 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @viafb_second_xres, align 4
  %62 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %63 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @viafb_second_yres, align 4
  %65 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %66 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @viafb_lcd_dsp_method, align 4
  %68 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %69 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @viafb_lcd_panel_id, align 4
  %72 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %73 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @viafb_lcd_mode, align 4
  %76 = load %struct.viafb_ioctl_setting*, %struct.viafb_ioctl_setting** %2, align 8
  %77 = getelementptr inbounds %struct.viafb_ioctl_setting, %struct.viafb_ioctl_setting* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  ret void
}

declare dso_local i32 @get_primary_device(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
