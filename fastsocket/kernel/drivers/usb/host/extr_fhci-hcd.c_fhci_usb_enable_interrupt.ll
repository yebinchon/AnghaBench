; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_usb_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_usb_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_usb = type { i32, i32, %struct.fhci_hcd* }
%struct.fhci_hcd = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"unbalanced USB interrupts nesting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_usb_enable_interrupt(%struct.fhci_usb* %0) #0 {
  %2 = alloca %struct.fhci_usb*, align 8
  %3 = alloca %struct.fhci_hcd*, align 8
  store %struct.fhci_usb* %0, %struct.fhci_usb** %2, align 8
  %4 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %5 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %4, i32 0, i32 2
  %6 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  store %struct.fhci_hcd* %6, %struct.fhci_hcd** %3, align 8
  %7 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %8 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %13 = call %struct.TYPE_6__* @fhci_to_hcd(%struct.fhci_hcd* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @enable_irq(i32 %15)
  %17 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %18 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %17, i32 0, i32 2
  %19 = load %struct.fhci_hcd*, %struct.fhci_hcd** %18, align 8
  %20 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call i32 @out_be16(i32* %22, i32 65535)
  %24 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %25 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %24, i32 0, i32 2
  %26 = load %struct.fhci_hcd*, %struct.fhci_hcd** %25, align 8
  %27 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %31 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @out_be16(i32* %29, i32 %32)
  %34 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %35 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @enable_irq(i32 %38)
  br label %49

40:                                               ; preds = %1
  %41 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %42 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %47 = call i32 @fhci_info(%struct.fhci_hcd* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %11
  %50 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %51 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  ret void
}

declare dso_local i32 @enable_irq(i32) #1

declare dso_local %struct.TYPE_6__* @fhci_to_hcd(%struct.fhci_hcd*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @fhci_info(%struct.fhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
