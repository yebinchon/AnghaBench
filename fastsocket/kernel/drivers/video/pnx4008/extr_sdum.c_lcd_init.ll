; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_lcd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DUM_OUTP_FORMAT1 = common dso_local global i64 0, align 8
@V_LCD_STANDBY_OFF = common dso_local global i32 0, align 4
@dum_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@V_LCD_USE_9BIT_BUS = common dso_local global i32 0, align 4
@V_LCD_SYNC_RISE_L = common dso_local global i32 0, align 4
@V_LCD_SYNC_RISE_H = common dso_local global i32 0, align 4
@V_LCD_SYNC_FALL_L = common dso_local global i32 0, align 4
@V_LCD_SYNC_FALL_H = common dso_local global i32 0, align 4
@V_LCD_SYNC_ENABLE = common dso_local global i32 0, align 4
@V_LCD_DISPLAY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_init() #0 {
  %1 = call i32 (...) @lcd_reset()
  store i64 0, i64* @DUM_OUTP_FORMAT1, align 8
  %2 = call i32 @udelay(i32 1)
  %3 = load i32, i32* @V_LCD_STANDBY_OFF, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dum_data, i32 0, i32 0), align 4
  %5 = call i32 @iowrite32(i32 %3, i32 %4)
  %6 = call i32 @udelay(i32 1)
  %7 = load i32, i32* @V_LCD_USE_9BIT_BUS, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dum_data, i32 0, i32 0), align 4
  %9 = call i32 @iowrite32(i32 %7, i32 %8)
  %10 = call i32 @udelay(i32 1)
  %11 = load i32, i32* @V_LCD_SYNC_RISE_L, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dum_data, i32 0, i32 0), align 4
  %13 = call i32 @iowrite32(i32 %11, i32 %12)
  %14 = call i32 @udelay(i32 1)
  %15 = load i32, i32* @V_LCD_SYNC_RISE_H, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dum_data, i32 0, i32 0), align 4
  %17 = call i32 @iowrite32(i32 %15, i32 %16)
  %18 = call i32 @udelay(i32 1)
  %19 = load i32, i32* @V_LCD_SYNC_FALL_L, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dum_data, i32 0, i32 0), align 4
  %21 = call i32 @iowrite32(i32 %19, i32 %20)
  %22 = call i32 @udelay(i32 1)
  %23 = load i32, i32* @V_LCD_SYNC_FALL_H, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dum_data, i32 0, i32 0), align 4
  %25 = call i32 @iowrite32(i32 %23, i32 %24)
  %26 = call i32 @udelay(i32 1)
  %27 = load i32, i32* @V_LCD_SYNC_ENABLE, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dum_data, i32 0, i32 0), align 4
  %29 = call i32 @iowrite32(i32 %27, i32 %28)
  %30 = call i32 @udelay(i32 1)
  %31 = load i32, i32* @V_LCD_DISPLAY_ON, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dum_data, i32 0, i32 0), align 4
  %33 = call i32 @iowrite32(i32 %31, i32 %32)
  %34 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @lcd_reset(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
