; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-ssb.c_ssb_ohci_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-ssb.c_ssb_ohci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ssb_ohci_device = type { %struct.ohci_hcd }
%struct.ohci_hcd = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"can't start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ssb_ohci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_ohci_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ssb_ohci_device*, align 8
  %4 = alloca %struct.ohci_hcd*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %7 = call %struct.ssb_ohci_device* @hcd_to_ssb_ohci(%struct.usb_hcd* %6)
  store %struct.ssb_ohci_device* %7, %struct.ssb_ohci_device** %3, align 8
  %8 = load %struct.ssb_ohci_device*, %struct.ssb_ohci_device** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_ohci_device, %struct.ssb_ohci_device* %8, i32 0, i32 0
  store %struct.ohci_hcd* %9, %struct.ohci_hcd** %4, align 8
  %10 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %11 = call i32 @ohci_run(%struct.ohci_hcd* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %16 = call i32 @ohci_err(%struct.ohci_hcd* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %18 = call i32 @ohci_stop(%struct.usb_hcd* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local %struct.ssb_ohci_device* @hcd_to_ssb_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_run(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_err(%struct.ohci_hcd*, i8*) #1

declare dso_local i32 @ohci_stop(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
