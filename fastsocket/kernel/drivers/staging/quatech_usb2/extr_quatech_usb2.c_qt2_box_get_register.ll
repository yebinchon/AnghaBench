; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_box_get_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_box_get_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@QT2_GET_SET_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i8, i16, i32*)* @qt2_box_get_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2_box_get_register(%struct.usb_serial* %0, i8 zeroext %1, i16 zeroext %2, i32* %3) #0 {
  %5 = alloca %struct.usb_serial*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %5, align 8
  store i8 %1, i8* %6, align 1
  store i16 %2, i16* %7, align 2
  store i32* %3, i32** %8, align 8
  %10 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %11 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %14 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_rcvctrlpipe(i32 %15, i32 0)
  %17 = load i32, i32* @QT2_GET_SET_REGISTER, align 4
  %18 = load i16, i16* %7, align 2
  %19 = load i8, i8* %6, align 1
  %20 = load i32*, i32** %8, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = call i32 @usb_control_msg(i32 %12, i32 %16, i32 %17, i32 192, i16 zeroext %18, i8 zeroext %19, i8* %21, i32 4, i32 300)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i16 zeroext, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
