; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_boxstoprx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_boxstoprx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@QT2_STOP_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i16, i16)* @qt2_boxstoprx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2_boxstoprx(%struct.usb_serial* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %8 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %11 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_sndctrlpipe(i32 %12, i32 0)
  %14 = load i32, i32* @QT2_STOP_RECEIVE, align 4
  %15 = load i16, i16* %6, align 2
  %16 = load i16, i16* %5, align 2
  %17 = call i32 @usb_control_msg(i32 %9, i32 %13, i32 %14, i32 64, i16 zeroext %15, i16 zeroext %16, i32* null, i32 0, i32 300)
  ret i32 %17
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i16 zeroext, i16 zeroext, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
