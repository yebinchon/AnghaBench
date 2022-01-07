; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@TIMER_IO_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @ehci_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_work(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %3 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %4 = load i32, i32* @TIMER_IO_WATCHDOG, align 4
  %5 = call i32 @timer_action_done(%struct.ehci_hcd* %3, i32 %4)
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %15 = call i32 @scan_async(%struct.ehci_hcd* %14)
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %22 = call i32 @scan_periodic(%struct.ehci_hcd* %21)
  br label %23

23:                                               ; preds = %20, %11
  %24 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %27 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @HC_IS_RUNNING(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %23
  %33 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %32
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %47 = load i32, i32* @TIMER_IO_WATCHDOG, align 4
  %48 = call i32 @timer_action(%struct.ehci_hcd* %46, i32 %47)
  br label %49

49:                                               ; preds = %10, %45, %40, %23
  ret void
}

declare dso_local i32 @timer_action_done(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @scan_async(%struct.ehci_hcd*) #1

declare dso_local i32 @scan_periodic(%struct.ehci_hcd*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @timer_action(%struct.ehci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
