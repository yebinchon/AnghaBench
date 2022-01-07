; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_get_uart_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_get_uart_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64, %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"mos7840_get_uart_reg application number is %x\00", align 1
@MCS_RDREQ = common dso_local global i32 0, align 4
@MCS_RD_RTYPE = common dso_local global i32 0, align 4
@VENDOR_READ_LENGTH = common dso_local global i32 0, align 4
@MOS_WDR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32, i32*)* @mos7840_get_uart_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7840_get_uart_reg(%struct.usb_serial_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %23 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %27 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = sub nsw i32 %25, %31
  %33 = add nsw i32 %32, 1
  %34 = shl i32 %33, 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %83

37:                                               ; preds = %3
  %38 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %39 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %43 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = sub nsw i32 %41, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %37
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %52 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %56 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = sub nsw i32 %54, %60
  %62 = add nsw i32 %61, 1
  %63 = shl i32 %62, 8
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %82

66:                                               ; preds = %37
  %67 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %68 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %72 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = sub nsw i32 %70, %76
  %78 = add nsw i32 %77, 2
  %79 = shl i32 %78, 8
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %66, %50
  br label %83

83:                                               ; preds = %82, %21
  %84 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %85 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %86 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %85, i32 0)
  %87 = load i32, i32* @MCS_RDREQ, align 4
  %88 = load i32, i32* @MCS_RD_RTYPE, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @VENDOR_READ_LENGTH, align 4
  %93 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %94 = call i32 @usb_control_msg(%struct.usb_device* %84, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32* %91, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 255
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
