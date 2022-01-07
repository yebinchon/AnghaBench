; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-ac97-lib.c_pxa2xx_ac97_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-ac97-lib.c_pxa2xx_ac97_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSR = common dso_local global i64 0, align 8
@gsr_bits = common dso_local global i64 0, align 8
@gsr_wq = common dso_local global i32 0, align 4
@MISR_EOC = common dso_local global i32 0, align 4
@MISR = common dso_local global i32 0, align 4
@PISR_EOC = common dso_local global i32 0, align 4
@PISR = common dso_local global i32 0, align 4
@MCSR_EOC = common dso_local global i32 0, align 4
@MCSR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa2xx_ac97_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_ac97_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* @GSR, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* @GSR, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @gsr_bits, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* @gsr_bits, align 8
  %15 = call i32 @wake_up(i32* @gsr_wq)
  %16 = call i64 (...) @cpu_is_pxa27x()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @MISR_EOC, align 4
  store i32 %19, i32* @MISR, align 4
  %20 = load i32, i32* @PISR_EOC, align 4
  store i32 %20, i32* @PISR, align 4
  %21 = load i32, i32* @MCSR_EOC, align 4
  store i32 %21, i32* @MCSR, align 4
  br label %22

22:                                               ; preds = %18, %10
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @cpu_is_pxa27x(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
