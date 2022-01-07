; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_init_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bfin-t350mcqb-fb.c_bfin_t350mcqb_init_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER0_id = common dso_local global i32 0, align 4
@H_PERIOD = common dso_local global i32 0, align 4
@H_PULSE = common dso_local global i32 0, align 4
@TIMER_MODE_PWM = common dso_local global i32 0, align 4
@TIMER_PERIOD_CNT = common dso_local global i32 0, align 4
@TIMER_TIN_SEL = common dso_local global i32 0, align 4
@TIMER_CLK_SEL = common dso_local global i32 0, align 4
@TIMER_EMU_RUN = common dso_local global i32 0, align 4
@TIMER1_id = common dso_local global i32 0, align 4
@V_PERIOD = common dso_local global i32 0, align 4
@V_PULSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bfin_t350mcqb_init_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_t350mcqb_init_timers() #0 {
  %1 = call i32 (...) @bfin_t350mcqb_stop_timers()
  %2 = load i32, i32* @TIMER0_id, align 4
  %3 = load i32, i32* @H_PERIOD, align 4
  %4 = call i32 @set_gptimer_period(i32 %2, i32 %3)
  %5 = load i32, i32* @TIMER0_id, align 4
  %6 = load i32, i32* @H_PULSE, align 4
  %7 = call i32 @set_gptimer_pwidth(i32 %5, i32 %6)
  %8 = load i32, i32* @TIMER0_id, align 4
  %9 = load i32, i32* @TIMER_MODE_PWM, align 4
  %10 = load i32, i32* @TIMER_PERIOD_CNT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TIMER_TIN_SEL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @TIMER_CLK_SEL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @TIMER_EMU_RUN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @set_gptimer_config(i32 %8, i32 %17)
  %19 = load i32, i32* @TIMER1_id, align 4
  %20 = load i32, i32* @V_PERIOD, align 4
  %21 = call i32 @set_gptimer_period(i32 %19, i32 %20)
  %22 = load i32, i32* @TIMER1_id, align 4
  %23 = load i32, i32* @V_PULSE, align 4
  %24 = call i32 @set_gptimer_pwidth(i32 %22, i32 %23)
  %25 = load i32, i32* @TIMER1_id, align 4
  %26 = load i32, i32* @TIMER_MODE_PWM, align 4
  %27 = load i32, i32* @TIMER_PERIOD_CNT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TIMER_TIN_SEL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @TIMER_CLK_SEL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TIMER_EMU_RUN, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @set_gptimer_config(i32 %25, i32 %34)
  ret void
}

declare dso_local i32 @bfin_t350mcqb_stop_timers(...) #1

declare dso_local i32 @set_gptimer_period(i32, i32) #1

declare dso_local i32 @set_gptimer_pwidth(i32, i32) #1

declare dso_local i32 @set_gptimer_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
