; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_check_intr_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_check_intr_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32 }
%struct.ehci_qh = type { i64, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*, i32, i32, %struct.ehci_qh*, i64*)* @check_intr_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_intr_schedule(%struct.oxu_hcd* %0, i32 %1, i32 %2, %struct.ehci_qh* %3, i64* %4) #0 {
  %6 = alloca %struct.oxu_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehci_qh*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ehci_qh* %3, %struct.ehci_qh** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load i32, i32* @ENOSPC, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %15 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp uge i32 %19, 6
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %43

22:                                               ; preds = %18, %5
  %23 = load %struct.oxu_hcd*, %struct.oxu_hcd** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %27 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %30 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @check_period(%struct.oxu_hcd* %23, i32 %24, i32 %25, i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.ehci_qh*, %struct.ehci_qh** %9, align 8
  %37 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  %41 = load i64*, i64** %10, align 8
  store i64 0, i64* %41, align 8
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %40, %34, %21
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

declare dso_local i32 @check_period(%struct.oxu_hcd*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
