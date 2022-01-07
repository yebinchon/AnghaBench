; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_pl2303.c_pl2303_update_line_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_pl2303.c_pl2303_update_line_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pl2303_private = type { i8, i32, i32 }

@UART_STATE = common dso_local global i32 0, align 4
@SIEMENS_VENDOR_ID = common dso_local global i64 0, align 8
@SIEMENS_PRODUCT_ID_X65 = common dso_local global i64 0, align 8
@SIEMENS_PRODUCT_ID_SX1 = common dso_local global i64 0, align 8
@SIEMENS_PRODUCT_ID_X75 = common dso_local global i64 0, align 8
@UART_BREAK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i8*, i32)* @pl2303_update_line_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl2303_update_line_status(%struct.usb_serial_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pl2303_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %14 = call %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.pl2303_private* %14, %struct.pl2303_private** %7, align 8
  %15 = load i32, i32* @UART_STATE, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @UART_STATE, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @SIEMENS_VENDOR_ID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %3
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @SIEMENS_PRODUCT_ID_X65, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @SIEMENS_PRODUCT_ID_SX1, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @SIEMENS_PRODUCT_ID_X75, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43, %39
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %47
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %88

58:                                               ; preds = %53
  %59 = load %struct.pl2303_private*, %struct.pl2303_private** %7, align 8
  %60 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %59, i32 0, i32 2
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load %struct.pl2303_private*, %struct.pl2303_private** %7, align 8
  %69 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %68, i32 0, i32 0
  store i8 %67, i8* %69, align 4
  %70 = load %struct.pl2303_private*, %struct.pl2303_private** %7, align 8
  %71 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %70, i32 0, i32 2
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.pl2303_private*, %struct.pl2303_private** %7, align 8
  %75 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 4
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* @UART_BREAK_ERROR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %58
  %82 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %83 = call i32 @usb_serial_handle_break(%struct.usb_serial_port* %82)
  br label %84

84:                                               ; preds = %81, %58
  %85 = load %struct.pl2303_private*, %struct.pl2303_private** %7, align 8
  %86 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %85, i32 0, i32 1
  %87 = call i32 @wake_up_interruptible(i32* %86)
  br label %88

88:                                               ; preds = %84, %57
  ret void
}

declare dso_local %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_serial_handle_break(%struct.usb_serial_port*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
