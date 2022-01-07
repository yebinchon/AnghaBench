; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cobalt_lcdfb.c_lcd_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cobalt_lcdfb.c_lcd_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@LCD_PRERESET = common dso_local global i32 0, align 4
@LCD_CLEAR = common dso_local global i32 0, align 4
@LCD_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @lcd_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_clear(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = call i32 @udelay(i32 150)
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = load i32, i32* @LCD_PRERESET, align 4
  %11 = call i32 @lcd_write_control(%struct.fb_info* %9, i32 %10)
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  %16 = call i32 @udelay(i32 150)
  %17 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %18 = load i32, i32* @LCD_CLEAR, align 4
  %19 = call i32 @lcd_write_control(%struct.fb_info* %17, i32 %18)
  %20 = call i32 @udelay(i32 150)
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = load i32, i32* @LCD_RESET, align 4
  %23 = call i32 @lcd_write_control(%struct.fb_info* %21, i32 %22)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @lcd_write_control(%struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
