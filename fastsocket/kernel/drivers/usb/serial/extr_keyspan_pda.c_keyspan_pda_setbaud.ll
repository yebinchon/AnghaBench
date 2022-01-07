; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_setbaud.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_setbaud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32)* @keyspan_pda_setbaud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_pda_setbaud(%struct.usb_serial* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %19 [
    i32 110, label %9
    i32 300, label %10
    i32 1200, label %11
    i32 2400, label %12
    i32 4800, label %13
    i32 9600, label %14
    i32 19200, label %15
    i32 38400, label %16
    i32 57600, label %17
    i32 115200, label %18
  ]

9:                                                ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

10:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %20

11:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %20

12:                                               ; preds = %2
  store i32 3, i32* %7, align 4
  br label %20

13:                                               ; preds = %2
  store i32 4, i32* %7, align 4
  br label %20

14:                                               ; preds = %2
  store i32 5, i32* %7, align 4
  br label %20

15:                                               ; preds = %2
  store i32 6, i32* %7, align 4
  br label %20

16:                                               ; preds = %2
  store i32 7, i32* %7, align 4
  br label %20

17:                                               ; preds = %2
  store i32 8, i32* %7, align 4
  br label %20

18:                                               ; preds = %2
  store i32 9, i32* %7, align 4
  br label %20

19:                                               ; preds = %2
  store i32 5, i32* %7, align 4
  store i32 9600, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %21 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %25 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_sndctrlpipe(i32 %26, i32 0)
  %28 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %29 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @USB_DIR_OUT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @usb_control_msg(i32 %23, i32 %27, i32 0, i32 %32, i32 %33, i32 0, i32* null, i32 0, i32 2000)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
