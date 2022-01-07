; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_corgi_lcd.c_lcdtg_i2c_send_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_corgi_lcd.c_lcdtg_i2c_send_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_lcd = type { i32 }

@POWER0_COM_DOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.corgi_lcd*, i32, i32)* @lcdtg_i2c_send_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcdtg_i2c_send_byte(%struct.corgi_lcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.corgi_lcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.corgi_lcd* %0, %struct.corgi_lcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @POWER0_COM_DOUT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @lcdtg_i2c_send_bit(%struct.corgi_lcd* %16, i32 %19)
  br label %25

21:                                               ; preds = %11
  %22 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @lcdtg_i2c_send_bit(%struct.corgi_lcd* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8

31:                                               ; preds = %8
  ret void
}

declare dso_local i32 @lcdtg_i2c_send_bit(%struct.corgi_lcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
