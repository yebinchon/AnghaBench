; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_21__*, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.mimio = type { i32, i32, %struct.input_dev*, i32, %struct.TYPE_19__, %struct.usb_device*, i32, %struct.TYPE_14__, i32, i32, %struct.TYPE_17__, %struct.usb_interface* }
%struct.input_dev = type { i32*, i32*, i32*, i32*, i32*, %struct.TYPE_13__, i32, i32, i64*, i64*, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, i32, %struct.TYPE_20__*, i32* }
%struct.TYPE_22__ = type { %struct.usb_device*, i32, i32 }
%struct.usb_device = type { %struct.TYPE_13__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_22__*, i32, %struct.TYPE_20__*, i32* }
%struct.TYPE_17__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unexpected endpoint count: %d.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MIMIO_MAXPAYLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"usb_buffer_alloc failure.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"usb_alloc_urb failure.\0A\00", align 1
@mimio_irq_in = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@mimio_irq_out = common dso_local global i32 0, align 4
@MIMIO_MAXNAMELEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@mimio_open = common dso_local global i32 0, align 4
@mimio_close = common dso_local global i32 0, align 4
@mimio_name = common dso_local global i32 0, align 4
@BUS_USB = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@LOCALBTN_TOOL_EXTRA2 = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i64 0, align 8
@BTN_1 = common dso_local global i64 0, align 8
@BTN_2 = common dso_local global i64 0, align 8
@BTN_3 = common dso_local global i64 0, align 8
@BTN_4 = common dso_local global i64 0, align 8
@BTN_5 = common dso_local global i64 0, align 8
@BTN_MISC = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i64 0, align 8
@MIMIO_XRANGE_MAX = common dso_local global i32 0, align 4
@MIMIO_YRANGE_MAX = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"input_register_device failure (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"input: %s on %s (res = %d).\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"usb_submit_urb failure (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Mimio greeted OK.\0A\00", align 1
@mimio_rx_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Mimio greet Failure (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @mimio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mimio_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mimio*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usb_host_interface*, align 8
  %12 = alloca %struct.input_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %10, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mimio* @kzalloc(i32 136, i32 %17)
  store %struct.mimio* %18, %struct.mimio** %9, align 8
  %19 = load %struct.mimio*, %struct.mimio** %9, align 8
  %20 = icmp ne %struct.mimio* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %510

24:                                               ; preds = %2
  %25 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %25, %struct.input_dev** %12, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.mimio*, %struct.mimio** %9, align 8
  %30 = call i32 @mimio_dealloc(%struct.mimio* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %510

33:                                               ; preds = %24
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = load %struct.mimio*, %struct.mimio** %9, align 8
  %36 = getelementptr inbounds %struct.mimio, %struct.mimio* %35, i32 0, i32 11
  store %struct.usb_interface* %34, %struct.usb_interface** %36, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %38 = load %struct.mimio*, %struct.mimio** %9, align 8
  %39 = getelementptr inbounds %struct.mimio, %struct.mimio* %38, i32 0, i32 5
  store %struct.usb_device* %37, %struct.usb_device** %39, align 8
  %40 = load %struct.mimio*, %struct.mimio** %9, align 8
  %41 = getelementptr inbounds %struct.mimio, %struct.mimio* %40, i32 0, i32 10
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mimio*, %struct.mimio** %9, align 8
  %45 = getelementptr inbounds %struct.mimio, %struct.mimio* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.mimio*, %struct.mimio** %9, align 8
  %48 = getelementptr inbounds %struct.mimio, %struct.mimio* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mimio*, %struct.mimio** %9, align 8
  %52 = getelementptr inbounds %struct.mimio, %struct.mimio* %51, i32 0, i32 10
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %55 = load %struct.mimio*, %struct.mimio** %9, align 8
  %56 = getelementptr inbounds %struct.mimio, %struct.mimio* %55, i32 0, i32 2
  store %struct.input_dev* %54, %struct.input_dev** %56, align 8
  %57 = load %struct.mimio*, %struct.mimio** %9, align 8
  %58 = getelementptr inbounds %struct.mimio, %struct.mimio* %57, i32 0, i32 9
  %59 = call i32 @init_waitqueue_head(i32* %58)
  %60 = load %struct.mimio*, %struct.mimio** %9, align 8
  %61 = getelementptr inbounds %struct.mimio, %struct.mimio* %60, i32 0, i32 8
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %64 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %63, i32 0, i32 1
  %65 = load %struct.usb_host_interface*, %struct.usb_host_interface** %64, align 8
  store %struct.usb_host_interface* %65, %struct.usb_host_interface** %11, align 8
  %66 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %67 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %83

71:                                               ; preds = %33
  %72 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %73 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 0
  %74 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %75 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.mimio*, %struct.mimio** %9, align 8
  %80 = call i32 @mimio_dealloc(%struct.mimio* %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %510

83:                                               ; preds = %33
  %84 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %85 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %84, i32 0, i32 0
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load %struct.mimio*, %struct.mimio** %9, align 8
  %90 = getelementptr inbounds %struct.mimio, %struct.mimio* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %91, align 8
  %92 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %93 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %92, i32 0, i32 0
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load %struct.mimio*, %struct.mimio** %9, align 8
  %98 = getelementptr inbounds %struct.mimio, %struct.mimio* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %99, align 8
  %100 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %101 = load i32, i32* @MIMIO_MAXPAYLOAD, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = load %struct.mimio*, %struct.mimio** %9, align 8
  %104 = getelementptr inbounds %struct.mimio, %struct.mimio* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = call i8* @usb_buffer_alloc(%struct.usb_device* %100, i32 %101, i32 %102, i32* %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.mimio*, %struct.mimio** %9, align 8
  %109 = getelementptr inbounds %struct.mimio, %struct.mimio* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  store i32* %107, i32** %110, align 8
  %111 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %112 = load i32, i32* @MIMIO_MAXPAYLOAD, align 4
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = load %struct.mimio*, %struct.mimio** %9, align 8
  %115 = getelementptr inbounds %struct.mimio, %struct.mimio* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = call i8* @usb_buffer_alloc(%struct.usb_device* %111, i32 %112, i32 %113, i32* %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.mimio*, %struct.mimio** %9, align 8
  %120 = getelementptr inbounds %struct.mimio, %struct.mimio* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 3
  store i32* %118, i32** %121, align 8
  %122 = load %struct.mimio*, %struct.mimio** %9, align 8
  %123 = getelementptr inbounds %struct.mimio, %struct.mimio* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %83
  %128 = load %struct.mimio*, %struct.mimio** %9, align 8
  %129 = getelementptr inbounds %struct.mimio, %struct.mimio* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %127, %83
  %134 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %135 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %134, i32 0, i32 0
  %136 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %137 = load %struct.mimio*, %struct.mimio** %9, align 8
  %138 = call i32 @mimio_dealloc(%struct.mimio* %137)
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %510

141:                                              ; preds = %127
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @usb_alloc_urb(i32 0, i32 %142)
  %144 = bitcast i8* %143 to %struct.TYPE_22__*
  %145 = load %struct.mimio*, %struct.mimio** %9, align 8
  %146 = getelementptr inbounds %struct.mimio, %struct.mimio* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  store %struct.TYPE_22__* %144, %struct.TYPE_22__** %147, align 8
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call i8* @usb_alloc_urb(i32 0, i32 %148)
  %150 = bitcast i8* %149 to %struct.TYPE_22__*
  %151 = load %struct.mimio*, %struct.mimio** %9, align 8
  %152 = getelementptr inbounds %struct.mimio, %struct.mimio* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store %struct.TYPE_22__* %150, %struct.TYPE_22__** %153, align 8
  %154 = load %struct.mimio*, %struct.mimio** %9, align 8
  %155 = getelementptr inbounds %struct.mimio, %struct.mimio* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = icmp eq %struct.TYPE_22__* %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %141
  %160 = load %struct.mimio*, %struct.mimio** %9, align 8
  %161 = getelementptr inbounds %struct.mimio, %struct.mimio* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  %164 = icmp eq %struct.TYPE_22__* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %159, %141
  %166 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %167 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %166, i32 0, i32 0
  %168 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %169 = load %struct.mimio*, %struct.mimio** %9, align 8
  %170 = call i32 @mimio_dealloc(%struct.mimio* %169)
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %510

173:                                              ; preds = %159
  %174 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %175 = load %struct.mimio*, %struct.mimio** %9, align 8
  %176 = getelementptr inbounds %struct.mimio, %struct.mimio* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @usb_rcvintpipe(%struct.usb_device* %174, i32 %180)
  store i32 %181, i32* %7, align 4
  %182 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @usb_pipeout(i32 %184)
  %186 = call i32 @usb_maxpacket(%struct.usb_device* %182, i32 %183, i32 %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @MIMIO_MAXPAYLOAD, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %173
  %191 = load i32, i32* @MIMIO_MAXPAYLOAD, align 4
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %190, %173
  %193 = load %struct.mimio*, %struct.mimio** %9, align 8
  %194 = getelementptr inbounds %struct.mimio, %struct.mimio* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  %197 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.mimio*, %struct.mimio** %9, align 8
  %200 = getelementptr inbounds %struct.mimio, %struct.mimio* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @mimio_irq_in, align 4
  %205 = load %struct.mimio*, %struct.mimio** %9, align 8
  %206 = load %struct.mimio*, %struct.mimio** %9, align 8
  %207 = getelementptr inbounds %struct.mimio, %struct.mimio* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @usb_fill_int_urb(%struct.TYPE_22__* %196, %struct.usb_device* %197, i32 %198, i32* %202, i32 %203, i32 %204, %struct.mimio* %205, i32 %211)
  %213 = load %struct.mimio*, %struct.mimio** %9, align 8
  %214 = getelementptr inbounds %struct.mimio, %struct.mimio* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.mimio*, %struct.mimio** %9, align 8
  %218 = getelementptr inbounds %struct.mimio, %struct.mimio* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 2
  store i32 %216, i32* %221, align 4
  %222 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %223 = load %struct.mimio*, %struct.mimio** %9, align 8
  %224 = getelementptr inbounds %struct.mimio, %struct.mimio* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %222
  store i32 %229, i32* %227, align 8
  %230 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %231 = load %struct.mimio*, %struct.mimio** %9, align 8
  %232 = getelementptr inbounds %struct.mimio, %struct.mimio* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @usb_sndintpipe(%struct.usb_device* %230, i32 %236)
  store i32 %237, i32* %7, align 4
  %238 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @usb_pipeout(i32 %240)
  %242 = call i32 @usb_maxpacket(%struct.usb_device* %238, i32 %239, i32 %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @MIMIO_MAXPAYLOAD, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %192
  %247 = load i32, i32* @MIMIO_MAXPAYLOAD, align 4
  store i32 %247, i32* %8, align 4
  br label %248

248:                                              ; preds = %246, %192
  %249 = load %struct.mimio*, %struct.mimio** %9, align 8
  %250 = getelementptr inbounds %struct.mimio, %struct.mimio* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %251, align 8
  %253 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.mimio*, %struct.mimio** %9, align 8
  %256 = getelementptr inbounds %struct.mimio, %struct.mimio* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @mimio_irq_out, align 4
  %261 = load %struct.mimio*, %struct.mimio** %9, align 8
  %262 = load %struct.mimio*, %struct.mimio** %9, align 8
  %263 = getelementptr inbounds %struct.mimio, %struct.mimio* %262, i32 0, i32 7
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @usb_fill_int_urb(%struct.TYPE_22__* %252, %struct.usb_device* %253, i32 %254, i32* %258, i32 %259, i32 %260, %struct.mimio* %261, i32 %267)
  %269 = load %struct.mimio*, %struct.mimio** %9, align 8
  %270 = getelementptr inbounds %struct.mimio, %struct.mimio* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.mimio*, %struct.mimio** %9, align 8
  %274 = getelementptr inbounds %struct.mimio, %struct.mimio* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 2
  store i32 %272, i32* %277, align 4
  %278 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %279 = load %struct.mimio*, %struct.mimio** %9, align 8
  %280 = getelementptr inbounds %struct.mimio, %struct.mimio* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = or i32 %284, %278
  store i32 %285, i32* %283, align 8
  %286 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %287 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %288 = call i32 @usb_make_path(%struct.usb_device* %286, i8* %287, i32 64)
  %289 = load %struct.mimio*, %struct.mimio** %9, align 8
  %290 = getelementptr inbounds %struct.mimio, %struct.mimio* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @MIMIO_MAXNAMELEN, align 4
  %293 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %294 = call i32 @snprintf(i32 %291, i32 %292, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %293)
  %295 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %296 = load %struct.mimio*, %struct.mimio** %9, align 8
  %297 = call i32 @input_set_drvdata(%struct.input_dev* %295, %struct.mimio* %296)
  %298 = load i32, i32* @mimio_open, align 4
  %299 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %300 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %299, i32 0, i32 12
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* @mimio_close, align 4
  %302 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %303 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %302, i32 0, i32 11
  store i32 %301, i32* %303, align 8
  %304 = load i32, i32* @mimio_name, align 4
  %305 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %306 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %305, i32 0, i32 7
  store i32 %304, i32* %306, align 4
  %307 = load %struct.mimio*, %struct.mimio** %9, align 8
  %308 = getelementptr inbounds %struct.mimio, %struct.mimio* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %311 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %310, i32 0, i32 6
  store i32 %309, i32* %311, align 8
  %312 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %313 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %312, i32 0, i32 0
  %314 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %315 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  store i32* %313, i32** %316, align 8
  %317 = load i32, i32* @BUS_USB, align 4
  %318 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %319 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %318, i32 0, i32 10
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 3
  store i32 %317, i32* %320, align 8
  %321 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %322 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i8* @le16_to_cpu(i32 %324)
  %326 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %327 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %326, i32 0, i32 10
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 2
  store i8* %325, i8** %328, align 8
  %329 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %330 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i8* @le16_to_cpu(i32 %332)
  %334 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %335 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %334, i32 0, i32 10
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  store i8* %333, i8** %336, align 8
  %337 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %338 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i8* @le16_to_cpu(i32 %340)
  %342 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %343 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %342, i32 0, i32 10
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 0
  store i8* %341, i8** %344, align 8
  %345 = load i32, i32* @EV_KEY, align 4
  %346 = call i32 @BIT(i32 %345)
  %347 = load i32, i32* @EV_ABS, align 4
  %348 = call i32 @BIT(i32 %347)
  %349 = or i32 %346, %348
  %350 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %351 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  %354 = load i32, i32* %353, align 4
  %355 = or i32 %354, %349
  store i32 %355, i32* %353, align 4
  %356 = load i32, i32* @BTN_TOOL_PEN, align 4
  store i32 %356, i32* %14, align 4
  br label %357

357:                                              ; preds = %367, %248
  %358 = load i32, i32* %14, align 4
  %359 = load i32, i32* @LOCALBTN_TOOL_EXTRA2, align 4
  %360 = icmp sle i32 %358, %359
  br i1 %360, label %361, label %370

361:                                              ; preds = %357
  %362 = load i32, i32* %14, align 4
  %363 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %364 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @set_bit(i32 %362, i32* %365)
  br label %367

367:                                              ; preds = %361
  %368 = load i32, i32* %14, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %14, align 4
  br label %357

370:                                              ; preds = %357
  %371 = load i64, i64* @BTN_0, align 8
  %372 = call i32 @BIT_MASK(i64 %371)
  %373 = load i64, i64* @BTN_1, align 8
  %374 = call i32 @BIT_MASK(i64 %373)
  %375 = or i32 %372, %374
  %376 = load i64, i64* @BTN_2, align 8
  %377 = call i32 @BIT_MASK(i64 %376)
  %378 = or i32 %375, %377
  %379 = load i64, i64* @BTN_3, align 8
  %380 = call i32 @BIT_MASK(i64 %379)
  %381 = or i32 %378, %380
  %382 = load i64, i64* @BTN_4, align 8
  %383 = call i32 @BIT_MASK(i64 %382)
  %384 = or i32 %381, %383
  %385 = load i64, i64* @BTN_5, align 8
  %386 = call i32 @BIT_MASK(i64 %385)
  %387 = or i32 %384, %386
  %388 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %389 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %388, i32 0, i32 1
  %390 = load i32*, i32** %389, align 8
  %391 = load i64, i64* @BTN_MISC, align 8
  %392 = call i64 @BIT_WORD(i64 %391)
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %387
  store i32 %395, i32* %393, align 4
  %396 = load i64, i64* @ABS_X, align 8
  %397 = call i32 @BIT_MASK(i64 %396)
  %398 = load i64, i64* @ABS_Y, align 8
  %399 = call i32 @BIT_MASK(i64 %398)
  %400 = or i32 %397, %399
  %401 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %402 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %401, i32 0, i32 2
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 0
  %405 = load i32, i32* %404, align 4
  %406 = or i32 %405, %400
  store i32 %406, i32* %404, align 4
  %407 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %408 = load i64, i64* @ABS_X, align 8
  %409 = load i32, i32* @MIMIO_XRANGE_MAX, align 4
  %410 = call i32 @input_set_abs_params(%struct.input_dev* %407, i64 %408, i32 0, i32 %409, i32 0, i32 0)
  %411 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %412 = load i64, i64* @ABS_Y, align 8
  %413 = load i32, i32* @MIMIO_YRANGE_MAX, align 4
  %414 = call i32 @input_set_abs_params(%struct.input_dev* %411, i64 %412, i32 0, i32 %413, i32 0, i32 0)
  %415 = load i64, i64* @ABS_MISC, align 8
  %416 = call i32 @BIT_MASK(i64 %415)
  %417 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %418 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %417, i32 0, i32 2
  %419 = load i32*, i32** %418, align 8
  %420 = load i64, i64* @ABS_MISC, align 8
  %421 = call i64 @BIT_WORD(i64 %420)
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = or i32 %423, %416
  store i32 %424, i32* %422, align 4
  %425 = load %struct.mimio*, %struct.mimio** %9, align 8
  %426 = getelementptr inbounds %struct.mimio, %struct.mimio* %425, i32 0, i32 2
  %427 = load %struct.input_dev*, %struct.input_dev** %426, align 8
  %428 = call i32 @input_register_device(%struct.input_dev* %427)
  store i32 %428, i32* %13, align 4
  %429 = load i32, i32* %13, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %440

431:                                              ; preds = %370
  %432 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %433 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %432, i32 0, i32 0
  %434 = load i32, i32* %13, align 4
  %435 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %433, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %434)
  %436 = load %struct.mimio*, %struct.mimio** %9, align 8
  %437 = call i32 @mimio_dealloc(%struct.mimio* %436)
  %438 = load i32, i32* @EIO, align 4
  %439 = sub nsw i32 0, %438
  store i32 %439, i32* %3, align 4
  br label %510

440:                                              ; preds = %370
  %441 = load %struct.mimio*, %struct.mimio** %9, align 8
  %442 = getelementptr inbounds %struct.mimio, %struct.mimio* %441, i32 0, i32 2
  %443 = load %struct.input_dev*, %struct.input_dev** %442, align 8
  %444 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %443, i32 0, i32 5
  %445 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %446 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %449 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %448, i32 0, i32 6
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* %13, align 4
  %452 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %444, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %447, i32 %450, i32 %451)
  %453 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %454 = load %struct.mimio*, %struct.mimio** %9, align 8
  %455 = call i32 @usb_set_intfdata(%struct.usb_interface* %453, %struct.mimio* %454)
  %456 = load %struct.mimio*, %struct.mimio** %9, align 8
  %457 = getelementptr inbounds %struct.mimio, %struct.mimio* %456, i32 0, i32 0
  store i32 1, i32* %457, align 8
  %458 = load %struct.mimio*, %struct.mimio** %9, align 8
  %459 = getelementptr inbounds %struct.mimio, %struct.mimio* %458, i32 0, i32 5
  %460 = load %struct.usb_device*, %struct.usb_device** %459, align 8
  %461 = load %struct.mimio*, %struct.mimio** %9, align 8
  %462 = getelementptr inbounds %struct.mimio, %struct.mimio* %461, i32 0, i32 4
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_22__*, %struct.TYPE_22__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %464, i32 0, i32 0
  store %struct.usb_device* %460, %struct.usb_device** %465, align 8
  %466 = load %struct.mimio*, %struct.mimio** %9, align 8
  %467 = getelementptr inbounds %struct.mimio, %struct.mimio* %466, i32 0, i32 4
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_22__*, %struct.TYPE_22__** %468, align 8
  %470 = load i32, i32* @GFP_KERNEL, align 4
  %471 = call i32 @usb_submit_urb(%struct.TYPE_22__* %469, i32 %470)
  store i32 %471, i32* %13, align 4
  %472 = load i32, i32* %13, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %485

474:                                              ; preds = %440
  %475 = load %struct.mimio*, %struct.mimio** %9, align 8
  %476 = getelementptr inbounds %struct.mimio, %struct.mimio* %475, i32 0, i32 2
  %477 = load %struct.input_dev*, %struct.input_dev** %476, align 8
  %478 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %477, i32 0, i32 5
  %479 = load i32, i32* %13, align 4
  %480 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %478, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %479)
  %481 = load %struct.mimio*, %struct.mimio** %9, align 8
  %482 = call i32 @mimio_dealloc(%struct.mimio* %481)
  %483 = load i32, i32* @EIO, align 4
  %484 = sub nsw i32 0, %483
  store i32 %484, i32* %3, align 4
  br label %510

485:                                              ; preds = %440
  %486 = call i32 @msleep(i32 1024)
  %487 = load %struct.mimio*, %struct.mimio** %9, align 8
  %488 = call i32 @mimio_greet(%struct.mimio* %487)
  store i32 %488, i32* %13, align 4
  %489 = load i32, i32* %13, align 4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %502

491:                                              ; preds = %485
  %492 = load %struct.mimio*, %struct.mimio** %9, align 8
  %493 = getelementptr inbounds %struct.mimio, %struct.mimio* %492, i32 0, i32 2
  %494 = load %struct.input_dev*, %struct.input_dev** %493, align 8
  %495 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %494, i32 0, i32 5
  %496 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %495, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %497 = load %struct.mimio*, %struct.mimio** %9, align 8
  %498 = getelementptr inbounds %struct.mimio, %struct.mimio* %497, i32 0, i32 1
  store i32 1, i32* %498, align 4
  %499 = load i32, i32* @mimio_rx_handler, align 4
  %500 = load %struct.mimio*, %struct.mimio** %9, align 8
  %501 = getelementptr inbounds %struct.mimio, %struct.mimio* %500, i32 0, i32 3
  store i32 %499, i32* %501, align 8
  br label %509

502:                                              ; preds = %485
  %503 = load %struct.mimio*, %struct.mimio** %9, align 8
  %504 = getelementptr inbounds %struct.mimio, %struct.mimio* %503, i32 0, i32 2
  %505 = load %struct.input_dev*, %struct.input_dev** %504, align 8
  %506 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %505, i32 0, i32 5
  %507 = load i32, i32* %13, align 4
  %508 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_dbg(%struct.TYPE_13__* %506, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %507)
  br label %509

509:                                              ; preds = %502, %491
  store i32 0, i32* %3, align 4
  br label %510

510:                                              ; preds = %509, %474, %431, %165, %133, %71, %28, %21
  %511 = load i32, i32* %3, align 4
  ret i32 %511
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.mimio* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @mimio_dealloc(%struct.mimio*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_22__*, %struct.usb_device*, i32, i32*, i32, i32, %struct.mimio*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.mimio*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BIT_MASK(i64) #1

declare dso_local i64 @BIT_WORD(i64) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.mimio*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mimio_greet(%struct.mimio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
