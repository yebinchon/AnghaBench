; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_wdm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-wdm.c_wdm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i64, i32, %struct.usb_host_interface*, %struct.TYPE_7__* }
%struct.usb_host_interface = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.wdm_device = type { i32, %struct.wdm_device*, %struct.wdm_device*, %struct.wdm_device*, %struct.TYPE_12__*, i8*, i8*, %struct.usb_interface*, %struct.TYPE_11__*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.usb_cdc_dmm_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"skipping garbage\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Finding maximum buffer length: %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Ignoring extra header, type %d, length %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@wdm_rxwork = common dso_local global i32 0, align 4
@wdm_int_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@wdm_class = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cdc-wdm%d: USB WDM device\0A\00", align 1
@WDM_MINOR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @wdm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.wdm_device*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca %struct.usb_cdc_dmm_desc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %321

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 1
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %74

46:                                               ; preds = %36
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %63 [
    i32 128, label %50
    i32 129, label %51
  ]

50:                                               ; preds = %46
  br label %73

51:                                               ; preds = %46
  %52 = load i32*, i32** %12, align 8
  %53 = bitcast i32* %52 to %struct.usb_cdc_dmm_desc*
  store %struct.usb_cdc_dmm_desc* %53, %struct.usb_cdc_dmm_desc** %11, align 8
  %54 = load %struct.usb_cdc_dmm_desc*, %struct.usb_cdc_dmm_desc** %11, align 8
  %55 = getelementptr inbounds %struct.usb_cdc_dmm_desc, %struct.usb_cdc_dmm_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le16_to_cpu(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 1
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %73

63:                                               ; preds = %46
  %64 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 1
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %63, %51, %50
  br label %74

74:                                               ; preds = %73, %42
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %12, align 8
  br label %33

86:                                               ; preds = %33
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.wdm_device* @kzalloc(i32 128, i32 %89)
  store %struct.wdm_device* %90, %struct.wdm_device** %8, align 8
  %91 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %92 = icmp ne %struct.wdm_device* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %321

94:                                               ; preds = %86
  %95 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %96 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %95, i32 0, i32 18
  %97 = call i32 @mutex_init(i32* %96)
  %98 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %99 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %98, i32 0, i32 17
  %100 = call i32 @mutex_init(i32* %99)
  %101 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %102 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %101, i32 0, i32 16
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %105 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %104, i32 0, i32 15
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %108 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %107, i32 0, i32 14
  %109 = call i32 @init_waitqueue_head(i32* %108)
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %112 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %113, i32 0, i32 2
  %115 = load %struct.usb_host_interface*, %struct.usb_host_interface** %114, align 8
  %116 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @cpu_to_le16(i32 %119)
  %121 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %122 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %121, i32 0, i32 13
  store i32 %120, i32* %122, align 4
  %123 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %124 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %125 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %124, i32 0, i32 7
  store %struct.usb_interface* %123, %struct.usb_interface** %125, align 8
  %126 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %127 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %126, i32 0, i32 12
  %128 = load i32, i32* @wdm_rxwork, align 4
  %129 = call i32 @INIT_WORK(i32* %127, i32 %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  %132 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %133 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %132, i32 0, i32 2
  %134 = load %struct.usb_host_interface*, %struct.usb_host_interface** %133, align 8
  store %struct.usb_host_interface* %134, %struct.usb_host_interface** %9, align 8
  %135 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %136 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %94
  br label %359

141:                                              ; preds = %94
  %142 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %143 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %146, %struct.usb_endpoint_descriptor** %10, align 8
  %147 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %148 = icmp ne %struct.usb_endpoint_descriptor* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %151 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %149, %141
  br label %359

154:                                              ; preds = %149
  %155 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %156 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @le16_to_cpu(i32 %157)
  %159 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %160 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  %161 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %162 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %166 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %165, i32 0, i32 10
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call i8* @kmalloc(i32 4, i32 %167)
  %169 = bitcast i8* %168 to %struct.wdm_device*
  %170 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %171 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %170, i32 0, i32 2
  store %struct.wdm_device* %169, %struct.wdm_device** %171, align 8
  %172 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %173 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %172, i32 0, i32 2
  %174 = load %struct.wdm_device*, %struct.wdm_device** %173, align 8
  %175 = icmp ne %struct.wdm_device* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %154
  br label %359

177:                                              ; preds = %154
  %178 = load i32, i32* @GFP_KERNEL, align 4
  %179 = call i8* @kmalloc(i32 4, i32 %178)
  %180 = bitcast i8* %179 to %struct.wdm_device*
  %181 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %182 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %181, i32 0, i32 1
  store %struct.wdm_device* %180, %struct.wdm_device** %182, align 8
  %183 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %184 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %183, i32 0, i32 1
  %185 = load %struct.wdm_device*, %struct.wdm_device** %184, align 8
  %186 = icmp ne %struct.wdm_device* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %177
  br label %359

188:                                              ; preds = %177
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = call i8* @usb_alloc_urb(i32 0, i32 %189)
  %191 = bitcast i8* %190 to %struct.TYPE_12__*
  %192 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %193 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %192, i32 0, i32 4
  store %struct.TYPE_12__* %191, %struct.TYPE_12__** %193, align 8
  %194 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %195 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %194, i32 0, i32 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = icmp ne %struct.TYPE_12__* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %188
  br label %359

199:                                              ; preds = %188
  %200 = load i32, i32* @GFP_KERNEL, align 4
  %201 = call i8* @usb_alloc_urb(i32 0, i32 %200)
  %202 = bitcast i8* %201 to %struct.TYPE_11__*
  %203 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %204 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %203, i32 0, i32 8
  store %struct.TYPE_11__* %202, %struct.TYPE_11__** %204, align 8
  %205 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %206 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %205, i32 0, i32 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = icmp ne %struct.TYPE_11__* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %199
  br label %359

210:                                              ; preds = %199
  %211 = load i32, i32* @GFP_KERNEL, align 4
  %212 = call i8* @usb_alloc_urb(i32 0, i32 %211)
  %213 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %214 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %213, i32 0, i32 11
  store i8* %212, i8** %214, align 8
  %215 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %216 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %215, i32 0, i32 11
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %210
  br label %359

220:                                              ; preds = %210
  %221 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %222 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @GFP_KERNEL, align 4
  %225 = call i8* @kmalloc(i32 %223, i32 %224)
  %226 = bitcast i8* %225 to %struct.wdm_device*
  %227 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %228 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %227, i32 0, i32 3
  store %struct.wdm_device* %226, %struct.wdm_device** %228, align 8
  %229 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %230 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %229, i32 0, i32 3
  %231 = load %struct.wdm_device*, %struct.wdm_device** %230, align 8
  %232 = icmp ne %struct.wdm_device* %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %220
  br label %359

234:                                              ; preds = %220
  %235 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %236 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %235)
  %237 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %238 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %237, i32 0, i32 6
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* @GFP_KERNEL, align 4
  %241 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %242 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %241, i32 0, i32 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = call i8* @usb_buffer_alloc(%struct.usb_device* %236, i8* %239, i32 %240, i32* %244)
  %246 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %247 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %246, i32 0, i32 5
  store i8* %245, i8** %247, align 8
  %248 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %249 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %248, i32 0, i32 5
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %234
  br label %359

253:                                              ; preds = %234
  %254 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %255 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %254)
  %256 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %257 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %256, i32 0, i32 10
  %258 = load i8*, i8** %257, align 8
  %259 = load i32, i32* @GFP_KERNEL, align 4
  %260 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %261 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %260, i32 0, i32 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = call i8* @usb_buffer_alloc(%struct.usb_device* %255, i8* %258, i32 %259, i32* %263)
  %265 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %266 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %265, i32 0, i32 9
  store i8* %264, i8** %266, align 8
  %267 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %268 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %267, i32 0, i32 9
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %253
  br label %342

272:                                              ; preds = %253
  %273 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %274 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %273, i32 0, i32 4
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %277 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %276)
  %278 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %279 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %278)
  %280 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %281 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @usb_rcvintpipe(%struct.usb_device* %279, i32 %282)
  %284 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %285 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %284, i32 0, i32 5
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %288 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %287, i32 0, i32 6
  %289 = load i8*, i8** %288, align 8
  %290 = load i32, i32* @wdm_int_callback, align 4
  %291 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %292 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %293 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @usb_fill_int_urb(%struct.TYPE_12__* %275, %struct.usb_device* %277, i32 %283, i8* %286, i8* %289, i32 %290, %struct.wdm_device* %291, i32 %294)
  %296 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %297 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %298 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %297, i32 0, i32 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %296
  store i32 %302, i32* %300, align 4
  %303 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %304 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %305 = call i32 @usb_set_intfdata(%struct.usb_interface* %303, %struct.wdm_device* %304)
  %306 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %307 = call i32 @usb_register_dev(%struct.usb_interface* %306, i32* @wdm_class)
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %272
  br label %323

311:                                              ; preds = %272
  %312 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %313 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %312, i32 0, i32 1
  %314 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %315 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @WDM_MINOR_BASE, align 8
  %318 = sub nsw i64 %316, %317
  %319 = call i32 @dev_info(i32* %313, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %318)
  br label %320

320:                                              ; preds = %311
  br label %321

321:                                              ; preds = %320, %93, %31
  %322 = load i32, i32* %6, align 4
  store i32 %322, i32* %3, align 4
  br label %377

323:                                              ; preds = %310
  %324 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %325 = call i32 @usb_set_intfdata(%struct.usb_interface* %324, %struct.wdm_device* null)
  %326 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %327 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %326, i32 0, i32 7
  %328 = load %struct.usb_interface*, %struct.usb_interface** %327, align 8
  %329 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %328)
  %330 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %331 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %330, i32 0, i32 10
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %334 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %333, i32 0, i32 9
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %337 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %336, i32 0, i32 8
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @usb_buffer_free(%struct.usb_device* %329, i8* %332, i8* %335, i32 %340)
  br label %342

342:                                              ; preds = %323, %271
  %343 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %344 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %343, i32 0, i32 7
  %345 = load %struct.usb_interface*, %struct.usb_interface** %344, align 8
  %346 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %345)
  %347 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %348 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %347, i32 0, i32 6
  %349 = load i8*, i8** %348, align 8
  %350 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %351 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %350, i32 0, i32 5
  %352 = load i8*, i8** %351, align 8
  %353 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %354 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %353, i32 0, i32 4
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @usb_buffer_free(%struct.usb_device* %346, i8* %349, i8* %352, i32 %357)
  br label %359

359:                                              ; preds = %342, %252, %233, %219, %209, %198, %187, %176, %153, %140
  %360 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %361 = call i32 @free_urbs(%struct.wdm_device* %360)
  %362 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %363 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %362, i32 0, i32 3
  %364 = load %struct.wdm_device*, %struct.wdm_device** %363, align 8
  %365 = call i32 @kfree(%struct.wdm_device* %364)
  %366 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %367 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %366, i32 0, i32 2
  %368 = load %struct.wdm_device*, %struct.wdm_device** %367, align 8
  %369 = call i32 @kfree(%struct.wdm_device* %368)
  %370 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %371 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %370, i32 0, i32 1
  %372 = load %struct.wdm_device*, %struct.wdm_device** %371, align 8
  %373 = call i32 @kfree(%struct.wdm_device* %372)
  %374 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %375 = call i32 @kfree(%struct.wdm_device* %374)
  %376 = load i32, i32* %6, align 4
  store i32 %376, i32* %3, align 4
  br label %377

377:                                              ; preds = %359, %321
  %378 = load i32, i32* %3, align 4
  ret i32 %378
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local %struct.wdm_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i8*, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_12__*, %struct.usb_device*, i32, i8*, i8*, i32, %struct.wdm_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.wdm_device*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i8*, i8*, i32) #1

declare dso_local i32 @free_urbs(%struct.wdm_device*) #1

declare dso_local i32 @kfree(%struct.wdm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
