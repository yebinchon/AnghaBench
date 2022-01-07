; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_giveback_urb_in_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_giveback_urb_in_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32 }
%struct.xhci_td = type { %struct.urb* }
%struct.urb = type { i32, %struct.TYPE_4__*, %struct.urb_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.urb_priv = type { i64, i64 }
%struct.usb_hcd = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@PIPE_ISOCHRONOUS = common dso_local global i64 0, align 8
@XHCI_AMD_PLL_FIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_td*, i32, i8*)* @xhci_giveback_urb_in_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_giveback_urb_in_irq(%struct.xhci_hcd* %0, %struct.xhci_td* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_td*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.usb_hcd*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca %struct.urb_priv*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %13 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %12, i32 0, i32 0
  %14 = load %struct.urb*, %struct.urb** %13, align 8
  store %struct.urb* %14, %struct.urb** %10, align 8
  %15 = load %struct.urb*, %struct.urb** %10, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 2
  %17 = load %struct.urb_priv*, %struct.urb_priv** %16, align 8
  store %struct.urb_priv* %17, %struct.urb_priv** %11, align 8
  %18 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %19 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.urb*, %struct.urb** %10, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.usb_hcd* @bus_to_hcd(i32 %26)
  store %struct.usb_hcd* %27, %struct.usb_hcd** %9, align 8
  %28 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %29 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %32 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %4
  %36 = load %struct.urb*, %struct.urb** %10, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @usb_pipetype(i32 %38)
  %40 = load i64, i64* @PIPE_ISOCHRONOUS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %35
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %44 = call %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %50 = call %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %42
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %57 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @XHCI_AMD_PLL_FIX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 (...) @usb_amd_quirk_pll_enable()
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %35
  %67 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %68 = load %struct.urb*, %struct.urb** %10, align 8
  %69 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %67, %struct.urb* %68)
  %70 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %71 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %74 = load %struct.urb*, %struct.urb** %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %73, %struct.urb* %74, i32 %75)
  %77 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %78 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %79 = call i32 @xhci_urb_free_priv(%struct.xhci_hcd* %77, %struct.urb_priv* %78)
  %80 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %81 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %80, i32 0, i32 1
  %82 = call i32 @spin_lock(i32* %81)
  br label %83

83:                                               ; preds = %66, %4
  ret void
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @usb_amd_quirk_pll_enable(...) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @xhci_urb_free_priv(%struct.xhci_hcd*, %struct.urb_priv*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
