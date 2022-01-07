; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_lcd_clear_fast_s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_lcd_clear_fast_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lcd_addr_y = common dso_local global i64 0, align 8
@lcd_addr_x = common dso_local global i64 0, align 8
@pprt_lock = common dso_local global i32 0, align 4
@lcd_height = common dso_local global i32 0, align 4
@lcd_hwidth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lcd_clear_fast_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_clear_fast_s() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @lcd_addr_y, align 8
  store i64 0, i64* @lcd_addr_x, align 8
  %2 = call i32 (...) @lcd_gotoxy()
  %3 = call i32 @spin_lock(i32* @pprt_lock)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @lcd_height, align 4
  %7 = load i32, i32* @lcd_hwidth, align 4
  %8 = mul nsw i32 %6, %7
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = call i32 @lcd_send_serial(i8 signext 95)
  %12 = call i32 @lcd_send_serial(i8 signext 0)
  %13 = call i32 @lcd_send_serial(i8 signext 2)
  %14 = call i32 @udelay(i32 40)
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %4

18:                                               ; preds = %4
  %19 = call i32 @spin_unlock(i32* @pprt_lock)
  store i64 0, i64* @lcd_addr_y, align 8
  store i64 0, i64* @lcd_addr_x, align 8
  %20 = call i32 (...) @lcd_gotoxy()
  ret void
}

declare dso_local i32 @lcd_gotoxy(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @lcd_send_serial(i8 signext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
