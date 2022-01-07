; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tosa_lcd.c_tosa_lcd_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.tosa_lcd_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tosa_lcd_set_power(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tosa_lcd_data*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %7 = call %struct.tosa_lcd_data* @lcd_get_data(%struct.lcd_device* %6)
  store %struct.tosa_lcd_data* %7, %struct.tosa_lcd_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @POWER_IS_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %13 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @POWER_IS_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %19 = call i32 @tosa_lcd_tg_on(%struct.tosa_lcd_data* %18)
  br label %20

20:                                               ; preds = %17, %11, %2
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @POWER_IS_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %26 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @POWER_IS_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %32 = call i32 @tosa_lcd_tg_off(%struct.tosa_lcd_data* %31)
  br label %33

33:                                               ; preds = %30, %24, %20
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.tosa_lcd_data*, %struct.tosa_lcd_data** %5, align 8
  %36 = getelementptr inbounds %struct.tosa_lcd_data, %struct.tosa_lcd_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret i32 0
}

declare dso_local %struct.tosa_lcd_data* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local i64 @POWER_IS_ON(i32) #1

declare dso_local i32 @tosa_lcd_tg_on(%struct.tosa_lcd_data*) #1

declare dso_local i32 @tosa_lcd_tg_off(%struct.tosa_lcd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
