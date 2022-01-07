; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpcore_wdt.c_mpcore_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpcore_wdt.c_mpcore_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpcore_wdt = type { i64, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"enabling watchdog.\0A\00", align 1
@wdt_lock = common dso_local global i32 0, align 4
@mpcore_noboot = common dso_local global i64 0, align 8
@TWD_WDOG_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpcore_wdt*)* @mpcore_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpcore_wdt_start(%struct.mpcore_wdt* %0) #0 {
  %2 = alloca %struct.mpcore_wdt*, align 8
  store %struct.mpcore_wdt* %0, %struct.mpcore_wdt** %2, align 8
  %3 = load i32, i32* @KERN_INFO, align 4
  %4 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %2, align 8
  %5 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dev_printk(i32 %3, i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @spin_lock(i32* @wdt_lock)
  %9 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %2, align 8
  %10 = call i32 @mpcore_wdt_keepalive(%struct.mpcore_wdt* %9)
  %11 = load i64, i64* @mpcore_noboot, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %2, align 8
  %15 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TWD_WDOG_CONTROL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 65281, i64 %18)
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %2, align 8
  %22 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TWD_WDOG_CONTROL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 65289, i64 %25)
  br label %27

27:                                               ; preds = %20, %13
  %28 = call i32 @spin_unlock(i32* @wdt_lock)
  ret void
}

declare dso_local i32 @dev_printk(i32, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mpcore_wdt_keepalive(%struct.mpcore_wdt*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
