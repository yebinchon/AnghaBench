; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hcd.c_resume_detect_interrupts_are_broken.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hcd.c_resume_detect_interrupts_are_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ignore_oc = common dso_local global i64 0, align 8
@USBPORTSC1 = common dso_local global i64 0, align 8
@USBPORTSC_OC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*)* @resume_detect_interrupts_are_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_detect_interrupts_are_broken(%struct.uhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  %5 = load i64, i64* @ignore_oc, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %45

8:                                                ; preds = %1
  %9 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %10 = call i32 @uhci_dev(%struct.uhci_hcd* %9)
  %11 = call %struct.TYPE_2__* @to_pci_dev(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %14 [
    i32 129, label %15
    i32 128, label %16
  ]

14:                                               ; preds = %8
  br label %44

15:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %45

16:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %25 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USBPORTSC1, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @inw(i32 %33)
  %35 = load i32, i32* @USBPORTSC_OC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %45

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %17

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %14
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38, %15, %7
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_2__* @to_pci_dev(i32) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
