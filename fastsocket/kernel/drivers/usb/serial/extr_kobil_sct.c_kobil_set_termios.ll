; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_kobil_sct.c_kobil_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_kobil_sct.c_kobil_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios* }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ktermios = type { i32 }
%struct.kobil_private = type { i64 }

@KOBIL_USBTWIN_PRODUCT_ID = common dso_local global i64 0, align 8
@KOBIL_KAAN_SIM_PRODUCT_ID = common dso_local global i64 0, align 8
@SUSBCR_SBR_1200 = common dso_local global i16 0, align 2
@SUSBCR_SBR_9600 = common dso_local global i16 0, align 2
@CSTOPB = common dso_local global i32 0, align 4
@SUSBCR_SPASB_2StopBits = common dso_local global i16 0, align 2
@SUSBCR_SPASB_1StopBit = common dso_local global i16 0, align 2
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SUSBCR_SPASB_OddParity = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [11 x i8] c"Odd Parity\00", align 1
@SUSBCR_SPASB_EvenParity = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [12 x i8] c"Even Parity\00", align 1
@SUSBCR_SPASB_NoParity = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [10 x i8] c"No Parity\00", align 1
@CMSPAR = common dso_local global i32 0, align 4
@SUSBCRequest_SetBaudRateParityAndStopBits = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@KOBIL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @kobil_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kobil_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.kobil_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i16 0, i16* %9, align 2
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.ktermios*, %struct.ktermios** %14, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %19 = call %struct.kobil_private* @usb_get_serial_port_data(%struct.usb_serial_port* %18)
  store %struct.kobil_private* %19, %struct.kobil_private** %7, align 8
  %20 = load %struct.kobil_private*, %struct.kobil_private** %7, align 8
  %21 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KOBIL_USBTWIN_PRODUCT_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.kobil_private*, %struct.kobil_private** %7, align 8
  %27 = getelementptr inbounds %struct.kobil_private, %struct.kobil_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KOBIL_KAAN_SIM_PRODUCT_ID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25, %3
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  %34 = load %struct.ktermios*, %struct.ktermios** %33, align 8
  %35 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %36 = bitcast %struct.ktermios* %34 to i8*
  %37 = bitcast %struct.ktermios* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  br label %146

38:                                               ; preds = %25
  %39 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %40 = call i32 @tty_get_baud_rate(%struct.tty_struct* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %44 [
    i32 1200, label %42
    i32 9600, label %45
  ]

42:                                               ; preds = %38
  %43 = load i16, i16* @SUSBCR_SBR_1200, align 2
  store i16 %43, i16* %9, align 2
  br label %47

44:                                               ; preds = %38
  store i32 9600, i32* %11, align 4
  br label %45

45:                                               ; preds = %38, %44
  %46 = load i16, i16* @SUSBCR_SBR_9600, align 2
  store i16 %46, i16* %9, align 2
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CSTOPB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i16, i16* @SUSBCR_SPASB_2StopBits, align 2
  %54 = zext i16 %53 to i32
  br label %58

55:                                               ; preds = %47
  %56 = load i16, i16* @SUSBCR_SPASB_1StopBit, align 2
  %57 = zext i16 %56 to i32
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  %60 = load i16, i16* %9, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %61, %59
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %9, align 2
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kzalloc(i32 50, i32 %64)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %146

69:                                               ; preds = %58
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @sprintf(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @PARENB, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PARODD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i16, i16* @SUSBCR_SPASB_OddParity, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* %9, align 2
  %86 = zext i16 %85 to i32
  %87 = or i32 %86, %84
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %9, align 2
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @strcat(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %100

91:                                               ; preds = %77
  %92 = load i16, i16* @SUSBCR_SPASB_EvenParity, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, i16* %9, align 2
  %95 = zext i16 %94 to i32
  %96 = or i32 %95, %93
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %9, align 2
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @strcat(i8* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %91, %82
  br label %110

101:                                              ; preds = %69
  %102 = load i16, i16* @SUSBCR_SPASB_NoParity, align 2
  %103 = zext i16 %102 to i32
  %104 = load i16, i16* %9, align 2
  %105 = zext i16 %104 to i32
  %106 = or i32 %105, %103
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %9, align 2
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @strcat(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %101, %100
  %111 = load i32, i32* @CMSPAR, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %114 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %113, i32 0, i32 0
  %115 = load %struct.ktermios*, %struct.ktermios** %114, align 8
  %116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %112
  store i32 %118, i32* %116, align 4
  %119 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %119, i32 %120, i32 %121)
  %123 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %124 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %129 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @usb_rcvctrlpipe(i32 %132, i32 0)
  %134 = load i32, i32* @SUSBCRequest_SetBaudRateParityAndStopBits, align 4
  %135 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %136 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @USB_DIR_OUT, align 4
  %139 = or i32 %137, %138
  %140 = load i16, i16* %9, align 2
  %141 = load i8*, i8** %12, align 8
  %142 = load i32, i32* @KOBIL_TIMEOUT, align 4
  %143 = call i32 @usb_control_msg(i32 %127, i32 %133, i32 %134, i32 %139, i16 zeroext %140, i32 0, i8* %141, i32 0, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @kfree(i8* %144)
  br label %146

146:                                              ; preds = %110, %68, %31
  ret void
}

declare dso_local %struct.kobil_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i16 zeroext, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
