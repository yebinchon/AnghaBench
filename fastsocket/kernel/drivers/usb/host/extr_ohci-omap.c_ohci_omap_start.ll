; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-omap.c_ohci_omap_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-omap.c_ohci_omap_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.omap_usb_config* }
%struct.omap_usb_config = type { i64, i64 }
%struct.ohci_hcd = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@host_enabled = common dso_local global i32 0, align 4
@OHCI_CTRL_RWC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"can't start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_omap_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_omap_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.omap_usb_config*, align 8
  %5 = alloca %struct.ohci_hcd*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %7)
  store %struct.ohci_hcd* %8, %struct.ohci_hcd** %5, align 8
  %9 = load i32, i32* @host_enabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.omap_usb_config*, %struct.omap_usb_config** %17, align 8
  store %struct.omap_usb_config* %18, %struct.omap_usb_config** %4, align 8
  %19 = load %struct.omap_usb_config*, %struct.omap_usb_config** %4, align 8
  %20 = getelementptr inbounds %struct.omap_usb_config, %struct.omap_usb_config* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %12
  %24 = load %struct.omap_usb_config*, %struct.omap_usb_config** %4, align 8
  %25 = getelementptr inbounds %struct.omap_usb_config, %struct.omap_usb_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23, %12
  %29 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %30 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %31 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %33 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %34 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @writel(i32 %32, i32* %36)
  br label %38

38:                                               ; preds = %28, %23
  %39 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %40 = call i32 @ohci_run(%struct.ohci_hcd* %39)
  store i32 %40, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @dev_err(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %49 = call i32 @ohci_stop(%struct.usb_hcd* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %42, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @ohci_run(%struct.ohci_hcd*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @ohci_stop(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
