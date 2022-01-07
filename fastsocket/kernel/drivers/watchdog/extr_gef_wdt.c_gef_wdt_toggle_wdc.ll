; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_gef_wdt.c_gef_wdt_toggle_wdc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_gef_wdt.c_gef_wdt_toggle_wdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gef_wdt_spinlock = common dso_local global i32 0, align 4
@gef_wdt_regs = common dso_local global i32 0, align 4
@GEF_WDC_ENABLED_SHIFT = common dso_local global i32 0, align 4
@gef_wdt_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gef_wdt_toggle_wdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gef_wdt_toggle_wdc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = call i32 @spin_lock(i32* @gef_wdt_spinlock)
  %9 = load i32, i32* @gef_wdt_regs, align 4
  %10 = call i32 @ioread32be(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GEF_WDC_ENABLED_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = and i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = xor i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* @gef_wdt_count, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @gef_wdt_regs, align 4
  %26 = call i32 @iowrite32be(i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 2, %27
  %29 = load i32, i32* @gef_wdt_count, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @gef_wdt_regs, align 4
  %33 = call i32 @iowrite32be(i32 %31, i32 %32)
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %19, %2
  %35 = call i32 @spin_unlock(i32* @gef_wdt_spinlock)
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
