; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_pc87413_wdt.c_pc87413_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_pc87413_wdt.c_pc87413_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pc87413_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc87413_disable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @spin_lock(i32* @io_lock)
  %3 = call i32 (...) @pc87413_select_wdt_out()
  %4 = call i32 (...) @pc87413_enable_swc()
  %5 = call i32 (...) @pc87413_get_swc_base()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @pc87413_swc_bank3(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @pc87413_disable_sw_wd_tren(i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @pc87413_disable_sw_wd_trg(i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @pc87413_programm_wdto(i32 %12, i32 0)
  %14 = call i32 @spin_unlock(i32* @io_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pc87413_select_wdt_out(...) #1

declare dso_local i32 @pc87413_enable_swc(...) #1

declare dso_local i32 @pc87413_get_swc_base(...) #1

declare dso_local i32 @pc87413_swc_bank3(i32) #1

declare dso_local i32 @pc87413_disable_sw_wd_tren(i32) #1

declare dso_local i32 @pc87413_disable_sw_wd_trg(i32) #1

declare dso_local i32 @pc87413_programm_wdto(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
