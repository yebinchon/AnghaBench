; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_lh7a40x_udc.c_stop_activity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_lh7a40x_udc.c_stop_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lh7a40x_udc = type { i32, %struct.TYPE_2__, %struct.lh7a40x_ep* }
%struct.TYPE_2__ = type { i64 }
%struct.lh7a40x_ep = type { i32 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_2__*)* }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@UDC_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lh7a40x_udc*, %struct.usb_gadget_driver*)* @stop_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_activity(%struct.lh7a40x_udc* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.lh7a40x_udc*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lh7a40x_ep*, align 8
  store %struct.lh7a40x_udc* %0, %struct.lh7a40x_udc** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %7 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %3, align 8
  %8 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %4, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %16 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %3, align 8
  %17 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %38, %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @UDC_MAX_ENDPOINTS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %3, align 8
  %25 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %24, i32 0, i32 2
  %26 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %26, i64 %28
  store %struct.lh7a40x_ep* %29, %struct.lh7a40x_ep** %6, align 8
  %30 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %6, align 8
  %31 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @usb_set_index(i32 %32)
  %34 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %6, align 8
  %35 = load i32, i32* @ESHUTDOWN, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @nuke(%struct.lh7a40x_ep* %34, i32 %36)
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %43 = icmp ne %struct.usb_gadget_driver* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %3, align 8
  %46 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %49 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %49, align 8
  %51 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %3, align 8
  %52 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %51, i32 0, i32 1
  %53 = call i32 %50(%struct.TYPE_2__* %52)
  %54 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %3, align 8
  %55 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %54, i32 0, i32 0
  %56 = call i32 @spin_lock(i32* %55)
  br label %57

57:                                               ; preds = %44, %41
  %58 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %3, align 8
  %59 = call i32 @udc_reinit(%struct.lh7a40x_udc* %58)
  ret void
}

declare dso_local i32 @usb_set_index(i32) #1

declare dso_local i32 @nuke(%struct.lh7a40x_ep*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @udc_reinit(%struct.lh7a40x_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
