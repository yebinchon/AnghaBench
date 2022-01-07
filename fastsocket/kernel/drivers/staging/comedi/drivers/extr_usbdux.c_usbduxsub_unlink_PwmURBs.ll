; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_unlink_PwmURBs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_unlink_PwmURBs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxsub = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"comedi: unlinked PwmURB: res=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbduxsub*)* @usbduxsub_unlink_PwmURBs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsub_unlink_PwmURBs(%struct.usbduxsub* %0) #0 {
  %2 = alloca %struct.usbduxsub*, align 8
  %3 = alloca i32, align 4
  store %struct.usbduxsub* %0, %struct.usbduxsub** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %5 = icmp ne %struct.usbduxsub* %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %8 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %13 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %18 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @usb_kill_urb(i64 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %23 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %21, %6, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
