; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_submit_PwmURBs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_submit_PwmURBs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxsub = type { %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"comedi_: submitting pwm-urb\0A\00", align 1
@PWM_EP = common dso_local global i32 0, align 4
@usbduxsub_pwm_irq = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"comedi_: usbdux: pwm: usb_submit_urb error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbduxsub*)* @usbduxsub_submit_PwmURBs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsub_submit_PwmURBs(%struct.usbduxsub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbduxsub*, align 8
  %4 = alloca i32, align 4
  store %struct.usbduxsub* %0, %struct.usbduxsub** %3, align 8
  %5 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %6 = icmp ne %struct.usbduxsub* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EFAULT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %12 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %17 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %20 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %23 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PWM_EP, align 4
  %26 = call i32 @usb_sndbulkpipe(i32 %24, i32 %25)
  %27 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %28 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %33 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @usbduxsub_pwm_irq, align 4
  %36 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %37 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %18, i32 %21, i32 %26, i32 %31, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %41 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32 @usb_submit_urb(%struct.TYPE_5__* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %10
  %48 = load %struct.usbduxsub*, %struct.usbduxsub** %3, align 8
  %49 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %47, %7
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
