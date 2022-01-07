; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_get_modem_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_get_modem_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MCT_U232_GET_MODEM_STAT_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_GET_REQUEST_TYPE = common dso_local global i32 0, align 4
@MCT_U232_GET_MODEM_STAT_SIZE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Get MODEM STATus failed (error = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"get_modem_stat: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i8*)* @mct_u232_get_modem_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_get_modem_stat(%struct.usb_serial* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %10 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @usb_rcvctrlpipe(%struct.TYPE_3__* %11, i32 0)
  %13 = load i32, i32* @MCT_U232_GET_MODEM_STAT_REQUEST, align 4
  %14 = load i32, i32* @MCT_U232_GET_REQUEST_TYPE, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @MCT_U232_GET_MODEM_STAT_SIZE, align 4
  %17 = load i32, i32* @WDR_TIMEOUT, align 4
  %18 = call i32 @usb_control_msg(%struct.TYPE_3__* %8, i32 %12, i32 %13, i32 %14, i32 0, i32 0, i8* %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %23 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %4, align 8
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dbg(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
