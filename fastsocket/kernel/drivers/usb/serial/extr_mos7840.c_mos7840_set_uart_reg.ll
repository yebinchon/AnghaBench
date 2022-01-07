; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_set_uart_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_set_uart_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64, %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"mos7840_set_uart_reg application number is %x\00", align 1
@MCS_WRREQ = common dso_local global i32 0, align 4
@MCS_WR_RTYPE = common dso_local global i32 0, align 4
@MOS_WDR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32, i32)* @mos7840_set_uart_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7840_set_uart_reg(%struct.usb_serial_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %6, align 4
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %39

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
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %89

39:                                               ; preds = %3
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %41 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %45 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = sub nsw i32 %43, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %39
  %53 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %54 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %58 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = sub nsw i32 %56, %62
  %64 = add nsw i32 %63, 1
  %65 = shl i32 %64, 8
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %88

70:                                               ; preds = %39
  %71 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %72 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %76 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = sub nsw i32 %74, %80
  %82 = add nsw i32 %81, 2
  %83 = shl i32 %82, 8
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %70, %52
  br label %89

89:                                               ; preds = %88, %21
  %90 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %91 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %92 = call i32 @usb_sndctrlpipe(%struct.usb_device* %91, i32 0)
  %93 = load i32, i32* @MCS_WRREQ, align 4
  %94 = load i32, i32* @MCS_WR_RTYPE, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %98 = call i32 @usb_control_msg(%struct.usb_device* %90, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32* null, i32 0, i32 %97)
  ret i32 %98
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
