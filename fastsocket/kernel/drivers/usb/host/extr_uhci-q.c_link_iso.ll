; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_link_iso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_link_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uhci_qh = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, %struct.uhci_qh*)* @link_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_iso(%struct.uhci_hcd* %0, %struct.uhci_qh* %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca %struct.uhci_qh*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store %struct.uhci_qh* %1, %struct.uhci_qh** %4, align 8
  %5 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %6 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %5, i32 0, i32 0
  %7 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @list_add_tail(i32* %6, i32* %10)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
