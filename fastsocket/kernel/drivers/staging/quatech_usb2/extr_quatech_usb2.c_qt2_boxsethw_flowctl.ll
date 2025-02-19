; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_boxsethw_flowctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_boxsethw_flowctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@QT2_SERIAL_MCR_RTS = common dso_local global i32 0, align 4
@QT2_SERIAL_MSR_CTS = common dso_local global i32 0, align 4
@QT2_HW_FLOW_CONTROL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32, i32)* @qt2_boxsethw_flowctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2_boxsethw_flowctl(%struct.usb_serial* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @QT2_SERIAL_MCR_RTS, align 4
  store i32 %13, i32* %7, align 4
  br label %15

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @QT2_SERIAL_MSR_CTS, align 4
  store i32 %21, i32* %8, align 4
  br label %23

22:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %28 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %31 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_sndctrlpipe(i32 %32, i32 0)
  %34 = load i32, i32* @QT2_HW_FLOW_CONTROL_MASK, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @usb_control_msg(i32 %29, i32 %33, i32 %34, i32 64, i32 %35, i32 %36, i32* null, i32 0, i32 300)
  ret i32 %37
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
