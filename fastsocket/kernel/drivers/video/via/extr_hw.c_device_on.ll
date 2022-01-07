; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_device_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_device_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@viafb_CRT_ON = common dso_local global i32 0, align 4
@viafb_DVI_ON = common dso_local global i32 0, align 4
@viafb_LCD_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @device_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_on() #0 {
  %1 = load i32, i32* @viafb_CRT_ON, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @viafb_crt_enable()
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @viafb_DVI_ON, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 (...) @viafb_dvi_enable()
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i32, i32* @viafb_LCD_ON, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @viafb_lcd_enable()
  br label %15

15:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @viafb_crt_enable(...) #1

declare dso_local i32 @viafb_dvi_enable(...) #1

declare dso_local i32 @viafb_lcd_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
