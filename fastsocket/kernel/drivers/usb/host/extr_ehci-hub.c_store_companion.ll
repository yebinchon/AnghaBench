; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hub.c_store_companion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hub.c_store_companion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ehci_hcd = type { i32, i32 }

@PORT_OWNER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_companion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_companion(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ehci_hcd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @dev_get_drvdata(%struct.device* %13)
  %15 = call i32 @bus_to_hcd(i32 %14)
  %16 = call %struct.ehci_hcd* @hcd_to_ehci(i32 %15)
  store %struct.ehci_hcd* %16, %struct.ehci_hcd** %10, align 8
  %17 = load i32, i32* @PORT_OWNER, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %64

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %36 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HCS_N_PORTS(i32 %37)
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %30
  %41 = load i64, i64* @ENOENT, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %64

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %51 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  br label %58

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.ehci_hcd*, %struct.ehci_hcd** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @set_owner(%struct.ehci_hcd* %59, i32 %60, i32 %61)
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %58, %40, %21
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(i32) #1

declare dso_local i32 @bus_to_hcd(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_owner(%struct.ehci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
