; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_locomolcd.c_locomolcd_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_locomolcd.c_locomolcd_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@locomolcd_dev = common dso_local global %struct.TYPE_4__* null, align 8
@LOCOMO_TC = common dso_local global i64 0, align 8
@LOCOMO_GPIO_LCD_VSHA_ON = common dso_local global i32 0, align 4
@LOCOMO_GPIO_LCD_VEE_ON = common dso_local global i32 0, align 4
@LOCOMO_GPIO_LCD_MOD = common dso_local global i32 0, align 4
@LOCOMO_GPIO_LCD_VSHD_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @locomolcd_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locomolcd_off(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @locomolcd_dev, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @LOCOMO_TC, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @locomo_writel(i32 6, i64 %7)
  %9 = call i32 @mdelay(i32 1)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @locomolcd_dev, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LOCOMO_GPIO_LCD_VSHA_ON, align 4
  %15 = call i32 @locomo_gpio_write(i32 %13, i32 %14, i32 0)
  %16 = call i32 @mdelay(i32 110)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @locomolcd_dev, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LOCOMO_GPIO_LCD_VEE_ON, align 4
  %22 = call i32 @locomo_gpio_write(i32 %20, i32 %21, i32 0)
  %23 = call i32 @mdelay(i32 700)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @locomolcd_dev, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LOCOMO_TC, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @locomo_writel(i32 0, i64 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @locomolcd_dev, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LOCOMO_GPIO_LCD_MOD, align 4
  %35 = call i32 @locomo_gpio_write(i32 %33, i32 %34, i32 0)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @locomolcd_dev, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @LOCOMO_GPIO_LCD_VSHD_ON, align 4
  %41 = call i32 @locomo_gpio_write(i32 %39, i32 %40, i32 0)
  ret void
}

declare dso_local i32 @locomo_writel(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @locomo_gpio_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
