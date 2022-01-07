; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_ltv350qv.c_ltv350qv_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_ltv350qv.c_ltv350qv_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.ltv350qv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @ltv350qv_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltv350qv_set_power(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltv350qv*, align 8
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lcd_device*, %struct.lcd_device** %3, align 8
  %7 = call %struct.ltv350qv* @lcd_get_data(%struct.lcd_device* %6)
  store %struct.ltv350qv* %7, %struct.ltv350qv** %5, align 8
  %8 = load %struct.ltv350qv*, %struct.ltv350qv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ltv350qv_power(%struct.ltv350qv* %8, i32 %9)
  ret i32 %10
}

declare dso_local %struct.ltv350qv* @lcd_get_data(%struct.lcd_device*) #1

declare dso_local i32 @ltv350qv_power(%struct.ltv350qv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
