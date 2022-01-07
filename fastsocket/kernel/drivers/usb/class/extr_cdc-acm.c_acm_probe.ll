; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm_wb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_17__*, %struct.acm_ru*, %struct.TYPE_17__*, %struct.acm_wb*, %struct.TYPE_11__, i32, %struct.acm_wb*, i32, i64, %struct.acm_wb*, %struct.usb_device*, %struct.acm_rb*, %struct.TYPE_18__, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.usb_interface*, %struct.usb_interface* }
%struct.acm_ru = type { %struct.TYPE_17__*, %struct.acm_wb* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.acm_rb = type { i8*, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.usb_interface = type { i32, %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i8*, %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_cdc_union_desc = type { i32, i32 }
%struct.usb_cdc_country_functional_desc = type { i32, i64, i32 }
%struct.acm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_17__*, %struct.acm_ru*, %struct.TYPE_17__*, %struct.acm*, %struct.TYPE_11__, i32, %struct.acm*, i32, i64, %struct.acm*, %struct.usb_device*, %struct.acm_rb*, %struct.TYPE_18__, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.usb_interface*, %struct.usb_interface* }

@SINGLE_RX_URB = common dso_local global i64 0, align 8
@ACM_NR = common dso_local global i32 0, align 4
@NO_UNION_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Weird descriptor references\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Seeking extra descriptors on endpoint\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Zero length descriptor references\0A\00", align 1
@USB_DT_CS_INTERFACE = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"skipping garbage\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"More than one union descriptor, skipping ...\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"This device cannot do calls on its own. It is not a modem.\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Ignoring descriptor: type %02x, length %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"No union descriptor, using call management descriptor\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"No union descriptor, giving up\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"No union descriptor, testing for castrated device\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"no interfaces\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"Separate call control interface. That is not fully supported.\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Control and data interfaces are not separated!\0A\00", align 1
@NO_CAP_LINE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"This needs exactly 3 endpoints\0A\00", align 1
@CDC_DATA_INTERFACE_TYPE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [38 x i8] c"Your device has switched interfaces.\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"The data interface isn't available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"The data interface has switched endpoints\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"interfaces are valid\00", align 1
@ACM_TTY_MINORS = common dso_local global i32 0, align 4
@acm_table = common dso_local global %struct.acm_wb** null, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"no more free acm devices\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"out of memory (acm kzalloc)\0A\00", align 1
@USB_CDC_CAP_LINE = common dso_local global i32 0, align 4
@acm_rx_tasklet = common dso_local global i32 0, align 4
@acm_softint = common dso_local global i32 0, align 4
@acm_port_ops = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [35 x i8] c"out of memory (ctrl buffer alloc)\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"out of memory (write buffer alloc)\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"out of memory (ctrlurb kmalloc)\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"out of memory (read urbs usb_alloc_urb)\0A\00", align 1
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [44 x i8] c"out of memory (read bufs usb_buffer_alloc)\0A\00", align 1
@ACM_NW = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [41 x i8] c"out of memory (write urbs usb_alloc_urb)\00", align 1
@acm_write_bulk = common dso_local global i32 0, align 4
@dev_attr_bmCapabilities = common dso_local global i32 0, align 4
@dev_attr_wCountryCodes = common dso_local global i32 0, align 4
@dev_attr_iCountryCodeRelDate = common dso_local global i32 0, align 4
@acm_ctrl_irq = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"ttyACM%d: USB ACM device\0A\00", align 1
@acm_driver = common dso_local global i32 0, align 4
@acm_tty_driver = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @acm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_cdc_union_desc*, align 8
  %7 = alloca %struct.usb_cdc_country_functional_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_endpoint_descriptor*, align 8
  %13 = alloca %struct.usb_endpoint_descriptor*, align 8
  %14 = alloca %struct.usb_endpoint_descriptor*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca %struct.acm*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.usb_endpoint_descriptor*, align 8
  %30 = alloca %struct.usb_interface*, align 8
  %31 = alloca %struct.usb_endpoint_descriptor*, align 8
  %32 = alloca %struct.acm_ru*, align 8
  %33 = alloca %struct.acm_rb*, align 8
  %34 = alloca %struct.acm_wb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %6, align 8
  store %struct.usb_cdc_country_functional_desc* null, %struct.usb_cdc_country_functional_desc** %7, align 8
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %12, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %13, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %14, align 8
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %45)
  store %struct.usb_device* %46, %struct.usb_device** %15, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %28, align 4
  %47 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %25, align 8
  %50 = load i64, i64* %25, align 8
  %51 = load i64, i64* @SINGLE_RX_URB, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  br label %56

54:                                               ; preds = %2
  %55 = load i32, i32* @ACM_NR, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 1, %53 ], [ %55, %54 ]
  store i32 %57, i32* %26, align 4
  %58 = load i64, i64* %25, align 8
  %59 = load i64, i64* @NO_UNION_NORMAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %63 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %62, i32 1)
  store %struct.usb_interface* %63, %struct.usb_interface** %11, align 8
  %64 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %65 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %64, i32 0)
  store %struct.usb_interface* %65, %struct.usb_interface** %10, align 8
  br label %349

66:                                               ; preds = %56
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %1023

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %121, label %78

78:                                               ; preds = %75
  %79 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %80 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %78
  %88 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %87
  %97 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %98 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %97, i32 0, i32 0
  %99 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %101 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %9, align 4
  %107 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %108 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %8, align 8
  br label %120

114:                                              ; preds = %87, %78
  %115 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 0
  %117 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %1023

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120, %75
  br label %122

122:                                              ; preds = %191, %121
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %205

125:                                              ; preds = %122
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* @USB_DT_CS_INTERFACE, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %135 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %134, i32 0, i32 0
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %191

137:                                              ; preds = %125
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  switch i32 %141, label %178 [
    i32 128, label %142
    i32 130, label %152
    i32 129, label %155
    i32 132, label %156
    i32 131, label %161
  ]

142:                                              ; preds = %137
  %143 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %144 = icmp ne %struct.usb_cdc_union_desc* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %147 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %146, i32 0, i32 0
  %148 = call i32 @dev_err(i32* %147, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %191

149:                                              ; preds = %142
  %150 = load i8*, i8** %8, align 8
  %151 = bitcast i8* %150 to %struct.usb_cdc_union_desc*
  store %struct.usb_cdc_union_desc* %151, %struct.usb_cdc_union_desc** %6, align 8
  br label %190

152:                                              ; preds = %137
  %153 = load i8*, i8** %8, align 8
  %154 = bitcast i8* %153 to %struct.usb_cdc_country_functional_desc*
  store %struct.usb_cdc_country_functional_desc* %154, %struct.usb_cdc_country_functional_desc** %7, align 8
  br label %190

155:                                              ; preds = %137
  br label %190

156:                                              ; preds = %137
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 3
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  store i32 %160, i32* %21, align 4
  br label %190

161:                                              ; preds = %137
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 3
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  store i32 %165, i32* %22, align 4
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 4
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  store i32 %169, i32* %23, align 4
  %170 = load i32, i32* %22, align 4
  %171 = and i32 %170, 3
  %172 = icmp ne i32 %171, 3
  br i1 %172, label %173, label %177

173:                                              ; preds = %161
  %174 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %175 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %174, i32 0, i32 0
  %176 = call i32 @dev_err(i32* %175, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  br label %177

177:                                              ; preds = %173, %161
  br label %190

178:                                              ; preds = %137
  %179 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %180 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %179, i32 0, i32 0
  %181 = load i8*, i8** %8, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %180, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %178, %177, %156, %155, %152, %149
  br label %191

191:                                              ; preds = %190, %145, %133
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %9, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %9, align 4
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = load i8*, i8** %8, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %8, align 8
  br label %122

205:                                              ; preds = %122
  %206 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %207 = icmp ne %struct.usb_cdc_union_desc* %206, null
  br i1 %207, label %239, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %23, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %213 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %212, i32 0, i32 0
  %214 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %213, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %215 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %216 = load i32, i32* %23, align 4
  store i32 %216, i32* %24, align 4
  %217 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %215, i32 %216)
  store %struct.usb_interface* %217, %struct.usb_interface** %11, align 8
  %218 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  store %struct.usb_interface* %218, %struct.usb_interface** %10, align 8
  br label %238

219:                                              ; preds = %208
  %220 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %221 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %220, i32 0, i32 1
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 3
  br i1 %226, label %227, label %233

227:                                              ; preds = %219
  %228 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %229 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %228, i32 0, i32 0
  %230 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %229, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %231 = load i32, i32* @ENODEV, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %3, align 4
  br label %1023

233:                                              ; preds = %219
  %234 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %235 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %234, i32 0, i32 0
  %236 = call i32 @dev_warn(i32* %235, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %28, align 4
  %237 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  store %struct.usb_interface* %237, %struct.usb_interface** %11, align 8
  store %struct.usb_interface* %237, %struct.usb_interface** %10, align 8
  br label %295

238:                                              ; preds = %211
  br label %262

239:                                              ; preds = %205
  %240 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %241 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %242 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %240, i32 %243)
  store %struct.usb_interface* %244, %struct.usb_interface** %10, align 8
  %245 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %246 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %6, align 8
  %247 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %24, align 4
  %249 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %245, i32 %248)
  store %struct.usb_interface* %249, %struct.usb_interface** %11, align 8
  %250 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %251 = icmp ne %struct.usb_interface* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %239
  %253 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %254 = icmp ne %struct.usb_interface* %253, null
  br i1 %254, label %261, label %255

255:                                              ; preds = %252, %239
  %256 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %257 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %256, i32 0, i32 0
  %258 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %257, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %259 = load i32, i32* @ENODEV, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %3, align 4
  br label %1023

261:                                              ; preds = %252
  br label %262

262:                                              ; preds = %261, %238
  %263 = load i32, i32* %24, align 4
  %264 = load i32, i32* %23, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %262
  %267 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %268 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %267, i32 0, i32 0
  %269 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %268, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0))
  br label %270

270:                                              ; preds = %266, %262
  %271 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %272 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %273 = icmp eq %struct.usb_interface* %271, %272
  br i1 %273, label %274, label %348

274:                                              ; preds = %270
  %275 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %276 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %275, i32 0, i32 0
  %277 = call i32 @dev_warn(i32* %276, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %28, align 4
  %278 = load i64, i64* @NO_CAP_LINE, align 8
  %279 = load i64, i64* %25, align 8
  %280 = or i64 %279, %278
  store i64 %280, i64* %25, align 8
  %281 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %282 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %281, i32 0, i32 1
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 3
  br i1 %287, label %288, label %294

288:                                              ; preds = %274
  %289 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %290 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %289, i32 0, i32 0
  %291 = call i32 @dev_err(i32* %290, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %3, align 4
  br label %1023

294:                                              ; preds = %274
  br label %295

295:                                              ; preds = %294, %233
  store i32 0, i32* %27, align 4
  br label %296

296:                                              ; preds = %332, %295
  %297 = load i32, i32* %27, align 4
  %298 = icmp slt i32 %297, 3
  br i1 %298, label %299, label %335

299:                                              ; preds = %296
  %300 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %301 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %300, i32 0, i32 1
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %303, align 8
  %305 = load i32, i32* %27, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %308, %struct.usb_endpoint_descriptor** %29, align 8
  %309 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %29, align 8
  %310 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %299
  %313 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %29, align 8
  store %struct.usb_endpoint_descriptor* %313, %struct.usb_endpoint_descriptor** %12, align 8
  br label %331

314:                                              ; preds = %299
  %315 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %29, align 8
  %316 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %29, align 8
  store %struct.usb_endpoint_descriptor* %319, %struct.usb_endpoint_descriptor** %14, align 8
  br label %330

320:                                              ; preds = %314
  %321 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %29, align 8
  %322 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %29, align 8
  store %struct.usb_endpoint_descriptor* %325, %struct.usb_endpoint_descriptor** %13, align 8
  br label %329

326:                                              ; preds = %320
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %3, align 4
  br label %1023

329:                                              ; preds = %324
  br label %330

330:                                              ; preds = %329, %318
  br label %331

331:                                              ; preds = %330, %312
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %27, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %27, align 4
  br label %296

335:                                              ; preds = %296
  %336 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %337 = icmp ne %struct.usb_endpoint_descriptor* %336, null
  br i1 %337, label %338, label %344

338:                                              ; preds = %335
  %339 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %340 = icmp ne %struct.usb_endpoint_descriptor* %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %343 = icmp ne %struct.usb_endpoint_descriptor* %342, null
  br i1 %343, label %347, label %344

344:                                              ; preds = %341, %338, %335
  %345 = load i32, i32* @ENODEV, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %3, align 4
  br label %1023

347:                                              ; preds = %341
  br label %445

348:                                              ; preds = %270
  br label %349

349:                                              ; preds = %348, %61
  %350 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %351 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %350, i32 0, i32 1
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @CDC_DATA_INTERFACE_TYPE, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %378

358:                                              ; preds = %349
  %359 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %360 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %359, i32 0, i32 1
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @CDC_DATA_INTERFACE_TYPE, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %374

367:                                              ; preds = %358
  %368 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %369 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %368, i32 0, i32 0
  %370 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %369, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %371 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  store %struct.usb_interface* %371, %struct.usb_interface** %30, align 8
  %372 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  store %struct.usb_interface* %372, %struct.usb_interface** %10, align 8
  %373 = load %struct.usb_interface*, %struct.usb_interface** %30, align 8
  store %struct.usb_interface* %373, %struct.usb_interface** %11, align 8
  br label %377

374:                                              ; preds = %358
  %375 = load i32, i32* @EINVAL, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %3, align 4
  br label %1023

377:                                              ; preds = %367
  br label %378

378:                                              ; preds = %377, %349
  %379 = load i32, i32* %28, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %388, label %381

381:                                              ; preds = %378
  %382 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %383 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %384 = icmp ne %struct.usb_interface* %382, %383
  br i1 %384, label %385, label %388

385:                                              ; preds = %381
  %386 = load i32, i32* @ENODEV, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %3, align 4
  br label %1023

388:                                              ; preds = %381, %378
  %389 = load i32, i32* %28, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %401, label %391

391:                                              ; preds = %388
  %392 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %393 = call i64 @usb_interface_claimed(%struct.usb_interface* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %391
  %396 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %397 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %396, i32 0, i32 0
  %398 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %397, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %399 = load i32, i32* @EBUSY, align 4
  %400 = sub nsw i32 0, %399
  store i32 %400, i32* %3, align 4
  br label %1023

401:                                              ; preds = %391, %388
  %402 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %403 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %402, i32 0, i32 1
  %404 = load %struct.TYPE_15__*, %struct.TYPE_15__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = icmp slt i32 %407, 2
  br i1 %408, label %409, label %412

409:                                              ; preds = %401
  %410 = load i32, i32* @EINVAL, align 4
  %411 = sub nsw i32 0, %410
  store i32 %411, i32* %3, align 4
  br label %1023

412:                                              ; preds = %401
  %413 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %414 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %413, i32 0, i32 1
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i64 0
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %419, %struct.usb_endpoint_descriptor** %12, align 8
  %420 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %421 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %420, i32 0, i32 1
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_14__*, %struct.TYPE_14__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %424, i64 0
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %426, %struct.usb_endpoint_descriptor** %13, align 8
  %427 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %428 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %427, i32 0, i32 1
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %429, i32 0, i32 0
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i64 1
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %433, %struct.usb_endpoint_descriptor** %14, align 8
  %434 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %435 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %444, label %437

437:                                              ; preds = %412
  %438 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %439 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %438, i32 0, i32 0
  %440 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %439, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %441 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  store %struct.usb_endpoint_descriptor* %441, %struct.usb_endpoint_descriptor** %31, align 8
  %442 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  store %struct.usb_endpoint_descriptor* %442, %struct.usb_endpoint_descriptor** %13, align 8
  %443 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %31, align 8
  store %struct.usb_endpoint_descriptor* %443, %struct.usb_endpoint_descriptor** %14, align 8
  br label %444

444:                                              ; preds = %437, %412
  br label %445

445:                                              ; preds = %444, %347
  %446 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %447

447:                                              ; preds = %461, %445
  %448 = load i32, i32* %17, align 4
  %449 = load i32, i32* @ACM_TTY_MINORS, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %458

451:                                              ; preds = %447
  %452 = load %struct.acm_wb**, %struct.acm_wb*** @acm_table, align 8
  %453 = load i32, i32* %17, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.acm_wb*, %struct.acm_wb** %452, i64 %454
  %456 = load %struct.acm_wb*, %struct.acm_wb** %455, align 8
  %457 = icmp ne %struct.acm_wb* %456, null
  br label %458

458:                                              ; preds = %451, %447
  %459 = phi i1 [ false, %447 ], [ %457, %451 ]
  br i1 %459, label %460, label %464

460:                                              ; preds = %458
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %17, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %17, align 4
  br label %447

464:                                              ; preds = %458
  %465 = load i32, i32* %17, align 4
  %466 = load i32, i32* @ACM_TTY_MINORS, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %474

468:                                              ; preds = %464
  %469 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %470 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %469, i32 0, i32 0
  %471 = call i32 @dev_err(i32* %470, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %472 = load i32, i32* @ENODEV, align 4
  %473 = sub nsw i32 0, %472
  store i32 %473, i32* %3, align 4
  br label %1023

474:                                              ; preds = %464
  %475 = load i32, i32* @GFP_KERNEL, align 4
  %476 = call %struct.acm_wb* @kzalloc(i32 224, i32 %475)
  %477 = bitcast %struct.acm_wb* %476 to %struct.acm*
  store %struct.acm* %477, %struct.acm** %16, align 8
  %478 = load %struct.acm*, %struct.acm** %16, align 8
  %479 = icmp eq %struct.acm* %478, null
  br i1 %479, label %480, label %484

480:                                              ; preds = %474
  %481 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %482 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %481, i32 0, i32 0
  %483 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %482, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  br label %1020

484:                                              ; preds = %474
  %485 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %486 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 4
  %488 = call i32 @le16_to_cpu(i32 %487)
  store i32 %488, i32* %18, align 4
  %489 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %490 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 4
  %492 = call i32 @le16_to_cpu(i32 %491)
  %493 = load i64, i64* %25, align 8
  %494 = load i64, i64* @SINGLE_RX_URB, align 8
  %495 = icmp eq i64 %493, %494
  %496 = zext i1 %495 to i64
  %497 = select i1 %495, i32 1, i32 2
  %498 = mul nsw i32 %492, %497
  store i32 %498, i32* %19, align 4
  %499 = load i32, i32* %28, align 4
  %500 = load %struct.acm*, %struct.acm** %16, align 8
  %501 = getelementptr inbounds %struct.acm, %struct.acm* %500, i32 0, i32 0
  store i32 %499, i32* %501, align 8
  %502 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %503 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @le16_to_cpu(i32 %504)
  %506 = mul nsw i32 %505, 20
  %507 = load %struct.acm*, %struct.acm** %16, align 8
  %508 = getelementptr inbounds %struct.acm, %struct.acm* %507, i32 0, i32 1
  store i32 %506, i32* %508, align 4
  %509 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %510 = load %struct.acm*, %struct.acm** %16, align 8
  %511 = getelementptr inbounds %struct.acm, %struct.acm* %510, i32 0, i32 33
  store %struct.usb_interface* %509, %struct.usb_interface** %511, align 8
  %512 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %513 = load %struct.acm*, %struct.acm** %16, align 8
  %514 = getelementptr inbounds %struct.acm, %struct.acm* %513, i32 0, i32 32
  store %struct.usb_interface* %512, %struct.usb_interface** %514, align 8
  %515 = load i32, i32* %17, align 4
  %516 = load %struct.acm*, %struct.acm** %16, align 8
  %517 = getelementptr inbounds %struct.acm, %struct.acm* %516, i32 0, i32 2
  store i32 %515, i32* %517, align 8
  %518 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %519 = load %struct.acm*, %struct.acm** %16, align 8
  %520 = getelementptr inbounds %struct.acm, %struct.acm* %519, i32 0, i32 20
  store %struct.usb_device* %518, %struct.usb_device** %520, align 8
  %521 = load i32, i32* %21, align 4
  %522 = load %struct.acm*, %struct.acm** %16, align 8
  %523 = getelementptr inbounds %struct.acm, %struct.acm* %522, i32 0, i32 3
  store i32 %521, i32* %523, align 4
  %524 = load i64, i64* %25, align 8
  %525 = load i64, i64* @NO_CAP_LINE, align 8
  %526 = and i64 %524, %525
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %535

528:                                              ; preds = %484
  %529 = load i32, i32* @USB_CDC_CAP_LINE, align 4
  %530 = xor i32 %529, -1
  %531 = load %struct.acm*, %struct.acm** %16, align 8
  %532 = getelementptr inbounds %struct.acm, %struct.acm* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 4
  %534 = and i32 %533, %530
  store i32 %534, i32* %532, align 4
  br label %535

535:                                              ; preds = %528, %484
  %536 = load i32, i32* %18, align 4
  %537 = load %struct.acm*, %struct.acm** %16, align 8
  %538 = getelementptr inbounds %struct.acm, %struct.acm* %537, i32 0, i32 4
  store i32 %536, i32* %538, align 8
  %539 = load i32, i32* %19, align 4
  %540 = load %struct.acm*, %struct.acm** %16, align 8
  %541 = getelementptr inbounds %struct.acm, %struct.acm* %540, i32 0, i32 5
  store i32 %539, i32* %541, align 4
  %542 = load i32, i32* %26, align 4
  %543 = load %struct.acm*, %struct.acm** %16, align 8
  %544 = getelementptr inbounds %struct.acm, %struct.acm* %543, i32 0, i32 6
  store i32 %542, i32* %544, align 8
  %545 = load i32, i32* @acm_rx_tasklet, align 4
  %546 = load %struct.acm*, %struct.acm** %16, align 8
  %547 = getelementptr inbounds %struct.acm, %struct.acm* %546, i32 0, i32 31
  %548 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %547, i32 0, i32 1
  store i32 %545, i32* %548, align 8
  %549 = load %struct.acm*, %struct.acm** %16, align 8
  %550 = ptrtoint %struct.acm* %549 to i64
  %551 = load %struct.acm*, %struct.acm** %16, align 8
  %552 = getelementptr inbounds %struct.acm, %struct.acm* %551, i32 0, i32 31
  %553 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %552, i32 0, i32 0
  store i64 %550, i64* %553, align 8
  %554 = load %struct.acm*, %struct.acm** %16, align 8
  %555 = getelementptr inbounds %struct.acm, %struct.acm* %554, i32 0, i32 30
  %556 = load i32, i32* @acm_softint, align 4
  %557 = call i32 @INIT_WORK(i32* %555, i32 %556)
  %558 = load %struct.acm*, %struct.acm** %16, align 8
  %559 = getelementptr inbounds %struct.acm, %struct.acm* %558, i32 0, i32 29
  %560 = call i32 @init_waitqueue_head(i32* %559)
  %561 = load %struct.acm*, %struct.acm** %16, align 8
  %562 = getelementptr inbounds %struct.acm, %struct.acm* %561, i32 0, i32 28
  %563 = call i32 @spin_lock_init(i32* %562)
  %564 = load %struct.acm*, %struct.acm** %16, align 8
  %565 = getelementptr inbounds %struct.acm, %struct.acm* %564, i32 0, i32 27
  %566 = call i32 @spin_lock_init(i32* %565)
  %567 = load %struct.acm*, %struct.acm** %16, align 8
  %568 = getelementptr inbounds %struct.acm, %struct.acm* %567, i32 0, i32 26
  %569 = call i32 @spin_lock_init(i32* %568)
  %570 = load %struct.acm*, %struct.acm** %16, align 8
  %571 = getelementptr inbounds %struct.acm, %struct.acm* %570, i32 0, i32 25
  %572 = call i32 @mutex_init(i32* %571)
  %573 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %574 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %575 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %573, i32 %576)
  %578 = load %struct.acm*, %struct.acm** %16, align 8
  %579 = getelementptr inbounds %struct.acm, %struct.acm* %578, i32 0, i32 24
  store i32 %577, i32* %579, align 8
  %580 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %581 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %580)
  %582 = load %struct.acm*, %struct.acm** %16, align 8
  %583 = getelementptr inbounds %struct.acm, %struct.acm* %582, i32 0, i32 23
  store i64 %581, i64* %583, align 8
  %584 = load %struct.acm*, %struct.acm** %16, align 8
  %585 = getelementptr inbounds %struct.acm, %struct.acm* %584, i32 0, i32 23
  %586 = load i64, i64* %585, align 8
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %594

588:                                              ; preds = %535
  %589 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %590 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 4
  %592 = load %struct.acm*, %struct.acm** %16, align 8
  %593 = getelementptr inbounds %struct.acm, %struct.acm* %592, i32 0, i32 7
  store i32 %591, i32* %593, align 4
  br label %594

594:                                              ; preds = %588, %535
  %595 = load %struct.acm*, %struct.acm** %16, align 8
  %596 = getelementptr inbounds %struct.acm, %struct.acm* %595, i32 0, i32 22
  %597 = call i32 @tty_port_init(%struct.TYPE_18__* %596)
  %598 = load %struct.acm*, %struct.acm** %16, align 8
  %599 = getelementptr inbounds %struct.acm, %struct.acm* %598, i32 0, i32 22
  %600 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %599, i32 0, i32 0
  store i32* @acm_port_ops, i32** %600, align 8
  %601 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %602 = load i32, i32* %18, align 4
  %603 = load i32, i32* @GFP_KERNEL, align 4
  %604 = load %struct.acm*, %struct.acm** %16, align 8
  %605 = getelementptr inbounds %struct.acm, %struct.acm* %604, i32 0, i32 9
  %606 = call i8* @usb_buffer_alloc(%struct.usb_device* %601, i32 %602, i32 %603, i32* %605)
  %607 = bitcast i8* %606 to i32*
  store i32* %607, i32** %20, align 8
  %608 = load i32*, i32** %20, align 8
  %609 = icmp ne i32* %608, null
  br i1 %609, label %614, label %610

610:                                              ; preds = %594
  %611 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %612 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %611, i32 0, i32 0
  %613 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %612, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  br label %1016

614:                                              ; preds = %594
  %615 = load i32*, i32** %20, align 8
  %616 = load %struct.acm*, %struct.acm** %16, align 8
  %617 = getelementptr inbounds %struct.acm, %struct.acm* %616, i32 0, i32 8
  store i32* %615, i32** %617, align 8
  %618 = load %struct.acm*, %struct.acm** %16, align 8
  %619 = bitcast %struct.acm* %618 to %struct.acm_wb*
  %620 = call i64 @acm_write_buffers_alloc(%struct.acm_wb* %619)
  %621 = icmp slt i64 %620, 0
  br i1 %621, label %622, label %626

622:                                              ; preds = %614
  %623 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %624 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %623, i32 0, i32 0
  %625 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %624, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  br label %1006

626:                                              ; preds = %614
  %627 = load i32, i32* @GFP_KERNEL, align 4
  %628 = call i8* @usb_alloc_urb(i32 0, i32 %627)
  %629 = bitcast i8* %628 to %struct.TYPE_17__*
  %630 = load %struct.acm*, %struct.acm** %16, align 8
  %631 = getelementptr inbounds %struct.acm, %struct.acm* %630, i32 0, i32 10
  store %struct.TYPE_17__* %629, %struct.TYPE_17__** %631, align 8
  %632 = load %struct.acm*, %struct.acm** %16, align 8
  %633 = getelementptr inbounds %struct.acm, %struct.acm* %632, i32 0, i32 10
  %634 = load %struct.TYPE_17__*, %struct.TYPE_17__** %633, align 8
  %635 = icmp ne %struct.TYPE_17__* %634, null
  br i1 %635, label %640, label %636

636:                                              ; preds = %626
  %637 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %638 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %637, i32 0, i32 0
  %639 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %638, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  br label %1002

640:                                              ; preds = %626
  store i32 0, i32* %27, align 4
  br label %641

641:                                              ; preds = %677, %640
  %642 = load i32, i32* %27, align 4
  %643 = load i32, i32* %26, align 4
  %644 = icmp slt i32 %642, %643
  br i1 %644, label %645, label %680

645:                                              ; preds = %641
  %646 = load %struct.acm*, %struct.acm** %16, align 8
  %647 = getelementptr inbounds %struct.acm, %struct.acm* %646, i32 0, i32 11
  %648 = load %struct.acm_ru*, %struct.acm_ru** %647, align 8
  %649 = load i32, i32* %27, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %648, i64 %650
  store %struct.acm_ru* %651, %struct.acm_ru** %32, align 8
  %652 = load i32, i32* @GFP_KERNEL, align 4
  %653 = call i8* @usb_alloc_urb(i32 0, i32 %652)
  %654 = bitcast i8* %653 to %struct.TYPE_17__*
  %655 = load %struct.acm_ru*, %struct.acm_ru** %32, align 8
  %656 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %655, i32 0, i32 0
  store %struct.TYPE_17__* %654, %struct.TYPE_17__** %656, align 8
  %657 = load %struct.acm_ru*, %struct.acm_ru** %32, align 8
  %658 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %657, i32 0, i32 0
  %659 = load %struct.TYPE_17__*, %struct.TYPE_17__** %658, align 8
  %660 = icmp eq %struct.TYPE_17__* %659, null
  br i1 %660, label %661, label %665

661:                                              ; preds = %645
  %662 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %663 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %662, i32 0, i32 0
  %664 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %663, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  br label %976

665:                                              ; preds = %645
  %666 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %667 = load %struct.acm_ru*, %struct.acm_ru** %32, align 8
  %668 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %667, i32 0, i32 0
  %669 = load %struct.TYPE_17__*, %struct.TYPE_17__** %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 4
  %672 = or i32 %671, %666
  store i32 %672, i32* %670, align 4
  %673 = load %struct.acm*, %struct.acm** %16, align 8
  %674 = bitcast %struct.acm* %673 to %struct.acm_wb*
  %675 = load %struct.acm_ru*, %struct.acm_ru** %32, align 8
  %676 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %675, i32 0, i32 1
  store %struct.acm_wb* %674, %struct.acm_wb** %676, align 8
  br label %677

677:                                              ; preds = %665
  %678 = load i32, i32* %27, align 4
  %679 = add nsw i32 %678, 1
  store i32 %679, i32* %27, align 4
  br label %641

680:                                              ; preds = %641
  store i32 0, i32* %27, align 4
  br label %681

681:                                              ; preds = %711, %680
  %682 = load i32, i32* %27, align 4
  %683 = load i32, i32* %26, align 4
  %684 = icmp slt i32 %682, %683
  br i1 %684, label %685, label %714

685:                                              ; preds = %681
  %686 = load %struct.acm*, %struct.acm** %16, align 8
  %687 = getelementptr inbounds %struct.acm, %struct.acm* %686, i32 0, i32 21
  %688 = load %struct.acm_rb*, %struct.acm_rb** %687, align 8
  %689 = load i32, i32* %27, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %688, i64 %690
  store %struct.acm_rb* %691, %struct.acm_rb** %33, align 8
  %692 = load %struct.acm*, %struct.acm** %16, align 8
  %693 = getelementptr inbounds %struct.acm, %struct.acm* %692, i32 0, i32 20
  %694 = load %struct.usb_device*, %struct.usb_device** %693, align 8
  %695 = load i32, i32* %19, align 4
  %696 = load i32, i32* @GFP_KERNEL, align 4
  %697 = load %struct.acm_rb*, %struct.acm_rb** %33, align 8
  %698 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %697, i32 0, i32 1
  %699 = call i8* @usb_buffer_alloc(%struct.usb_device* %694, i32 %695, i32 %696, i32* %698)
  %700 = load %struct.acm_rb*, %struct.acm_rb** %33, align 8
  %701 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %700, i32 0, i32 0
  store i8* %699, i8** %701, align 8
  %702 = load %struct.acm_rb*, %struct.acm_rb** %33, align 8
  %703 = getelementptr inbounds %struct.acm_rb, %struct.acm_rb* %702, i32 0, i32 0
  %704 = load i8*, i8** %703, align 8
  %705 = icmp ne i8* %704, null
  br i1 %705, label %710, label %706

706:                                              ; preds = %685
  %707 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %708 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %707, i32 0, i32 0
  %709 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %708, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0))
  br label %976

710:                                              ; preds = %685
  br label %711

711:                                              ; preds = %710
  %712 = load i32, i32* %27, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %27, align 4
  br label %681

714:                                              ; preds = %681
  store i32 0, i32* %27, align 4
  br label %715

715:                                              ; preds = %791, %714
  %716 = load i32, i32* %27, align 4
  %717 = load i32, i32* @ACM_NW, align 4
  %718 = icmp slt i32 %716, %717
  br i1 %718, label %719, label %794

719:                                              ; preds = %715
  %720 = load %struct.acm*, %struct.acm** %16, align 8
  %721 = getelementptr inbounds %struct.acm, %struct.acm* %720, i32 0, i32 13
  %722 = load %struct.acm*, %struct.acm** %721, align 8
  %723 = load i32, i32* %27, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds %struct.acm, %struct.acm* %722, i64 %724
  %726 = bitcast %struct.acm* %725 to %struct.acm_wb*
  store %struct.acm_wb* %726, %struct.acm_wb** %34, align 8
  %727 = load i32, i32* @GFP_KERNEL, align 4
  %728 = call i8* @usb_alloc_urb(i32 0, i32 %727)
  %729 = bitcast i8* %728 to %struct.TYPE_17__*
  %730 = load %struct.acm_wb*, %struct.acm_wb** %34, align 8
  %731 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %730, i32 0, i32 12
  store %struct.TYPE_17__* %729, %struct.TYPE_17__** %731, align 8
  %732 = load %struct.acm_wb*, %struct.acm_wb** %34, align 8
  %733 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %732, i32 0, i32 12
  %734 = load %struct.TYPE_17__*, %struct.TYPE_17__** %733, align 8
  %735 = icmp eq %struct.TYPE_17__* %734, null
  br i1 %735, label %736, label %740

736:                                              ; preds = %719
  %737 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %738 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %737, i32 0, i32 0
  %739 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %738, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0))
  br label %976

740:                                              ; preds = %719
  %741 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %742 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %741)
  %743 = icmp ne i64 %742, 0
  br i1 %743, label %744, label %763

744:                                              ; preds = %740
  %745 = load %struct.acm_wb*, %struct.acm_wb** %34, align 8
  %746 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %745, i32 0, i32 12
  %747 = load %struct.TYPE_17__*, %struct.TYPE_17__** %746, align 8
  %748 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %749 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %750 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %751 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %750, i32 0, i32 1
  %752 = load i32, i32* %751, align 4
  %753 = call i32 @usb_sndbulkpipe(%struct.usb_device* %749, i32 %752)
  %754 = load %struct.acm*, %struct.acm** %16, align 8
  %755 = getelementptr inbounds %struct.acm, %struct.acm* %754, i32 0, i32 1
  %756 = load i32, i32* %755, align 4
  %757 = load i32, i32* @acm_write_bulk, align 4
  %758 = load %struct.acm_wb*, %struct.acm_wb** %34, align 8
  %759 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %760 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %759, i32 0, i32 0
  %761 = load i32, i32* %760, align 4
  %762 = call i32 @usb_fill_int_urb(%struct.TYPE_17__* %747, %struct.usb_device* %748, i32 %753, i32* null, i32 %756, i32 %757, %struct.acm_wb* %758, i32 %761)
  br label %779

763:                                              ; preds = %740
  %764 = load %struct.acm_wb*, %struct.acm_wb** %34, align 8
  %765 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %764, i32 0, i32 12
  %766 = load %struct.TYPE_17__*, %struct.TYPE_17__** %765, align 8
  %767 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %768 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %769 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %14, align 8
  %770 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %769, i32 0, i32 1
  %771 = load i32, i32* %770, align 4
  %772 = call i32 @usb_sndbulkpipe(%struct.usb_device* %768, i32 %771)
  %773 = load %struct.acm*, %struct.acm** %16, align 8
  %774 = getelementptr inbounds %struct.acm, %struct.acm* %773, i32 0, i32 1
  %775 = load i32, i32* %774, align 4
  %776 = load i32, i32* @acm_write_bulk, align 4
  %777 = load %struct.acm_wb*, %struct.acm_wb** %34, align 8
  %778 = call i32 @usb_fill_bulk_urb(%struct.TYPE_17__* %766, %struct.usb_device* %767, i32 %772, i32* null, i32 %775, i32 %776, %struct.acm_wb* %777)
  br label %779

779:                                              ; preds = %763, %744
  %780 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %781 = load %struct.acm_wb*, %struct.acm_wb** %34, align 8
  %782 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %781, i32 0, i32 12
  %783 = load %struct.TYPE_17__*, %struct.TYPE_17__** %782, align 8
  %784 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %783, i32 0, i32 1
  %785 = load i32, i32* %784, align 4
  %786 = or i32 %785, %780
  store i32 %786, i32* %784, align 4
  %787 = load %struct.acm*, %struct.acm** %16, align 8
  %788 = bitcast %struct.acm* %787 to %struct.acm_wb*
  %789 = load %struct.acm_wb*, %struct.acm_wb** %34, align 8
  %790 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %789, i32 0, i32 19
  store %struct.acm_wb* %788, %struct.acm_wb** %790, align 8
  br label %791

791:                                              ; preds = %779
  %792 = load i32, i32* %27, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %27, align 4
  br label %715

794:                                              ; preds = %715
  %795 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %796 = load %struct.acm*, %struct.acm** %16, align 8
  %797 = bitcast %struct.acm* %796 to %struct.acm_wb*
  %798 = call i32 @usb_set_intfdata(%struct.usb_interface* %795, %struct.acm_wb* %797)
  %799 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %800 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %799, i32 0, i32 0
  %801 = call i32 @device_create_file(i32* %800, i32* @dev_attr_bmCapabilities)
  store i32 %801, i32* %27, align 4
  %802 = load i32, i32* %27, align 4
  %803 = icmp slt i32 %802, 0
  br i1 %803, label %804, label %805

804:                                              ; preds = %794
  br label %957

805:                                              ; preds = %794
  %806 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %7, align 8
  %807 = icmp ne %struct.usb_cdc_country_functional_desc* %806, null
  br i1 %807, label %808, label %870

808:                                              ; preds = %805
  %809 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %7, align 8
  %810 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %809, i32 0, i32 1
  %811 = load i64, i64* %810, align 8
  %812 = sub nsw i64 %811, 4
  %813 = load i32, i32* @GFP_KERNEL, align 4
  %814 = call %struct.acm_wb* @kmalloc(i64 %812, i32 %813)
  %815 = bitcast %struct.acm_wb* %814 to %struct.acm*
  %816 = load %struct.acm*, %struct.acm** %16, align 8
  %817 = getelementptr inbounds %struct.acm, %struct.acm* %816, i32 0, i32 16
  store %struct.acm* %815, %struct.acm** %817, align 8
  %818 = load %struct.acm*, %struct.acm** %16, align 8
  %819 = getelementptr inbounds %struct.acm, %struct.acm* %818, i32 0, i32 16
  %820 = load %struct.acm*, %struct.acm** %819, align 8
  %821 = icmp ne %struct.acm* %820, null
  br i1 %821, label %823, label %822

822:                                              ; preds = %808
  br label %871

823:                                              ; preds = %808
  %824 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %7, align 8
  %825 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %824, i32 0, i32 1
  %826 = load i64, i64* %825, align 8
  %827 = sub nsw i64 %826, 4
  %828 = load %struct.acm*, %struct.acm** %16, align 8
  %829 = getelementptr inbounds %struct.acm, %struct.acm* %828, i32 0, i32 18
  store i64 %827, i64* %829, align 8
  %830 = load %struct.acm*, %struct.acm** %16, align 8
  %831 = getelementptr inbounds %struct.acm, %struct.acm* %830, i32 0, i32 16
  %832 = load %struct.acm*, %struct.acm** %831, align 8
  %833 = bitcast %struct.acm* %832 to %struct.acm_wb*
  %834 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %7, align 8
  %835 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %834, i32 0, i32 2
  %836 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %7, align 8
  %837 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %836, i32 0, i32 1
  %838 = load i64, i64* %837, align 8
  %839 = sub nsw i64 %838, 4
  %840 = call i32 @memcpy(%struct.acm_wb* %833, i32* %835, i64 %839)
  %841 = load %struct.usb_cdc_country_functional_desc*, %struct.usb_cdc_country_functional_desc** %7, align 8
  %842 = getelementptr inbounds %struct.usb_cdc_country_functional_desc, %struct.usb_cdc_country_functional_desc* %841, i32 0, i32 0
  %843 = load i32, i32* %842, align 8
  %844 = load %struct.acm*, %struct.acm** %16, align 8
  %845 = getelementptr inbounds %struct.acm, %struct.acm* %844, i32 0, i32 17
  store i32 %843, i32* %845, align 8
  %846 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %847 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %846, i32 0, i32 0
  %848 = call i32 @device_create_file(i32* %847, i32* @dev_attr_wCountryCodes)
  store i32 %848, i32* %27, align 4
  %849 = load i32, i32* %27, align 4
  %850 = icmp slt i32 %849, 0
  br i1 %850, label %851, label %857

851:                                              ; preds = %823
  %852 = load %struct.acm*, %struct.acm** %16, align 8
  %853 = getelementptr inbounds %struct.acm, %struct.acm* %852, i32 0, i32 16
  %854 = load %struct.acm*, %struct.acm** %853, align 8
  %855 = bitcast %struct.acm* %854 to %struct.acm_wb*
  %856 = call i32 @kfree(%struct.acm_wb* %855)
  br label %871

857:                                              ; preds = %823
  %858 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %859 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %858, i32 0, i32 0
  %860 = call i32 @device_create_file(i32* %859, i32* @dev_attr_iCountryCodeRelDate)
  store i32 %860, i32* %27, align 4
  %861 = load i32, i32* %27, align 4
  %862 = icmp slt i32 %861, 0
  br i1 %862, label %863, label %869

863:                                              ; preds = %857
  %864 = load %struct.acm*, %struct.acm** %16, align 8
  %865 = getelementptr inbounds %struct.acm, %struct.acm* %864, i32 0, i32 16
  %866 = load %struct.acm*, %struct.acm** %865, align 8
  %867 = bitcast %struct.acm* %866 to %struct.acm_wb*
  %868 = call i32 @kfree(%struct.acm_wb* %867)
  br label %871

869:                                              ; preds = %857
  br label %870

870:                                              ; preds = %869, %805
  br label %871

871:                                              ; preds = %870, %863, %851, %822
  %872 = load %struct.acm*, %struct.acm** %16, align 8
  %873 = getelementptr inbounds %struct.acm, %struct.acm* %872, i32 0, i32 10
  %874 = load %struct.TYPE_17__*, %struct.TYPE_17__** %873, align 8
  %875 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %876 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %877 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %878 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %877, i32 0, i32 1
  %879 = load i32, i32* %878, align 4
  %880 = call i32 @usb_rcvintpipe(%struct.usb_device* %876, i32 %879)
  %881 = load %struct.acm*, %struct.acm** %16, align 8
  %882 = getelementptr inbounds %struct.acm, %struct.acm* %881, i32 0, i32 8
  %883 = load i32*, i32** %882, align 8
  %884 = load i32, i32* %18, align 4
  %885 = load i32, i32* @acm_ctrl_irq, align 4
  %886 = load %struct.acm*, %struct.acm** %16, align 8
  %887 = bitcast %struct.acm* %886 to %struct.acm_wb*
  %888 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %889 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %888, i32 0, i32 0
  %890 = load i32, i32* %889, align 4
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %892, label %896

892:                                              ; preds = %871
  %893 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %894 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %893, i32 0, i32 0
  %895 = load i32, i32* %894, align 4
  br label %897

896:                                              ; preds = %871
  br label %897

897:                                              ; preds = %896, %892
  %898 = phi i32 [ %895, %892 ], [ 255, %896 ]
  %899 = call i32 @usb_fill_int_urb(%struct.TYPE_17__* %874, %struct.usb_device* %875, i32 %880, i32* %883, i32 %884, i32 %885, %struct.acm_wb* %887, i32 %898)
  %900 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %901 = load %struct.acm*, %struct.acm** %16, align 8
  %902 = getelementptr inbounds %struct.acm, %struct.acm* %901, i32 0, i32 10
  %903 = load %struct.TYPE_17__*, %struct.TYPE_17__** %902, align 8
  %904 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %903, i32 0, i32 1
  %905 = load i32, i32* %904, align 4
  %906 = or i32 %905, %900
  store i32 %906, i32* %904, align 4
  %907 = load %struct.acm*, %struct.acm** %16, align 8
  %908 = getelementptr inbounds %struct.acm, %struct.acm* %907, i32 0, i32 9
  %909 = load i32, i32* %908, align 8
  %910 = load %struct.acm*, %struct.acm** %16, align 8
  %911 = getelementptr inbounds %struct.acm, %struct.acm* %910, i32 0, i32 10
  %912 = load %struct.TYPE_17__*, %struct.TYPE_17__** %911, align 8
  %913 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %912, i32 0, i32 0
  store i32 %909, i32* %913, align 4
  %914 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %915 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %914, i32 0, i32 0
  %916 = load i32, i32* %17, align 4
  %917 = call i32 @dev_info(i32* %915, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 %916)
  %918 = load %struct.acm*, %struct.acm** %16, align 8
  %919 = bitcast %struct.acm* %918 to %struct.acm_wb*
  %920 = load %struct.acm*, %struct.acm** %16, align 8
  %921 = getelementptr inbounds %struct.acm, %struct.acm* %920, i32 0, i32 15
  %922 = load i32, i32* %921, align 8
  %923 = call i32 @acm_set_control(%struct.acm_wb* %919, i32 %922)
  %924 = call i32 @cpu_to_le32(i32 9600)
  %925 = load %struct.acm*, %struct.acm** %16, align 8
  %926 = getelementptr inbounds %struct.acm, %struct.acm* %925, i32 0, i32 14
  %927 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %926, i32 0, i32 1
  store i32 %924, i32* %927, align 4
  %928 = load %struct.acm*, %struct.acm** %16, align 8
  %929 = getelementptr inbounds %struct.acm, %struct.acm* %928, i32 0, i32 14
  %930 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %929, i32 0, i32 0
  store i32 8, i32* %930, align 8
  %931 = load %struct.acm*, %struct.acm** %16, align 8
  %932 = bitcast %struct.acm* %931 to %struct.acm_wb*
  %933 = load %struct.acm*, %struct.acm** %16, align 8
  %934 = getelementptr inbounds %struct.acm, %struct.acm* %933, i32 0, i32 14
  %935 = call i32 @acm_set_line(%struct.acm_wb* %932, %struct.TYPE_11__* %934)
  %936 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %937 = load %struct.acm*, %struct.acm** %16, align 8
  %938 = bitcast %struct.acm* %937 to %struct.acm_wb*
  %939 = call i32 @usb_driver_claim_interface(i32* @acm_driver, %struct.usb_interface* %936, %struct.acm_wb* %938)
  %940 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %941 = load %struct.acm*, %struct.acm** %16, align 8
  %942 = bitcast %struct.acm* %941 to %struct.acm_wb*
  %943 = call i32 @usb_set_intfdata(%struct.usb_interface* %940, %struct.acm_wb* %942)
  %944 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %945 = call i32 @usb_get_intf(%struct.usb_interface* %944)
  %946 = load i32, i32* @acm_tty_driver, align 4
  %947 = load i32, i32* %17, align 4
  %948 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %949 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %948, i32 0, i32 0
  %950 = call i32 @tty_register_device(i32 %946, i32 %947, i32* %949)
  %951 = load %struct.acm*, %struct.acm** %16, align 8
  %952 = bitcast %struct.acm* %951 to %struct.acm_wb*
  %953 = load %struct.acm_wb**, %struct.acm_wb*** @acm_table, align 8
  %954 = load i32, i32* %17, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds %struct.acm_wb*, %struct.acm_wb** %953, i64 %955
  store %struct.acm_wb* %952, %struct.acm_wb** %956, align 8
  store i32 0, i32* %3, align 4
  br label %1023

957:                                              ; preds = %804
  store i32 0, i32* %27, align 4
  br label %958

958:                                              ; preds = %972, %957
  %959 = load i32, i32* %27, align 4
  %960 = load i32, i32* @ACM_NW, align 4
  %961 = icmp slt i32 %959, %960
  br i1 %961, label %962, label %975

962:                                              ; preds = %958
  %963 = load %struct.acm*, %struct.acm** %16, align 8
  %964 = getelementptr inbounds %struct.acm, %struct.acm* %963, i32 0, i32 13
  %965 = load %struct.acm*, %struct.acm** %964, align 8
  %966 = load i32, i32* %27, align 4
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds %struct.acm, %struct.acm* %965, i64 %967
  %969 = getelementptr inbounds %struct.acm, %struct.acm* %968, i32 0, i32 12
  %970 = load %struct.TYPE_17__*, %struct.TYPE_17__** %969, align 8
  %971 = call i32 @usb_free_urb(%struct.TYPE_17__* %970)
  br label %972

972:                                              ; preds = %962
  %973 = load i32, i32* %27, align 4
  %974 = add nsw i32 %973, 1
  store i32 %974, i32* %27, align 4
  br label %958

975:                                              ; preds = %958
  br label %976

976:                                              ; preds = %975, %736, %706, %661
  %977 = load %struct.acm*, %struct.acm** %16, align 8
  %978 = bitcast %struct.acm* %977 to %struct.acm_wb*
  %979 = call i32 @acm_read_buffers_free(%struct.acm_wb* %978)
  store i32 0, i32* %27, align 4
  br label %980

980:                                              ; preds = %994, %976
  %981 = load i32, i32* %27, align 4
  %982 = load i32, i32* %26, align 4
  %983 = icmp slt i32 %981, %982
  br i1 %983, label %984, label %997

984:                                              ; preds = %980
  %985 = load %struct.acm*, %struct.acm** %16, align 8
  %986 = getelementptr inbounds %struct.acm, %struct.acm* %985, i32 0, i32 11
  %987 = load %struct.acm_ru*, %struct.acm_ru** %986, align 8
  %988 = load i32, i32* %27, align 4
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %987, i64 %989
  %991 = getelementptr inbounds %struct.acm_ru, %struct.acm_ru* %990, i32 0, i32 0
  %992 = load %struct.TYPE_17__*, %struct.TYPE_17__** %991, align 8
  %993 = call i32 @usb_free_urb(%struct.TYPE_17__* %992)
  br label %994

994:                                              ; preds = %984
  %995 = load i32, i32* %27, align 4
  %996 = add nsw i32 %995, 1
  store i32 %996, i32* %27, align 4
  br label %980

997:                                              ; preds = %980
  %998 = load %struct.acm*, %struct.acm** %16, align 8
  %999 = getelementptr inbounds %struct.acm, %struct.acm* %998, i32 0, i32 10
  %1000 = load %struct.TYPE_17__*, %struct.TYPE_17__** %999, align 8
  %1001 = call i32 @usb_free_urb(%struct.TYPE_17__* %1000)
  br label %1002

1002:                                             ; preds = %997, %636
  %1003 = load %struct.acm*, %struct.acm** %16, align 8
  %1004 = bitcast %struct.acm* %1003 to %struct.acm_wb*
  %1005 = call i32 @acm_write_buffers_free(%struct.acm_wb* %1004)
  br label %1006

1006:                                             ; preds = %1002, %622
  %1007 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %1008 = load i32, i32* %18, align 4
  %1009 = load %struct.acm*, %struct.acm** %16, align 8
  %1010 = getelementptr inbounds %struct.acm, %struct.acm* %1009, i32 0, i32 8
  %1011 = load i32*, i32** %1010, align 8
  %1012 = load %struct.acm*, %struct.acm** %16, align 8
  %1013 = getelementptr inbounds %struct.acm, %struct.acm* %1012, i32 0, i32 9
  %1014 = load i32, i32* %1013, align 8
  %1015 = call i32 @usb_buffer_free(%struct.usb_device* %1007, i32 %1008, i32* %1011, i32 %1014)
  br label %1016

1016:                                             ; preds = %1006, %610
  %1017 = load %struct.acm*, %struct.acm** %16, align 8
  %1018 = bitcast %struct.acm* %1017 to %struct.acm_wb*
  %1019 = call i32 @kfree(%struct.acm_wb* %1018)
  br label %1020

1020:                                             ; preds = %1016, %480
  %1021 = load i32, i32* @ENOMEM, align 4
  %1022 = sub nsw i32 0, %1021
  store i32 %1022, i32* %3, align 4
  br label %1023

1023:                                             ; preds = %1020, %897, %468, %409, %395, %385, %374, %344, %326, %288, %255, %227, %114, %69
  %1024 = load i32, i32* %3, align 4
  ret i32 %1024
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_interface_claimed(%struct.usb_interface*) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.acm_wb* @kzalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_18__*) #1

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i64 @acm_write_buffers_alloc(%struct.acm_wb*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_17__*, %struct.usb_device*, i32, i32*, i32, i32, %struct.acm_wb*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_17__*, %struct.usb_device*, i32, i32*, i32, i32, %struct.acm_wb*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.acm_wb*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local %struct.acm_wb* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.acm_wb*, i32*, i64) #1

declare dso_local i32 @kfree(%struct.acm_wb*) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @acm_set_control(%struct.acm_wb*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @acm_set_line(%struct.acm_wb*, %struct.TYPE_11__*) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, %struct.acm_wb*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @tty_register_device(i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_17__*) #1

declare dso_local i32 @acm_read_buffers_free(%struct.acm_wb*) #1

declare dso_local i32 @acm_write_buffers_free(%struct.acm_wb*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
