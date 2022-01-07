; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cobalt_lcdfb.c_cobalt_lcdfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cobalt_lcdfb.c_cobalt_lcdfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@LCD_ON = common dso_local global i32 0, align 4
@LCD_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @cobalt_lcdfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_lcdfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %8 = call i32 @lcd_busy_wait(%struct.fb_info* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %19 [
    i32 128, label %15
  ]

15:                                               ; preds = %13
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = load i32, i32* @LCD_ON, align 4
  %18 = call i32 @lcd_write_control(%struct.fb_info* %16, i32 %17)
  br label %23

19:                                               ; preds = %13
  %20 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %21 = load i32, i32* @LCD_OFF, align 4
  %22 = call i32 @lcd_write_control(%struct.fb_info* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @lcd_busy_wait(%struct.fb_info*) #1

declare dso_local i32 @lcd_write_control(%struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
