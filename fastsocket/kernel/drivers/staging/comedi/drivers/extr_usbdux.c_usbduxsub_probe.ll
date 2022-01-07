; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_18__*, %struct.TYPE_17__**, %struct.usb_device*, %struct.TYPE_15__**, i8*, i8*, i8*, i8*, i8*, %struct.usb_interface*, i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__*, i32, i8*, i8*, i32, i32*, %struct.usb_device* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.usb_device = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__*, i32, i8*, i8*, i32, i32*, %struct.usb_device* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.usb_interface = type { %struct.TYPE_13__*, %struct.device }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.device = type { i32 }
%struct.usb_device_id = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"comedi_: usbdux_: finding a free structure for the usb-device\0A\00", align 1
@start_stop_sem = common dso_local global i32 0, align 4
@NUMUSBDUX = common dso_local global i32 0, align 4
@usbduxsub = common dso_local global %struct.TYPE_19__* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Too many usbdux-devices connected.\0A\00", align 1
@EMFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"comedi_: usbdux: usbduxsub[%d] is ready to connect to comedi.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"comedi_: usbdux: ifnum=%d\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@NUMOUTCHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"comedi_: usbdux: error alloc space for dac commands\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SIZEOFDUXBUFFER = common dso_local global i32 0, align 4
@SIZEINBUF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"comedi_: usbdux: could not alloc space for inBuffer\0A\00", align 1
@SIZEINSNBUF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"comedi_: usbdux: could not alloc space for insnBuffer\0A\00", align 1
@SIZEOUTBUF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"comedi_: usbdux: could not alloc space for outBuffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"comedi_: usbdux%d: could not set alternate setting 3 in high speed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NUMOFINBUFFERSHIGH = common dso_local global i32 0, align 4
@NUMOFINBUFFERSFULL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"comedi_: usbdux: Could not alloc. urbIn array\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"comedi_: usbdux%d: Could not alloc. urb(%d)\0A\00", align 1
@ISOINEP = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"comedi_: usbdux%d: could not alloc. transb.\0A\00", align 1
@usbduxsub_ai_IsocIrq = common dso_local global i32 0, align 4
@NUMOFOUTBUFFERSHIGH = common dso_local global i32 0, align 4
@NUMOFOUTBUFFERSFULL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [48 x i8] c"comedi_: usbdux: Could not alloc. urbOut array\0A\00", align 1
@ISOOUTEP = common dso_local global i32 0, align 4
@usbduxsub_ao_IsocIrq = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"comedi_: usbdux%d: Could not alloc. pwm urb\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"comedi_: usbdux%d: could not alloc. transb. for pwm\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"usbdux_firmware.bin\00", align 1
@usbdux_firmware_request_complete_handler = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"Could not load firmware (err=%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"comedi_: usbdux%d has been successfully initialised.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usbduxsub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsub_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @down(i32* @start_stop_sem)
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NUMUSBDUX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %9, align 4
  br label %36

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %18

36:                                               ; preds = %30, %18
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @up(i32* @start_stop_sem)
  %43 = load i32, i32* @EMFILE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %980

45:                                               ; preds = %36
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 19
  %54 = call i32 @init_MUTEX(i32* %53)
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 11
  store %struct.usb_device* %55, %struct.usb_device** %60, align 8
  %61 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 18
  store %struct.usb_interface* %61, %struct.usb_interface** %66, align 8
  %67 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %68 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  store i32 %72, i32* %77, align 4
  %78 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i64 %81
  %83 = call i32 @usb_set_intfdata(%struct.usb_interface* %78, %struct.TYPE_19__* %82)
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 11
  %97 = load %struct.usb_device*, %struct.usb_device** %96, align 8
  %98 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @USB_SPEED_HIGH, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  store i32 %102, i32* %107, align 8
  %108 = load i32, i32* @NUMOUTCHANNELS, align 4
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @kzalloc(i32 %108, i32 %109)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 17
  store i8* %110, i8** %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 17
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %134, label %123

123:                                              ; preds = %45
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i64 %128
  %130 = call i32 @tidy_up(%struct.TYPE_19__* %129)
  %131 = call i32 @up(i32* @start_stop_sem)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %980

134:                                              ; preds = %45
  %135 = load i32, i32* @SIZEOFDUXBUFFER, align 4
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @kzalloc(i32 %135, i32 %136)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 16
  store i8* %137, i8** %142, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 16
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %161, label %150

150:                                              ; preds = %134
  %151 = load %struct.device*, %struct.device** %7, align 8
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i64 %155
  %157 = call i32 @tidy_up(%struct.TYPE_19__* %156)
  %158 = call i32 @up(i32* @start_stop_sem)
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %980

161:                                              ; preds = %134
  %162 = load i32, i32* @SIZEINBUF, align 4
  %163 = load i32, i32* @GFP_KERNEL, align 4
  %164 = call i8* @kzalloc(i32 %162, i32 %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 15
  store i8* %164, i8** %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 15
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %188, label %177

177:                                              ; preds = %161
  %178 = load %struct.device*, %struct.device** %7, align 8
  %179 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %178, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i64 %182
  %184 = call i32 @tidy_up(%struct.TYPE_19__* %183)
  %185 = call i32 @up(i32* @start_stop_sem)
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %980

188:                                              ; preds = %161
  %189 = load i32, i32* @SIZEINSNBUF, align 4
  %190 = load i32, i32* @GFP_KERNEL, align 4
  %191 = call i8* @kzalloc(i32 %189, i32 %190)
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 14
  store i8* %191, i8** %196, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 14
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %215, label %204

204:                                              ; preds = %188
  %205 = load %struct.device*, %struct.device** %7, align 8
  %206 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %205, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i64 %209
  %211 = call i32 @tidy_up(%struct.TYPE_19__* %210)
  %212 = call i32 @up(i32* @start_stop_sem)
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %980

215:                                              ; preds = %188
  %216 = load i32, i32* @SIZEOUTBUF, align 4
  %217 = load i32, i32* @GFP_KERNEL, align 4
  %218 = call i8* @kzalloc(i32 %216, i32 %217)
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 13
  store i8* %218, i8** %223, align 8
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 13
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %242, label %231

231:                                              ; preds = %215
  %232 = load %struct.device*, %struct.device** %7, align 8
  %233 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %232, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i64 %236
  %238 = call i32 @tidy_up(%struct.TYPE_19__* %237)
  %239 = call i32 @up(i32* @start_stop_sem)
  %240 = load i32, i32* @ENOMEM, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %3, align 4
  br label %980

242:                                              ; preds = %215
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 11
  %248 = load %struct.usb_device*, %struct.usb_device** %247, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @usb_set_interface(%struct.usb_device* %248, i32 %254, i32 3)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %242
  %259 = load %struct.device*, %struct.device** %7, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %259, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i32 %260)
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i64 %264
  %266 = call i32 @tidy_up(%struct.TYPE_19__* %265)
  %267 = call i32 @up(i32* @start_stop_sem)
  %268 = load i32, i32* @ENODEV, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %3, align 4
  br label %980

270:                                              ; preds = %242
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %270
  %279 = load i32, i32* @NUMOFINBUFFERSHIGH, align 4
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 3
  store i32 %279, i32* %284, align 4
  br label %292

285:                                              ; preds = %270
  %286 = load i32, i32* @NUMOFINBUFFERSFULL, align 4
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 3
  store i32 %286, i32* %291, align 4
  br label %292

292:                                              ; preds = %285, %278
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = mul i64 8, %299
  %301 = trunc i64 %300 to i32
  %302 = load i32, i32* @GFP_KERNEL, align 4
  %303 = call i8* @kzalloc(i32 %301, i32 %302)
  %304 = bitcast i8* %303 to %struct.TYPE_15__**
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %306 = load i32, i32* %9, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 12
  store %struct.TYPE_15__** %304, %struct.TYPE_15__*** %309, align 8
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 12
  %315 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %314, align 8
  %316 = icmp ne %struct.TYPE_15__** %315, null
  br i1 %316, label %328, label %317

317:                                              ; preds = %292
  %318 = load %struct.device*, %struct.device** %7, align 8
  %319 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %318, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i64 %322
  %324 = call i32 @tidy_up(%struct.TYPE_19__* %323)
  %325 = call i32 @up(i32* @start_stop_sem)
  %326 = load i32, i32* @ENOMEM, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %3, align 4
  br label %980

328:                                              ; preds = %292
  store i32 0, i32* %8, align 4
  br label %329

329:                                              ; preds = %539, %328
  %330 = load i32, i32* %8, align 4
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = icmp slt i32 %330, %336
  br i1 %337, label %338, label %542

338:                                              ; preds = %329
  %339 = load i32, i32* @GFP_KERNEL, align 4
  %340 = call i8* @usb_alloc_urb(i32 1, i32 %339)
  %341 = bitcast i8* %340 to %struct.TYPE_15__*
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 12
  %347 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %346, align 8
  %348 = load i32, i32* %8, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %347, i64 %349
  store %struct.TYPE_15__* %341, %struct.TYPE_15__** %350, align 8
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 12
  %356 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %356, i64 %358
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %359, align 8
  %361 = icmp eq %struct.TYPE_15__* %360, null
  br i1 %361, label %362, label %375

362:                                              ; preds = %338
  %363 = load %struct.device*, %struct.device** %7, align 8
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* %8, align 4
  %366 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %363, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %364, i32 %365)
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i64 %369
  %371 = call i32 @tidy_up(%struct.TYPE_19__* %370)
  %372 = call i32 @up(i32* @start_stop_sem)
  %373 = load i32, i32* @ENOMEM, align 4
  %374 = sub nsw i32 0, %373
  store i32 %374, i32* %3, align 4
  br label %980

375:                                              ; preds = %338
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 11
  %381 = load %struct.usb_device*, %struct.usb_device** %380, align 8
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %383 = load i32, i32* %9, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %385, i32 0, i32 12
  %387 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %386, align 8
  %388 = load i32, i32* %8, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %387, i64 %389
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 8
  store %struct.usb_device* %381, %struct.usb_device** %392, align 8
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %394 = load i32, i32* %9, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 12
  %398 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %397, align 8
  %399 = load i32, i32* %8, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %398, i64 %400
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 7
  store i32* null, i32** %403, align 8
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %405 = load i32, i32* %9, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 11
  %409 = load %struct.usb_device*, %struct.usb_device** %408, align 8
  %410 = load i32, i32* @ISOINEP, align 4
  %411 = call i32 @usb_rcvisocpipe(%struct.usb_device* %409, i32 %410)
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %413 = load i32, i32* %9, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 12
  %417 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %416, align 8
  %418 = load i32, i32* %8, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %417, i64 %419
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 6
  store i32 %411, i32* %422, align 8
  %423 = load i8*, i8** @URB_ISO_ASAP, align 8
  %424 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 12
  %429 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %428, align 8
  %430 = load i32, i32* %8, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %429, i64 %431
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 5
  store i8* %423, i8** %434, align 8
  %435 = load i32, i32* @SIZEINBUF, align 4
  %436 = load i32, i32* @GFP_KERNEL, align 4
  %437 = call i8* @kzalloc(i32 %435, i32 %436)
  %438 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %439 = load i32, i32* %9, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 12
  %443 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %442, align 8
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %443, i64 %445
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 4
  store i8* %437, i8** %448, align 8
  %449 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %450 = load i32, i32* %9, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %452, i32 0, i32 12
  %454 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %453, align 8
  %455 = load i32, i32* %8, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %454, i64 %456
  %458 = load %struct.TYPE_15__*, %struct.TYPE_15__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i32 0, i32 4
  %460 = load i8*, i8** %459, align 8
  %461 = icmp ne i8* %460, null
  br i1 %461, label %474, label %462

462:                                              ; preds = %375
  %463 = load %struct.device*, %struct.device** %7, align 8
  %464 = load i32, i32* %9, align 4
  %465 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %463, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %464)
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %467 = load i32, i32* %9, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i64 %468
  %470 = call i32 @tidy_up(%struct.TYPE_19__* %469)
  %471 = call i32 @up(i32* @start_stop_sem)
  %472 = load i32, i32* @ENOMEM, align 4
  %473 = sub nsw i32 0, %472
  store i32 %473, i32* %3, align 4
  br label %980

474:                                              ; preds = %375
  %475 = load i32, i32* @usbduxsub_ai_IsocIrq, align 4
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %477 = load i32, i32* %9, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 12
  %481 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %480, align 8
  %482 = load i32, i32* %8, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %481, i64 %483
  %485 = load %struct.TYPE_15__*, %struct.TYPE_15__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %485, i32 0, i32 3
  store i32 %475, i32* %486, align 8
  %487 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %488 = load i32, i32* %9, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 12
  %492 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %491, align 8
  %493 = load i32, i32* %8, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %492, i64 %494
  %496 = load %struct.TYPE_15__*, %struct.TYPE_15__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %496, i32 0, i32 0
  store i32 1, i32* %497, align 8
  %498 = load i32, i32* @SIZEINBUF, align 4
  %499 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %500 = load i32, i32* %9, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 12
  %504 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %503, align 8
  %505 = load i32, i32* %8, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %504, i64 %506
  %508 = load %struct.TYPE_15__*, %struct.TYPE_15__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %508, i32 0, i32 1
  store i32 %498, i32* %509, align 4
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %511 = load i32, i32* %9, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %513, i32 0, i32 12
  %515 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %514, align 8
  %516 = load i32, i32* %8, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %515, i64 %517
  %519 = load %struct.TYPE_15__*, %struct.TYPE_15__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %519, i32 0, i32 2
  %521 = load %struct.TYPE_14__*, %struct.TYPE_14__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %521, i64 0
  %523 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %522, i32 0, i32 1
  store i64 0, i64* %523, align 8
  %524 = load i32, i32* @SIZEINBUF, align 4
  %525 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %526 = load i32, i32* %9, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %525, i64 %527
  %529 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %528, i32 0, i32 12
  %530 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %529, align 8
  %531 = load i32, i32* %8, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %530, i64 %532
  %534 = load %struct.TYPE_15__*, %struct.TYPE_15__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 2
  %536 = load %struct.TYPE_14__*, %struct.TYPE_14__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %536, i64 0
  %538 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %537, i32 0, i32 0
  store i32 %524, i32* %538, align 8
  br label %539

539:                                              ; preds = %474
  %540 = load i32, i32* %8, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %8, align 4
  br label %329

542:                                              ; preds = %329
  %543 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %544 = load i32, i32* %9, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %543, i64 %545
  %547 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %557

550:                                              ; preds = %542
  %551 = load i32, i32* @NUMOFOUTBUFFERSHIGH, align 4
  %552 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %553 = load i32, i32* %9, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %552, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %555, i32 0, i32 4
  store i32 %551, i32* %556, align 8
  br label %564

557:                                              ; preds = %542
  %558 = load i32, i32* @NUMOFOUTBUFFERSFULL, align 4
  %559 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %560 = load i32, i32* %9, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %559, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %562, i32 0, i32 4
  store i32 %558, i32* %563, align 8
  br label %564

564:                                              ; preds = %557, %550
  %565 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %566 = load i32, i32* %9, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %565, i64 %567
  %569 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %568, i32 0, i32 4
  %570 = load i32, i32* %569, align 8
  %571 = sext i32 %570 to i64
  %572 = mul i64 8, %571
  %573 = trunc i64 %572 to i32
  %574 = load i32, i32* @GFP_KERNEL, align 4
  %575 = call i8* @kzalloc(i32 %573, i32 %574)
  %576 = bitcast i8* %575 to %struct.TYPE_17__**
  %577 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %578 = load i32, i32* %9, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %580, i32 0, i32 10
  store %struct.TYPE_17__** %576, %struct.TYPE_17__*** %581, align 8
  %582 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %583 = load i32, i32* %9, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %582, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %585, i32 0, i32 10
  %587 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %586, align 8
  %588 = icmp ne %struct.TYPE_17__** %587, null
  br i1 %588, label %600, label %589

589:                                              ; preds = %564
  %590 = load %struct.device*, %struct.device** %7, align 8
  %591 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %590, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  %592 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %593 = load i32, i32* %9, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %592, i64 %594
  %596 = call i32 @tidy_up(%struct.TYPE_19__* %595)
  %597 = call i32 @up(i32* @start_stop_sem)
  %598 = load i32, i32* @ENOMEM, align 4
  %599 = sub nsw i32 0, %598
  store i32 %599, i32* %3, align 4
  br label %980

600:                                              ; preds = %564
  store i32 0, i32* %8, align 4
  br label %601

601:                                              ; preds = %843, %600
  %602 = load i32, i32* %8, align 4
  %603 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %604 = load i32, i32* %9, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %603, i64 %605
  %607 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %606, i32 0, i32 4
  %608 = load i32, i32* %607, align 8
  %609 = icmp slt i32 %602, %608
  br i1 %609, label %610, label %846

610:                                              ; preds = %601
  %611 = load i32, i32* @GFP_KERNEL, align 4
  %612 = call i8* @usb_alloc_urb(i32 1, i32 %611)
  %613 = bitcast i8* %612 to %struct.TYPE_17__*
  %614 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %615 = load i32, i32* %9, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %614, i64 %616
  %618 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %617, i32 0, i32 10
  %619 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %618, align 8
  %620 = load i32, i32* %8, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %619, i64 %621
  store %struct.TYPE_17__* %613, %struct.TYPE_17__** %622, align 8
  %623 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %624 = load i32, i32* %9, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %623, i64 %625
  %627 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %626, i32 0, i32 10
  %628 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %627, align 8
  %629 = load i32, i32* %8, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %628, i64 %630
  %632 = load %struct.TYPE_17__*, %struct.TYPE_17__** %631, align 8
  %633 = icmp eq %struct.TYPE_17__* %632, null
  br i1 %633, label %634, label %647

634:                                              ; preds = %610
  %635 = load %struct.device*, %struct.device** %7, align 8
  %636 = load i32, i32* %9, align 4
  %637 = load i32, i32* %8, align 4
  %638 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %635, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %636, i32 %637)
  %639 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %640 = load i32, i32* %9, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %639, i64 %641
  %643 = call i32 @tidy_up(%struct.TYPE_19__* %642)
  %644 = call i32 @up(i32* @start_stop_sem)
  %645 = load i32, i32* @ENOMEM, align 4
  %646 = sub nsw i32 0, %645
  store i32 %646, i32* %3, align 4
  br label %980

647:                                              ; preds = %610
  %648 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %649 = load i32, i32* %9, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %648, i64 %650
  %652 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %651, i32 0, i32 11
  %653 = load %struct.usb_device*, %struct.usb_device** %652, align 8
  %654 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %655 = load i32, i32* %9, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %654, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %657, i32 0, i32 10
  %659 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %658, align 8
  %660 = load i32, i32* %8, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %659, i64 %661
  %663 = load %struct.TYPE_17__*, %struct.TYPE_17__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %663, i32 0, i32 9
  store %struct.usb_device* %653, %struct.usb_device** %664, align 8
  %665 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %666 = load i32, i32* %9, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %665, i64 %667
  %669 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %668, i32 0, i32 10
  %670 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %669, align 8
  %671 = load i32, i32* %8, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %670, i64 %672
  %674 = load %struct.TYPE_17__*, %struct.TYPE_17__** %673, align 8
  %675 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %674, i32 0, i32 8
  store i32* null, i32** %675, align 8
  %676 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %677 = load i32, i32* %9, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %676, i64 %678
  %680 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %679, i32 0, i32 11
  %681 = load %struct.usb_device*, %struct.usb_device** %680, align 8
  %682 = load i32, i32* @ISOOUTEP, align 4
  %683 = call i32 @usb_sndisocpipe(%struct.usb_device* %681, i32 %682)
  %684 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %685 = load i32, i32* %9, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %684, i64 %686
  %688 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %687, i32 0, i32 10
  %689 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %688, align 8
  %690 = load i32, i32* %8, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %689, i64 %691
  %693 = load %struct.TYPE_17__*, %struct.TYPE_17__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %693, i32 0, i32 7
  store i32 %683, i32* %694, align 8
  %695 = load i8*, i8** @URB_ISO_ASAP, align 8
  %696 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %697 = load i32, i32* %9, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %696, i64 %698
  %700 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %699, i32 0, i32 10
  %701 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %700, align 8
  %702 = load i32, i32* %8, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %701, i64 %703
  %705 = load %struct.TYPE_17__*, %struct.TYPE_17__** %704, align 8
  %706 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %705, i32 0, i32 6
  store i8* %695, i8** %706, align 8
  %707 = load i32, i32* @SIZEOUTBUF, align 4
  %708 = load i32, i32* @GFP_KERNEL, align 4
  %709 = call i8* @kzalloc(i32 %707, i32 %708)
  %710 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %711 = load i32, i32* %9, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %710, i64 %712
  %714 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %713, i32 0, i32 10
  %715 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %714, align 8
  %716 = load i32, i32* %8, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %715, i64 %717
  %719 = load %struct.TYPE_17__*, %struct.TYPE_17__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %719, i32 0, i32 5
  store i8* %709, i8** %720, align 8
  %721 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %722 = load i32, i32* %9, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %724, i32 0, i32 10
  %726 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %725, align 8
  %727 = load i32, i32* %8, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %726, i64 %728
  %730 = load %struct.TYPE_17__*, %struct.TYPE_17__** %729, align 8
  %731 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %730, i32 0, i32 5
  %732 = load i8*, i8** %731, align 8
  %733 = icmp ne i8* %732, null
  br i1 %733, label %746, label %734

734:                                              ; preds = %647
  %735 = load %struct.device*, %struct.device** %7, align 8
  %736 = load i32, i32* %9, align 4
  %737 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %735, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %736)
  %738 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %739 = load i32, i32* %9, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %738, i64 %740
  %742 = call i32 @tidy_up(%struct.TYPE_19__* %741)
  %743 = call i32 @up(i32* @start_stop_sem)
  %744 = load i32, i32* @ENOMEM, align 4
  %745 = sub nsw i32 0, %744
  store i32 %745, i32* %3, align 4
  br label %980

746:                                              ; preds = %647
  %747 = load i32, i32* @usbduxsub_ao_IsocIrq, align 4
  %748 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %749 = load i32, i32* %9, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %748, i64 %750
  %752 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %751, i32 0, i32 10
  %753 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %752, align 8
  %754 = load i32, i32* %8, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %753, i64 %755
  %757 = load %struct.TYPE_17__*, %struct.TYPE_17__** %756, align 8
  %758 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %757, i32 0, i32 4
  store i32 %747, i32* %758, align 8
  %759 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %760 = load i32, i32* %9, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %759, i64 %761
  %763 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %762, i32 0, i32 10
  %764 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %763, align 8
  %765 = load i32, i32* %8, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %764, i64 %766
  %768 = load %struct.TYPE_17__*, %struct.TYPE_17__** %767, align 8
  %769 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %768, i32 0, i32 0
  store i32 1, i32* %769, align 8
  %770 = load i32, i32* @SIZEOUTBUF, align 4
  %771 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %772 = load i32, i32* %9, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %771, i64 %773
  %775 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %774, i32 0, i32 10
  %776 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %775, align 8
  %777 = load i32, i32* %8, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %776, i64 %778
  %780 = load %struct.TYPE_17__*, %struct.TYPE_17__** %779, align 8
  %781 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %780, i32 0, i32 1
  store i32 %770, i32* %781, align 4
  %782 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %783 = load i32, i32* %9, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %782, i64 %784
  %786 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %785, i32 0, i32 10
  %787 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %786, align 8
  %788 = load i32, i32* %8, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %787, i64 %789
  %791 = load %struct.TYPE_17__*, %struct.TYPE_17__** %790, align 8
  %792 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %791, i32 0, i32 3
  %793 = load %struct.TYPE_16__*, %struct.TYPE_16__** %792, align 8
  %794 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %793, i64 0
  %795 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %794, i32 0, i32 1
  store i64 0, i64* %795, align 8
  %796 = load i32, i32* @SIZEOUTBUF, align 4
  %797 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %798 = load i32, i32* %9, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %797, i64 %799
  %801 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %800, i32 0, i32 10
  %802 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %801, align 8
  %803 = load i32, i32* %8, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %802, i64 %804
  %806 = load %struct.TYPE_17__*, %struct.TYPE_17__** %805, align 8
  %807 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %806, i32 0, i32 3
  %808 = load %struct.TYPE_16__*, %struct.TYPE_16__** %807, align 8
  %809 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %808, i64 0
  %810 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %809, i32 0, i32 0
  store i32 %796, i32* %810, align 8
  %811 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %812 = load i32, i32* %9, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %811, i64 %813
  %815 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %814, i32 0, i32 2
  %816 = load i32, i32* %815, align 8
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %830

818:                                              ; preds = %746
  %819 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %820 = load i32, i32* %9, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %819, i64 %821
  %823 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %822, i32 0, i32 10
  %824 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %823, align 8
  %825 = load i32, i32* %8, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %824, i64 %826
  %828 = load %struct.TYPE_17__*, %struct.TYPE_17__** %827, align 8
  %829 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %828, i32 0, i32 2
  store i32 8, i32* %829, align 8
  br label %842

830:                                              ; preds = %746
  %831 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %832 = load i32, i32* %9, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %831, i64 %833
  %835 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %834, i32 0, i32 10
  %836 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %835, align 8
  %837 = load i32, i32* %8, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %836, i64 %838
  %840 = load %struct.TYPE_17__*, %struct.TYPE_17__** %839, align 8
  %841 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %840, i32 0, i32 2
  store i32 1, i32* %841, align 8
  br label %842

842:                                              ; preds = %830, %818
  br label %843

843:                                              ; preds = %842
  %844 = load i32, i32* %8, align 4
  %845 = add nsw i32 %844, 1
  store i32 %845, i32* %8, align 4
  br label %601

846:                                              ; preds = %601
  %847 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %848 = load i32, i32* %9, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %847, i64 %849
  %851 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %850, i32 0, i32 2
  %852 = load i32, i32* %851, align 8
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %925

854:                                              ; preds = %846
  %855 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %856 = load i32, i32* %9, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %855, i64 %857
  %859 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %858, i32 0, i32 5
  store i32 512, i32* %859, align 4
  %860 = load i32, i32* @GFP_KERNEL, align 4
  %861 = call i8* @usb_alloc_urb(i32 0, i32 %860)
  %862 = bitcast i8* %861 to %struct.TYPE_18__*
  %863 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %864 = load i32, i32* %9, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %863, i64 %865
  %867 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %866, i32 0, i32 9
  store %struct.TYPE_18__* %862, %struct.TYPE_18__** %867, align 8
  %868 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %869 = load i32, i32* %9, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %868, i64 %870
  %872 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %871, i32 0, i32 9
  %873 = load %struct.TYPE_18__*, %struct.TYPE_18__** %872, align 8
  %874 = icmp eq %struct.TYPE_18__* %873, null
  br i1 %874, label %875, label %887

875:                                              ; preds = %854
  %876 = load %struct.device*, %struct.device** %7, align 8
  %877 = load i32, i32* %9, align 4
  %878 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %876, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %877)
  %879 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %880 = load i32, i32* %9, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %879, i64 %881
  %883 = call i32 @tidy_up(%struct.TYPE_19__* %882)
  %884 = call i32 @up(i32* @start_stop_sem)
  %885 = load i32, i32* @ENOMEM, align 4
  %886 = sub nsw i32 0, %885
  store i32 %886, i32* %3, align 4
  br label %980

887:                                              ; preds = %854
  %888 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %889 = load i32, i32* %9, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %888, i64 %890
  %892 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %891, i32 0, i32 5
  %893 = load i32, i32* %892, align 4
  %894 = load i32, i32* @GFP_KERNEL, align 4
  %895 = call i8* @kzalloc(i32 %893, i32 %894)
  %896 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %897 = load i32, i32* %9, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %896, i64 %898
  %900 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %899, i32 0, i32 9
  %901 = load %struct.TYPE_18__*, %struct.TYPE_18__** %900, align 8
  %902 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %901, i32 0, i32 0
  store i8* %895, i8** %902, align 8
  %903 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %904 = load i32, i32* %9, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %903, i64 %905
  %907 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %906, i32 0, i32 9
  %908 = load %struct.TYPE_18__*, %struct.TYPE_18__** %907, align 8
  %909 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %908, i32 0, i32 0
  %910 = load i8*, i8** %909, align 8
  %911 = icmp ne i8* %910, null
  br i1 %911, label %924, label %912

912:                                              ; preds = %887
  %913 = load %struct.device*, %struct.device** %7, align 8
  %914 = load i32, i32* %9, align 4
  %915 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %913, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %914)
  %916 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %917 = load i32, i32* %9, align 4
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %916, i64 %918
  %920 = call i32 @tidy_up(%struct.TYPE_19__* %919)
  %921 = call i32 @up(i32* @start_stop_sem)
  %922 = load i32, i32* @ENOMEM, align 4
  %923 = sub nsw i32 0, %922
  store i32 %923, i32* %3, align 4
  br label %980

924:                                              ; preds = %887
  br label %936

925:                                              ; preds = %846
  %926 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %927 = load i32, i32* %9, align 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %926, i64 %928
  %930 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %929, i32 0, i32 9
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %930, align 8
  %931 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %932 = load i32, i32* %9, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %931, i64 %933
  %935 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %934, i32 0, i32 5
  store i32 0, i32* %935, align 4
  br label %936

936:                                              ; preds = %925, %924
  %937 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %938 = load i32, i32* %9, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %937, i64 %939
  %941 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %940, i32 0, i32 8
  store i64 0, i64* %941, align 8
  %942 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %943 = load i32, i32* %9, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %942, i64 %944
  %946 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %945, i32 0, i32 7
  store i64 0, i64* %946, align 8
  %947 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %948 = load i32, i32* %9, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %947, i64 %949
  %951 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %950, i32 0, i32 6
  store i64 0, i64* %951, align 8
  %952 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %953 = load i32, i32* %9, align 4
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %952, i64 %954
  %956 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %955, i32 0, i32 0
  store i32 1, i32* %956, align 8
  %957 = call i32 @up(i32* @start_stop_sem)
  %958 = load i32, i32* @THIS_MODULE, align 4
  %959 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %960 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %961 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %960, i32 0, i32 1
  %962 = load i32, i32* @GFP_KERNEL, align 4
  %963 = load %struct.TYPE_19__*, %struct.TYPE_19__** @usbduxsub, align 8
  %964 = load i32, i32* %9, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %963, i64 %965
  %967 = load i32, i32* @usbdux_firmware_request_complete_handler, align 4
  %968 = call i32 @request_firmware_nowait(i32 %958, i32 %959, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32* %961, i32 %962, %struct.TYPE_19__* %966, i32 %967)
  store i32 %968, i32* %10, align 4
  %969 = load i32, i32* %10, align 4
  %970 = icmp ne i32 %969, 0
  br i1 %970, label %971, label %976

971:                                              ; preds = %936
  %972 = load %struct.device*, %struct.device** %7, align 8
  %973 = load i32, i32* %10, align 4
  %974 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %972, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %973)
  %975 = load i32, i32* %10, align 4
  store i32 %975, i32* %3, align 4
  br label %980

976:                                              ; preds = %936
  %977 = load %struct.device*, %struct.device** %7, align 8
  %978 = load i32, i32* %9, align 4
  %979 = call i32 @dev_info(%struct.device* %977, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0), i32 %978)
  store i32 0, i32* %3, align 4
  br label %980

980:                                              ; preds = %976, %971, %912, %875, %734, %634, %589, %462, %362, %317, %258, %231, %204, %177, %150, %123, %39
  %981 = load i32, i32* %3, align 4
  ret i32 %981
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @init_MUTEX(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.TYPE_19__*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @tidy_up(%struct.TYPE_19__*) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
