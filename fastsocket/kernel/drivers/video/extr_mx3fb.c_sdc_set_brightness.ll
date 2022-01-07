; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_sdc_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_sdc_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx3fb_data = type { i32 }

@SDC_PWM_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mx3fb_data*, i32)* @sdc_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdc_set_brightness(%struct.mx3fb_data* %0, i32 %1) #0 {
  %3 = alloca %struct.mx3fb_data*, align 8
  %4 = alloca i32, align 4
  store %struct.mx3fb_data* %0, %struct.mx3fb_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %6, 16
  %8 = sext i32 %7 to i64
  %9 = or i64 50331648, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @SDC_PWM_CTRL, align 4
  %12 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %5, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @mx3fb_write_reg(%struct.mx3fb_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
