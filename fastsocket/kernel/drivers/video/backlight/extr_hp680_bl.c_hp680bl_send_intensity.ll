; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_hp680_bl.c_hp680bl_send_intensity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_hp680_bl.c_hp680bl_send_intensity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@hp680bl_suspended = common dso_local global i64 0, align 8
@bl_lock = common dso_local global i32 0, align 4
@current_intensity = common dso_local global i32 0, align 4
@DAC_LCD_BRIGHTNESS = common dso_local global i32 0, align 4
@HD64461_GPBDR = common dso_local global i32 0, align 4
@HD64461_GPBDR_LCDOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backlight_device*)* @hp680bl_send_intensity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp680bl_send_intensity(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %7 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %11 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %19 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i64, i64* @hp680bl_suspended, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_lock_irqsave(i32* @bl_lock, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load i32, i32* @current_intensity, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32, i32* @DAC_LCD_BRIGHTNESS, align 4
  %39 = call i32 @sh_dac_enable(i32 %38)
  %40 = load i32, i32* @HD64461_GPBDR, align 4
  %41 = call i32 @inw(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @HD64461_GPBDR_LCDOFF, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @HD64461_GPBDR, align 4
  %48 = call i32 @outw(i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 255, %50
  %52 = load i32, i32* @DAC_LCD_BRIGHTNESS, align 4
  %53 = call i32 @sh_dac_output(i64 %51, i32 %52)
  br label %87

54:                                               ; preds = %34, %29
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i32, i32* @current_intensity, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 255, %62
  %64 = load i32, i32* @DAC_LCD_BRIGHTNESS, align 4
  %65 = call i32 @sh_dac_output(i64 %63, i32 %64)
  %66 = load i32, i32* @DAC_LCD_BRIGHTNESS, align 4
  %67 = call i32 @sh_dac_disable(i32 %66)
  %68 = load i32, i32* @HD64461_GPBDR, align 4
  %69 = call i32 @inw(i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @HD64461_GPBDR_LCDOFF, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @HD64461_GPBDR, align 4
  %75 = call i32 @outw(i32 %73, i32 %74)
  br label %86

76:                                               ; preds = %57, %54
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 255, %81
  %83 = load i32, i32* @DAC_LCD_BRIGHTNESS, align 4
  %84 = call i32 @sh_dac_output(i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %37
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* @bl_lock, i64 %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* @current_intensity, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_dac_enable(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @sh_dac_output(i64, i32) #1

declare dso_local i32 @sh_dac_disable(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
