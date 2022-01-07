; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_panel_scan_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_panel_scan_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keypad_enabled = common dso_local global i64 0, align 8
@keypad_initialized = common dso_local global i64 0, align 8
@pprt_lock = common dso_local global i32 0, align 4
@inputs_stable = common dso_local global i32 0, align 4
@phys_curr = common dso_local global i64 0, align 8
@phys_prev = common dso_local global i64 0, align 8
@lcd_enabled = common dso_local global i64 0, align 8
@lcd_initialized = common dso_local global i64 0, align 8
@keypressed = common dso_local global i64 0, align 8
@light_tempo = common dso_local global i64 0, align 8
@lcd_flags = common dso_local global i32 0, align 4
@LCD_FLAG_L = common dso_local global i32 0, align 4
@FLASH_LIGHT_TEMPO = common dso_local global i64 0, align 8
@scan_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@INPUT_POLL_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @panel_scan_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panel_scan_timer() #0 {
  %1 = load i64, i64* @keypad_enabled, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %22

3:                                                ; preds = %0
  %4 = load i64, i64* @keypad_initialized, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = call i64 @spin_trylock(i32* @pprt_lock)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i32 (...) @phys_scan_contacts()
  %11 = call i32 @spin_unlock(i32* @pprt_lock)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @inputs_stable, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i64, i64* @phys_curr, align 8
  %17 = load i64, i64* @phys_prev, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %12
  %20 = call i32 (...) @panel_process_inputs()
  br label %21

21:                                               ; preds = %19, %15
  br label %22

22:                                               ; preds = %21, %3, %0
  %23 = load i64, i64* @lcd_enabled, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load i64, i64* @lcd_initialized, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load i64, i64* @keypressed, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i64, i64* @light_tempo, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @lcd_flags, align 4
  %36 = load i32, i32* @LCD_FLAG_L, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @lcd_backlight(i32 1)
  br label %41

41:                                               ; preds = %39, %34, %31
  %42 = load i64, i64* @FLASH_LIGHT_TEMPO, align 8
  store i64 %42, i64* @light_tempo, align 8
  br label %60

43:                                               ; preds = %28
  %44 = load i64, i64* @light_tempo, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i64, i64* @light_tempo, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* @light_tempo, align 8
  %49 = load i64, i64* @light_tempo, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @lcd_flags, align 4
  %53 = load i32, i32* @LCD_FLAG_L, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @lcd_backlight(i32 0)
  br label %58

58:                                               ; preds = %56, %51, %46
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %25, %22
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* @INPUT_POLL_TIME, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @mod_timer(i32* @scan_timer, i64 %64)
  ret void
}

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @phys_scan_contacts(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @panel_process_inputs(...) #1

declare dso_local i32 @lcd_backlight(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
