; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_main.c_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_main.c_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR9170_TIMER_REG_CONTROL = common dso_local global i32 0, align 4
@AR9170_TIMER_REG_TIMER0 = common dso_local global i64 0, align 8
@AR9170_TIMER_REG_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @AR9170_TIMER_REG_CONTROL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @BIT(i32 %6)
  %8 = call i32 @orl(i32 %5, i32 %7)
  %9 = load i64, i64* @AR9170_TIMER_REG_TIMER0, align 8
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = load i32, i32* %4, align 4
  %15 = sub i32 %14, 1
  %16 = call i32 @set(i64 %13, i32 %15)
  %17 = load i32, i32* @AR9170_TIMER_REG_INTERRUPT, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = call i32 @orl(i32 %17, i32 %19)
  ret void
}

declare dso_local i32 @orl(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @set(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
