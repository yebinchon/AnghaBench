; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_w83697hf_wdt.c_wdt_running.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_w83697hf_wdt.c_wdt_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @wdt_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @wdt_running() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @spin_lock(i32* @io_lock)
  %3 = call i32 (...) @w83697hf_select_wdt()
  %4 = call zeroext i8 @w83697hf_get_reg(i32 244)
  store i8 %4, i8* %1, align 1
  %5 = call i32 (...) @w83697hf_deselect_wdt()
  %6 = call i32 @spin_unlock(i32* @io_lock)
  %7 = load i8, i8* %1, align 1
  ret i8 %7
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @w83697hf_select_wdt(...) #1

declare dso_local zeroext i8 @w83697hf_get_reg(i32) #1

declare dso_local i32 @w83697hf_deselect_wdt(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
