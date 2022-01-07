; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_w83697ug_wdt.c_wdt_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_w83697ug_wdt.c_wdt_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_lock = common dso_local global i32 0, align 4
@WDT_EFER = common dso_local global i32 0, align 4
@WDT_EFDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wdt_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_ctrl(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @spin_lock(i32* @io_lock)
  %4 = call i64 (...) @w83697ug_select_wd_register()
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @spin_unlock(i32* @io_lock)
  br label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @WDT_EFER, align 4
  %10 = call i32 @outb_p(i32 244, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @WDT_EFDR, align 4
  %13 = call i32 @outb_p(i32 %11, i32 %12)
  %14 = call i32 (...) @w83697ug_unselect_wd_register()
  %15 = call i32 @spin_unlock(i32* @io_lock)
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @w83697ug_select_wd_register(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @w83697ug_unselect_wd_register(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
