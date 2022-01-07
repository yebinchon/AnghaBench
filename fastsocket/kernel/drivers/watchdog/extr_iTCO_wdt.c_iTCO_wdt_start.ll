; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@iTCO_wdt_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@heartbeat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"failed to reset NO_REBOOT flag, reboot disabled by hardware/BIOS\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TCO_RLD = common dso_local global i32 0, align 4
@TCO1_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iTCO_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iTCO_wdt_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 2), align 4
  %5 = load i32, i32* @heartbeat, align 4
  %6 = call i32 @iTCO_vendor_pre_start(i32 %4, i32 %5)
  %7 = call i64 (...) @iTCO_wdt_unset_NO_REBOOT_bit()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %43

14:                                               ; preds = %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @TCO_RLD, align 4
  %19 = call i32 @outw(i32 1, i32 %18)
  br label %27

20:                                               ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @TCO_RLD, align 4
  %25 = call i32 @outb(i32 1, i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* @TCO1_CNT, align 4
  %29 = call i32 @inw(i32 %28)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 63487
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @TCO1_CNT, align 4
  %34 = call i32 @outw(i32 %32, i32 %33)
  %35 = load i32, i32* @TCO1_CNT, align 4
  %36 = call i32 @inw(i32 %35)
  store i32 %36, i32* %2, align 4
  %37 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, 2048
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 -1, i32* %1, align 4
  br label %43

42:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %41, %9
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iTCO_vendor_pre_start(i32, i32) #1

declare dso_local i64 @iTCO_wdt_unset_NO_REBOOT_bit(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
