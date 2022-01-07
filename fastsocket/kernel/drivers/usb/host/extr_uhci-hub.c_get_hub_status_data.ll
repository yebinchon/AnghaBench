; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_get_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hub.c_get_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32, i64 }

@RWC_BITS = common dso_local global i32 0, align 4
@ignore_oc = common dso_local global i64 0, align 8
@USBPORTSC_OCC = common dso_local global i32 0, align 4
@USBPORTSC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*, i8*)* @get_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hub_status_data(%struct.uhci_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @RWC_BITS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* @ignore_oc, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @USBPORTSC_OCC, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i8*, i8** %4, align 8
  store i8 0, i8* %16, align 1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %53, %15
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %25 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USBPORTSC1, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @inw(i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37, %23
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  %46 = shl i32 1, %45
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = or i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  br label %52

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %17

56:                                               ; preds = %17
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  ret i32 %62
}

declare dso_local i32 @inw(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
