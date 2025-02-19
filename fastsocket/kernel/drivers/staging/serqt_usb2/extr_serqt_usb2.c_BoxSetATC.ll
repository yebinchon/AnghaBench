; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_BoxSetATC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_BoxSetATC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@PREFUFF_LEVEL_CONSERVATIVE = common dso_local global i32 0, align 4
@QT_SET_ATF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32)* @BoxSetATC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BoxSetATC(%struct.usb_serial* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @PREFUFF_LEVEL_CONSERVATIVE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %9 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %12 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_sndctrlpipe(i32 %13, i32 0)
  %15 = load i32, i32* @QT_SET_ATF, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @usb_control_msg(i32 %10, i32 %14, i32 %15, i32 64, i32 %16, i32 0, i32* null, i32 0, i32 300)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
