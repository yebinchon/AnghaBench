; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_stop_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_stop_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER0bit = common dso_local global i32 0, align 4
@TIMER1bit = common dso_local global i32 0, align 4
@TIMER_STATUS_TRUN0 = common dso_local global i32 0, align 4
@TIMER_STATUS_TRUN1 = common dso_local global i32 0, align 4
@TIMER_STATUS_TIMIL0 = common dso_local global i32 0, align 4
@TIMER_STATUS_TIMIL1 = common dso_local global i32 0, align 4
@TIMER_STATUS_TOVF0 = common dso_local global i32 0, align 4
@TIMER_STATUS_TOVF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bfin_t350mcqb_stop_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_t350mcqb_stop_timers() #0 {
  %1 = load i32, i32* @TIMER0bit, align 4
  %2 = load i32, i32* @TIMER1bit, align 4
  %3 = or i32 %1, %2
  %4 = call i32 @disable_gptimers(i32 %3)
  %5 = load i32, i32* @TIMER_STATUS_TRUN0, align 4
  %6 = load i32, i32* @TIMER_STATUS_TRUN1, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @TIMER_STATUS_TIMIL0, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TIMER_STATUS_TIMIL1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TIMER_STATUS_TOVF0, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @TIMER_STATUS_TOVF1, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @set_gptimer_status(i32 0, i32 %15)
  ret void
}

declare dso_local i32 @disable_gptimers(i32) #1

declare dso_local i32 @set_gptimer_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
