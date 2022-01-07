; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dummy = type { i32, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@USB_DEVICE_B_HNP_ENABLE = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@DUMMY_RH_SUSPENDED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @dummy_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_wakeup(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.dummy*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %6 = call %struct.dummy* @gadget_to_dummy(%struct.usb_gadget* %5)
  store %struct.dummy* %6, %struct.dummy** %4, align 8
  %7 = load %struct.dummy*, %struct.dummy** %4, align 8
  %8 = getelementptr inbounds %struct.dummy, %struct.dummy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @USB_DEVICE_B_HNP_ENABLE, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = and i32 %9, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.dummy*, %struct.dummy** %4, align 8
  %22 = getelementptr inbounds %struct.dummy, %struct.dummy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOLINK, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %61

30:                                               ; preds = %20
  %31 = load %struct.dummy*, %struct.dummy** %4, align 8
  %32 = getelementptr inbounds %struct.dummy, %struct.dummy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.dummy*, %struct.dummy** %4, align 8
  %39 = getelementptr inbounds %struct.dummy, %struct.dummy* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DUMMY_RH_SUSPENDED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %37, %30
  %47 = load %struct.dummy*, %struct.dummy** %4, align 8
  %48 = getelementptr inbounds %struct.dummy, %struct.dummy* %47, i32 0, i32 3
  store i32 1, i32* %48, align 8
  %49 = load i64, i64* @jiffies, align 8
  %50 = call i64 @msecs_to_jiffies(i32 20)
  %51 = add nsw i64 %49, %50
  %52 = load %struct.dummy*, %struct.dummy** %4, align 8
  %53 = getelementptr inbounds %struct.dummy, %struct.dummy* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  %54 = load %struct.dummy*, %struct.dummy** %4, align 8
  %55 = call %struct.TYPE_2__* @dummy_to_hcd(%struct.dummy* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.dummy*, %struct.dummy** %4, align 8
  %58 = getelementptr inbounds %struct.dummy, %struct.dummy* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @mod_timer(i32* %56, i64 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %46, %43, %27, %17
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.dummy* @gadget_to_dummy(%struct.usb_gadget*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @dummy_to_hcd(%struct.dummy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
