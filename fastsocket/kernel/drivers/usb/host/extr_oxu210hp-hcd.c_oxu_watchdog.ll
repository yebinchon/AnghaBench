; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@STS_IAA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"lost IAA\0A\00", align 1
@TIMER_ASYNC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @oxu_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxu_watchdog(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.oxu_hcd*
  store %struct.oxu_hcd* %7, %struct.oxu_hcd** %3, align 8
  %8 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @readl(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @STS_IAA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %16
  %27 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %28 = call i32 @oxu_vdbg(%struct.oxu_hcd* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @STS_IAA, align 4
  %30 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @writel(i32 %29, i32* %33)
  %35 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %26, %16
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* @TIMER_ASYNC_OFF, align 4
  %40 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %40, i32 0, i32 3
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %46 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @start_unlink_async(%struct.oxu_hcd* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %52 = call i32 @ehci_work(%struct.oxu_hcd* %51)
  %53 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %53, i32 0, i32 1
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @oxu_vdbg(%struct.oxu_hcd*, i8*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @start_unlink_async(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @ehci_work(%struct.oxu_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
