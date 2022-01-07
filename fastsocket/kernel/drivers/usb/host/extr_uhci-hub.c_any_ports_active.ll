; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_any_ports_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_any_ports_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32, i64 }

@USBPORTSC1 = common dso_local global i64 0, align 8
@USBPORTSC_CCS = common dso_local global i32 0, align 4
@RWC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*)* @any_ports_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @any_ports_active(%struct.uhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %5
  %12 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USBPORTSC1, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @inw(i64 %20)
  %22 = load i32, i32* @USBPORTSC_CCS, align 4
  %23 = load i32, i32* @RWC_BITS, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %29, i32 0, i32 1
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %11
  store i32 1, i32* %2, align 4
  br label %39

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @inw(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
