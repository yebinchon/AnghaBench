; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_urb_free_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_urb_free_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.urb_priv = type { %struct.urb_priv** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_urb_free_priv(%struct.xhci_hcd* %0, %struct.urb_priv* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.urb_priv*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.urb_priv* %1, %struct.urb_priv** %4, align 8
  %5 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %6 = icmp ne %struct.urb_priv* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %9 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %8, i32 0, i32 0
  %10 = load %struct.urb_priv**, %struct.urb_priv*** %9, align 8
  %11 = getelementptr inbounds %struct.urb_priv*, %struct.urb_priv** %10, i64 0
  %12 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %13 = call i32 @kfree(%struct.urb_priv* %12)
  %14 = load %struct.urb_priv*, %struct.urb_priv** %4, align 8
  %15 = call i32 @kfree(%struct.urb_priv* %14)
  br label %16

16:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @kfree(%struct.urb_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
