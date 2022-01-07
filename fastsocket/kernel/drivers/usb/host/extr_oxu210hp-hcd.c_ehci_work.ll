; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i32, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@TIMER_IO_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*)* @ehci_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_work(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  %3 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %4 = load i32, i32* @TIMER_IO_WATCHDOG, align 4
  %5 = call i32 @timer_action_done(%struct.oxu_hcd* %3, i32 %4)
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %12 = call i32 @end_unlink_async(%struct.oxu_hcd* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %57

19:                                               ; preds = %13
  %20 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %23 = call i32 @scan_async(%struct.oxu_hcd* %22)
  %24 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %30 = call i32 @scan_periodic(%struct.oxu_hcd* %29)
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %33 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %35 = call %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @HC_IS_RUNNING(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %42 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %50 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48, %40
  %54 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %55 = load i32, i32* @TIMER_IO_WATCHDOG, align 4
  %56 = call i32 @timer_action(%struct.oxu_hcd* %54, i32 %55)
  br label %57

57:                                               ; preds = %18, %53, %48, %31
  ret void
}

declare dso_local i32 @timer_action_done(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @end_unlink_async(%struct.oxu_hcd*) #1

declare dso_local i32 @scan_async(%struct.oxu_hcd*) #1

declare dso_local i32 @scan_periodic(%struct.oxu_hcd*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local %struct.TYPE_6__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @timer_action(%struct.oxu_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
