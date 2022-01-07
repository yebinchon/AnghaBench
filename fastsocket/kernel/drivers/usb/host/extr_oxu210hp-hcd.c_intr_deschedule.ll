; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_intr_deschedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_intr_deschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32 }
%struct.ehci_qh = type { i32, i32, i32, i32 }

@QH_CMASK = common dso_local global i32 0, align 4
@QH_STATE_IDLE = common dso_local global i32 0, align 4
@EHCI_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.ehci_qh*)* @intr_deschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_deschedule(%struct.oxu_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %8 = call i32 @qh_unlink_periodic(%struct.oxu_hcd* %6, %struct.ehci_qh* %7)
  %9 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %10 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %9, i32 0, i32 3
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @QH_CMASK, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %17 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %2
  store i32 2, i32* %5, align 4
  br label %23

22:                                               ; preds = %13
  store i32 55, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @udelay(i32 %24)
  %26 = load i32, i32* @QH_STATE_IDLE, align 4
  %27 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %28 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @EHCI_LIST_END, align 4
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @qh_unlink_periodic(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
