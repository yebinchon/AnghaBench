; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_compliance_mode_recovery_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_compliance_mode_recovery_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@compliance_mode_recovery = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@COMP_MODE_RCVRY_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Compliance mode recovery timer initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*)* @compliance_mode_recovery_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compliance_mode_recovery_timer_init(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %3 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %5, i32 0, i32 0
  %7 = call i32 @init_timer(%struct.TYPE_3__* %6)
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %9 = ptrtoint %struct.xhci_hcd* %8 to i64
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load i32, i32* @compliance_mode_recovery, align 4
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i32, i32* @COMP_MODE_RCVRY_MSECS, align 4
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 %20, i64* %23, align 8
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %24, i32 0, i32 0
  %26 = call i32 @add_timer(%struct.TYPE_3__* %25)
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %28 = call i32 @xhci_dbg(%struct.xhci_hcd* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
