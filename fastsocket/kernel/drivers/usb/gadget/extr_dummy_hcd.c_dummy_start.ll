; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dummy = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@dummy_timer = common dso_local global i32 0, align 4
@DUMMY_RH_RUNNING = common dso_local global i32 0, align 4
@POWER_BUDGET = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@dev_attr_urbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @dummy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.dummy*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.dummy* @hcd_to_dummy(%struct.usb_hcd* %4)
  store %struct.dummy* %5, %struct.dummy** %3, align 8
  %6 = load %struct.dummy*, %struct.dummy** %3, align 8
  %7 = getelementptr inbounds %struct.dummy, %struct.dummy* %6, i32 0, i32 3
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.dummy*, %struct.dummy** %3, align 8
  %10 = getelementptr inbounds %struct.dummy, %struct.dummy* %9, i32 0, i32 2
  %11 = call i32 @init_timer(%struct.TYPE_4__* %10)
  %12 = load i32, i32* @dummy_timer, align 4
  %13 = load %struct.dummy*, %struct.dummy** %3, align 8
  %14 = getelementptr inbounds %struct.dummy, %struct.dummy* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  %16 = load %struct.dummy*, %struct.dummy** %3, align 8
  %17 = ptrtoint %struct.dummy* %16 to i64
  %18 = load %struct.dummy*, %struct.dummy** %3, align 8
  %19 = getelementptr inbounds %struct.dummy, %struct.dummy* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load i32, i32* @DUMMY_RH_RUNNING, align 4
  %22 = load %struct.dummy*, %struct.dummy** %3, align 8
  %23 = getelementptr inbounds %struct.dummy, %struct.dummy* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dummy*, %struct.dummy** %3, align 8
  %25 = getelementptr inbounds %struct.dummy, %struct.dummy* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i32, i32* @POWER_BUDGET, align 4
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @HC_STATE_RUNNING, align 4
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.dummy*, %struct.dummy** %3, align 8
  %36 = call i32 @dummy_dev(%struct.dummy* %35)
  %37 = call i32 @device_create_file(i32 %36, i32* @dev_attr_urbs)
  ret i32 %37
}

declare dso_local %struct.dummy* @hcd_to_dummy(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @dummy_dev(%struct.dummy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
