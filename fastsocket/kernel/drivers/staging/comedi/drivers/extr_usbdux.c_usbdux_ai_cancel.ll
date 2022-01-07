; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsub* }
%struct.usbduxsub = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"comedi: usbdux_ai_cancel\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbdux_ai_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.usbduxsub*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.usbduxsub*, %struct.usbduxsub** %9, align 8
  store %struct.usbduxsub* %10, %struct.usbduxsub** %6, align 8
  %11 = load %struct.usbduxsub*, %struct.usbduxsub** %6, align 8
  %12 = icmp ne %struct.usbduxsub* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.usbduxsub*, %struct.usbduxsub** %6, align 8
  %18 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.usbduxsub*, %struct.usbduxsub** %6, align 8
  %23 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %22, i32 0, i32 0
  %24 = call i32 @down(i32* %23)
  %25 = load %struct.usbduxsub*, %struct.usbduxsub** %6, align 8
  %26 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load %struct.usbduxsub*, %struct.usbduxsub** %6, align 8
  %31 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %30, i32 0, i32 0
  %32 = call i32 @up(i32* %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %16
  %36 = load %struct.usbduxsub*, %struct.usbduxsub** %6, align 8
  %37 = load %struct.usbduxsub*, %struct.usbduxsub** %6, align 8
  %38 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usbdux_ai_stop(%struct.usbduxsub* %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.usbduxsub*, %struct.usbduxsub** %6, align 8
  %42 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %41, i32 0, i32 0
  %43 = call i32 @up(i32* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %29, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @usbdux_ai_stop(%struct.usbduxsub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
