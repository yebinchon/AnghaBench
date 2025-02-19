; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_baud_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial = type { i32 }
%struct.usb_serial_port = type { i32 }

@MCT_U232_SET_BAUD_RATE_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_REQUEST_TYPE = common dso_local global i32 0, align 4
@MCT_U232_SET_BAUD_RATE_SIZE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Set BAUD RATE %d failed (error = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"set_baud_rate: value: 0x%x, divisor: 0x%x\00", align 1
@MCT_U232_SET_UNKNOWN1_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_UNKNOWN1_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Sending USB device request code %d failed (error = %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"set_baud_rate: send second control message, data = %02X\00", align 1
@MCT_U232_SET_CTS_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_CTS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial*, %struct.usb_serial_port*, i32)* @mct_u232_set_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_set_baud_rate(%struct.tty_struct* %0, %struct.usb_serial* %1, %struct.usb_serial_port* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.usb_serial* %1, %struct.usb_serial** %6, align 8
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  %14 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @mct_u232_calculate_baud_rate(%struct.usb_serial* %14, i32 %15, i32* %13)
  %17 = call zeroext i8 @cpu_to_le32(i32 %16)
  store i8 %17, i8* %9, align 1
  %18 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_sndctrlpipe(i32 %23, i32 0)
  %25 = load i32, i32* @MCT_U232_SET_BAUD_RATE_REQUEST, align 4
  %26 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %27 = load i32, i32* @MCT_U232_SET_BAUD_RATE_SIZE, align 4
  %28 = load i32, i32* @WDR_TIMEOUT, align 4
  %29 = call i32 @usb_control_msg(i32 %20, i32 %24, i32 %25, i32 %26, i32 0, i32 0, i8* %9, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %34 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %33, i32 0, i32 0
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %43

38:                                               ; preds = %4
  %39 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i32, i32* %8, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 (i8*, i8, ...) @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %45, i32 %47)
  %49 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %50 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %53 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_sndctrlpipe(i32 %54, i32 0)
  %56 = load i32, i32* @MCT_U232_SET_UNKNOWN1_REQUEST, align 4
  %57 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %58 = load i32, i32* @MCT_U232_SET_UNKNOWN1_SIZE, align 4
  %59 = load i32, i32* @WDR_TIMEOUT, align 4
  %60 = call i32 @usb_control_msg(i32 %51, i32 %55, i32 %56, i32 %57, i32 0, i32 0, i8* %11, i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %43
  %64 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %65 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %64, i32 0, i32 0
  %66 = load i32, i32* @MCT_U232_SET_UNKNOWN1_REQUEST, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %43
  %70 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %71 = icmp ne %struct.usb_serial_port* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %74 = call i64 @C_CRTSCTS(%struct.tty_struct* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8 1, i8* %12, align 1
  br label %77

77:                                               ; preds = %76, %72, %69
  %78 = load i8, i8* %12, align 1
  %79 = call i32 (i8*, i8, ...) @dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %78)
  %80 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %81 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %84 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @usb_sndctrlpipe(i32 %85, i32 0)
  %87 = load i32, i32* @MCT_U232_SET_CTS_REQUEST, align 4
  %88 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %89 = load i32, i32* @MCT_U232_SET_CTS_SIZE, align 4
  %90 = load i32, i32* @WDR_TIMEOUT, align 4
  %91 = call i32 @usb_control_msg(i32 %82, i32 %86, i32 %87, i32 %88, i32 0, i32 0, i8* %12, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %77
  %95 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %96 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %95, i32 0, i32 0
  %97 = load i32, i32* @MCT_U232_SET_CTS_REQUEST, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %77
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local zeroext i8 @cpu_to_le32(i32) #1

declare dso_local i32 @mct_u232_calculate_baud_rate(%struct.usb_serial*, i32, i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @dbg(i8*, i8 zeroext, ...) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
