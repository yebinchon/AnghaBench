; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-q.c_fhci_urb_complete_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-q.c_fhci_urb_complete_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_hcd = type { i32 }
%struct.urb = type { i64, i64, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_urb_complete_free(%struct.fhci_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.fhci_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %5 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %6 = load %struct.urb*, %struct.urb** %4, align 8
  %7 = call i32 @free_urb_priv(%struct.fhci_hcd* %5, %struct.urb* %6)
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EINPROGRESS, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.urb*, %struct.urb** %4, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @EREMOTEIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %22, %14
  %35 = load %struct.urb*, %struct.urb** %4, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %40 = call i32 @fhci_to_hcd(%struct.fhci_hcd* %39)
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = call i32 @usb_hcd_unlink_urb_from_ep(i32 %40, %struct.urb* %41)
  %43 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %47 = call i32 @fhci_to_hcd(%struct.fhci_hcd* %46)
  %48 = load %struct.urb*, %struct.urb** %4, align 8
  %49 = load %struct.urb*, %struct.urb** %4, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_hcd_giveback_urb(i32 %47, %struct.urb* %48, i32 %51)
  %53 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  ret void
}

declare dso_local i32 @free_urb_priv(%struct.fhci_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32, %struct.urb*) #1

declare dso_local i32 @fhci_to_hcd(%struct.fhci_hcd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
