; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxsub = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"comedi?: usbdux_ai_stop: this_usbduxsub=NULL!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"comedi: usbdux_ai_stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbduxsub*, i32)* @usbdux_ai_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_stop(%struct.usbduxsub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbduxsub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbduxsub* %0, %struct.usbduxsub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %8 = icmp ne %struct.usbduxsub* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %11 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %19 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %27 = call i32 @usbduxsub_unlink_InURBs(%struct.usbduxsub* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %17
  %29 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %30 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usbduxsub_unlink_InURBs(%struct.usbduxsub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
