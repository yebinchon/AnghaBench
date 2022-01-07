; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_modem_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_modem_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MCT_U232_MCR_NONE = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@MCT_U232_MCR_DTR = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@MCT_U232_MCR_RTS = common dso_local global i8 0, align 1
@MCT_U232_SET_MODEM_CTRL_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_REQUEST_TYPE = common dso_local global i32 0, align 4
@MCT_U232_SET_MODEM_CTRL_SIZE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Set MODEM CTRL 0x%x failed (error = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"set_modem_ctrl: state=0x%x ==> mcr=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32)* @mct_u232_set_modem_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_set_modem_ctrl(%struct.usb_serial* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8, i8* @MCT_U232_MCR_NONE, align 1
  store i8 %7, i8* %6, align 1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @TIOCM_DTR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i8, i8* @MCT_U232_MCR_DTR, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TIOCM_RTS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i8, i8* @MCT_U232_MCR_RTS, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %33 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %36 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %37, i32 0)
  %39 = load i32, i32* @MCT_U232_SET_MODEM_CTRL_REQUEST, align 4
  %40 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %41 = load i32, i32* @MCT_U232_SET_MODEM_CTRL_SIZE, align 4
  %42 = load i32, i32* @WDR_TIMEOUT, align 4
  %43 = call i32 @usb_control_msg(%struct.TYPE_3__* %34, i32 %38, i32 %39, i32 %40, i32 0, i32 0, i8* %6, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %48 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8, i8* %6, align 1
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8 zeroext %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %31
  %55 = load i32, i32* %4, align 4
  %56 = load i8, i8* %6, align 1
  %57 = call i32 @dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8 zeroext %56)
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext, i32) #1

declare dso_local i32 @dbg(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
