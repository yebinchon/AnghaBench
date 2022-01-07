; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_BoxGetRegister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_BoxGetRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@QT_GET_SET_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i16, i16, i32*)* @BoxGetRegister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BoxGetRegister(%struct.usb_serial* %0, i16 zeroext %1, i16 zeroext %2, i32* %3) #0 {
  %5 = alloca %struct.usb_serial*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i32* %3, i32** %8, align 8
  store i32 4, i32* %10, align 4
  %11 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %12 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %15 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_rcvctrlpipe(i32 %16, i32 0)
  %18 = load i32, i32* @QT_GET_SET_REGISTER, align 4
  %19 = load i16, i16* %7, align 2
  %20 = load i16, i16* %6, align 2
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = call i32 @usb_control_msg(i32 %13, i32 %17, i32 %18, i32 192, i16 zeroext %19, i16 zeroext %20, i8* %22, i32 4, i32 300)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  ret i32 %24
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i16 zeroext, i16 zeroext, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
