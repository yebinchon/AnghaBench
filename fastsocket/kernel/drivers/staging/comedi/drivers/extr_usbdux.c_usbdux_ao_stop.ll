; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxsub = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"comedi: usbdux_ao_cancel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbduxsub*, i32)* @usbdux_ao_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ao_stop(%struct.usbduxsub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbduxsub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbduxsub* %0, %struct.usbduxsub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %8 = icmp ne %struct.usbduxsub* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EFAULT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %14 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %22 = call i32 @usbduxsub_unlink_OutURBs(%struct.usbduxsub* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %12
  %24 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %25 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usbduxsub_unlink_OutURBs(%struct.usbduxsub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
