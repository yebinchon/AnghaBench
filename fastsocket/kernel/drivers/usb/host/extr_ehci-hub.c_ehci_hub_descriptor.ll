; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hub.c_ehci_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hub.c_ehci_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.usb_hub_descriptor*)* @ehci_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_hub_descriptor(%struct.ehci_hcd* %0, %struct.usb_hub_descriptor* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.usb_hub_descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.usb_hub_descriptor* %1, %struct.usb_hub_descriptor** %4, align 8
  %7 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @HCS_N_PORTS(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %12 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %11, i32 0, i32 0
  store i32 41, i32* %12, align 8
  %13 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %14 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %13, i32 0, i32 1
  store i32 10, i32* %14, align 4
  %15 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %16 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 8
  %22 = add nsw i32 1, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 7, %24
  %26 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %27 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %29 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @memset(i32* %33, i32 0, i32 %34)
  %36 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %37 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @memset(i32* %43, i32 255, i32 %44)
  store i32 8, i32* %6, align 4
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @HCS_PPC(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, 2
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %61 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  ret void
}

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @HCS_PPC(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
