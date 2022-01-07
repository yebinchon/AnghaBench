; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { %struct.urb_priv*, %struct.TYPE_3__* }
%struct.urb_priv = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fhci_hcd = type { i32, %struct.fhci_usb* }
%struct.fhci_usb = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FHCI_PORT_DISABLED = common dso_local global i64 0, align 8
@URB_DEL = common dso_local global i64 0, align 8
@FHCI_ED_URB_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @fhci_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fhci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fhci_hcd*, align 8
  %8 = alloca %struct.fhci_usb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.urb_priv*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %13 = call %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd* %12)
  store %struct.fhci_hcd* %13, %struct.fhci_hcd** %7, align 8
  %14 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %15 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %14, i32 0, i32 1
  %16 = load %struct.fhci_usb*, %struct.fhci_usb** %15, align 8
  store %struct.fhci_usb* %16, %struct.fhci_usb** %8, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.urb*, %struct.urb** %5, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %21, %3
  br label %84

34:                                               ; preds = %26
  %35 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %36 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %35, i32 0, i32 0
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %39, %struct.urb* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %79

46:                                               ; preds = %34
  %47 = load %struct.fhci_usb*, %struct.fhci_usb** %8, align 8
  %48 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FHCI_PORT_DISABLED, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  %55 = load %struct.urb_priv*, %struct.urb_priv** %54, align 8
  store %struct.urb_priv* %55, %struct.urb_priv** %11, align 8
  %56 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %57 = icmp ne %struct.urb_priv* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %60 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @URB_DEL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %52
  br label %79

65:                                               ; preds = %58
  %66 = load i64, i64* @URB_DEL, align 8
  %67 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %68 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @FHCI_ED_URB_DEL, align 4
  %70 = load %struct.urb_priv*, %struct.urb_priv** %11, align 8
  %71 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  br label %78

74:                                               ; preds = %46
  %75 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %76 = load %struct.urb*, %struct.urb** %5, align 8
  %77 = call i32 @fhci_urb_complete_free(%struct.fhci_hcd* %75, %struct.urb* %76)
  br label %78

78:                                               ; preds = %74, %65
  br label %79

79:                                               ; preds = %78, %64, %45
  %80 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %81 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %80, i32 0, i32 0
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %33
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @fhci_urb_complete_free(%struct.fhci_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
