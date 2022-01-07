; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.oxu_hcd = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"oxu_stop completed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @oxu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxu_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.oxu_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %4)
  store %struct.oxu_hcd* %5, %struct.oxu_hcd** %3, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = call i32 @ehci_port_power(%struct.oxu_hcd* %6, i32 0)
  %8 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %8, i32 0, i32 3
  %10 = call i32 @del_timer_sync(i32* %9)
  %11 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @HC_IS_RUNNING(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %21 = call i32 @ehci_quiesce(%struct.oxu_hcd* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %24 = call i32 @ehci_reset(%struct.oxu_hcd* %23)
  %25 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = call i32 @writel(i32 0, i32* %28)
  %30 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @writel(i32 0, i32* %36)
  %38 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %47 = call i32 @ehci_work(%struct.oxu_hcd* %46)
  br label %48

48:                                               ; preds = %45, %22
  %49 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %50 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %53 = call i32 @ehci_mem_cleanup(%struct.oxu_hcd* %52)
  %54 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %55 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %56 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @readl(i32* %58)
  %60 = call i32 @dbg_status(%struct.oxu_hcd* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %59)
  ret void
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_port_power(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @ehci_quiesce(%struct.oxu_hcd*) #1

declare dso_local i32 @ehci_reset(%struct.oxu_hcd*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ehci_work(%struct.oxu_hcd*) #1

declare dso_local i32 @ehci_mem_cleanup(%struct.oxu_hcd*) #1

declare dso_local i32 @dbg_status(%struct.oxu_hcd*, i8*, i32) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
