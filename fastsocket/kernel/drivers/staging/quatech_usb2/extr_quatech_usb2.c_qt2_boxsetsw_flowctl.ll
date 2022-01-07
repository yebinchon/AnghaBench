; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_boxsetsw_flowctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_boxsetsw_flowctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@QT2_SW_FLOW_CONTROL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i8, i8, i8)* @qt2_boxsetsw_flowctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2_boxsetsw_flowctl(%struct.usb_serial* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.usb_serial*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.usb_serial* %0, %struct.usb_serial** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %10 = load i8, i8* %8, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 8
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %9, align 1
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i16
  %16 = trunc i16 %15 to i8
  store i8 %16, i8* %9, align 1
  %17 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %18 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %21 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_sndctrlpipe(i32 %22, i32 0)
  %24 = load i32, i32* @QT2_SW_FLOW_CONTROL_MASK, align 4
  %25 = load i8, i8* %9, align 1
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @usb_control_msg(i32 %19, i32 %23, i32 %24, i32 64, i8 zeroext %25, i8 zeroext %26, i32* null, i32 0, i32 300)
  ret i32 %27
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i8 zeroext, i8 zeroext, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
