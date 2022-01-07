; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_lcd_init_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_lcd_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lcd_height = common dso_local global i32 0, align 4
@LCD_FLAG_N = common dso_local global i32 0, align 4
@LCD_FLAG_D = common dso_local global i32 0, align 4
@LCD_FLAG_C = common dso_local global i32 0, align 4
@LCD_FLAG_B = common dso_local global i32 0, align 4
@lcd_flags = common dso_local global i32 0, align 4
@LCD_FLAG_F = common dso_local global i32 0, align 4
@LCD_FLAG_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lcd_init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_init_display() #0 {
  %1 = load i32, i32* @lcd_height, align 4
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* @LCD_FLAG_N, align 4
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ 0, %5 ]
  %8 = load i32, i32* @LCD_FLAG_D, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @LCD_FLAG_C, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LCD_FLAG_B, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* @lcd_flags, align 4
  %14 = call i32 @long_sleep(i32 20)
  %15 = call i32 @lcd_write_cmd(i32 48)
  %16 = call i32 @long_sleep(i32 10)
  %17 = call i32 @lcd_write_cmd(i32 48)
  %18 = call i32 @long_sleep(i32 10)
  %19 = call i32 @lcd_write_cmd(i32 48)
  %20 = call i32 @long_sleep(i32 10)
  %21 = load i32, i32* @lcd_flags, align 4
  %22 = load i32, i32* @LCD_FLAG_F, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 4, i32 0
  %27 = or i32 48, %26
  %28 = load i32, i32* @lcd_flags, align 4
  %29 = load i32, i32* @LCD_FLAG_N, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 8, i32 0
  %34 = or i32 %27, %33
  %35 = call i32 @lcd_write_cmd(i32 %34)
  %36 = call i32 @long_sleep(i32 10)
  %37 = call i32 @lcd_write_cmd(i32 8)
  %38 = call i32 @long_sleep(i32 10)
  %39 = load i32, i32* @lcd_flags, align 4
  %40 = load i32, i32* @LCD_FLAG_D, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 4, i32 0
  %45 = or i32 8, %44
  %46 = load i32, i32* @lcd_flags, align 4
  %47 = load i32, i32* @LCD_FLAG_C, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 0
  %52 = or i32 %45, %51
  %53 = load i32, i32* @lcd_flags, align 4
  %54 = load i32, i32* @LCD_FLAG_B, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = or i32 %52, %58
  %60 = call i32 @lcd_write_cmd(i32 %59)
  %61 = load i32, i32* @lcd_flags, align 4
  %62 = load i32, i32* @LCD_FLAG_L, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = call i32 @lcd_backlight(i32 %66)
  %68 = call i32 @long_sleep(i32 10)
  %69 = call i32 @lcd_write_cmd(i32 6)
  %70 = call i32 (...) @lcd_clear_display()
  ret void
}

declare dso_local i32 @long_sleep(i32) #1

declare dso_local i32 @lcd_write_cmd(i32) #1

declare dso_local i32 @lcd_backlight(i32) #1

declare dso_local i32 @lcd_clear_display(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
