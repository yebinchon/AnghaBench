; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_alphatrack.c_usb_alphatrack_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_alphatrack.c_usb_alphatrack_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i64, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.usb_alphatrack = type { i32, i32, i32, %struct.usb_endpoint_descriptor*, i64, %struct.usb_endpoint_descriptor*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.usb_interface*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Interrupt in endpoint not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Interrupt out endpoint not found(using control endpoint instead)\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Interrupt in endpoint size is not 64!\0A\00", align 1
@ring_buffer_size = common dso_local global i64 0, align 8
@RING_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"Couldn't allocate input ring_buffer of size %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Couldn't allocate interrupt_in_buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Couldn't allocate old buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Couldn't allocate interrupt_in_urb\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Interrupt out endpoint size is not 64!)\0A\00", align 1
@write_buffer_size = common dso_local global i64 0, align 8
@WRITE_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"Couldn't allocate interrupt_out_buffer\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Couldn't allocate write_buffer \0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Couldn't allocate interrupt_out_urb\0A\00", align 1
@min_interrupt_in_interval = common dso_local global i64 0, align 8
@min_interrupt_out_interval = common dso_local global i64 0, align 8
@usb_alphatrack_class = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Alphatrack Device #%d now attached to major %d minor %d\0A\00", align 1
@USB_ALPHATRACK_MINOR_BASE = common dso_local global i64 0, align 8
@USB_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_alphatrack_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_alphatrack_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_alphatrack*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  store %struct.usb_alphatrack* null, %struct.usb_alphatrack** %7, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.usb_alphatrack* @kzalloc(i32 128, i32 %17)
  store %struct.usb_alphatrack* %18, %struct.usb_alphatrack** %7, align 8
  %19 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %20 = icmp eq %struct.usb_alphatrack* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 1
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %342

25:                                               ; preds = %2
  %26 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %27 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %26, i32 0, i32 17
  %28 = call i32 @init_MUTEX(i32* %27)
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %31 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %30, i32 0, i32 16
  store %struct.usb_interface* %29, %struct.usb_interface** %31, align 8
  %32 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %33 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %32, i32 0, i32 15
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %36 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %35, i32 0, i32 14
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 2
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %39, align 8
  store %struct.usb_host_interface* %40, %struct.usb_host_interface** %8, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %72, %25
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %44 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %41
  %49 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %50 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %55, %struct.usb_endpoint_descriptor** %9, align 8
  %56 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %57 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %61 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %62 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %61, i32 0, i32 5
  store %struct.usb_endpoint_descriptor* %60, %struct.usb_endpoint_descriptor** %62, align 8
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %65 = call i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %69 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %70 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %69, i32 0, i32 3
  store %struct.usb_endpoint_descriptor* %68, %struct.usb_endpoint_descriptor** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %41

75:                                               ; preds = %41
  %76 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %77 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %76, i32 0, i32 5
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %77, align 8
  %79 = icmp eq %struct.usb_endpoint_descriptor* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %82 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %81, i32 0, i32 1
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %344

84:                                               ; preds = %75
  %85 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %86 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %85, i32 0, i32 3
  %87 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %86, align 8
  %88 = icmp eq %struct.usb_endpoint_descriptor* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %91 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %90, i32 0, i32 1
  %92 = call i32 @dev_warn(i32* %91, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %95 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %94, i32 0, i32 5
  %96 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %95, align 8
  %97 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @le16_to_cpu(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %102 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %104 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 64
  br i1 %106, label %107, label %111

107:                                              ; preds = %93
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %108, i32 0, i32 1
  %110 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %107, %93
  %112 = load i64, i64* @ring_buffer_size, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i64, i64* @RING_BUFFER_SIZE, align 8
  store i64 %115, i64* @ring_buffer_size, align 8
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i64, i64* @ring_buffer_size, align 8
  %118 = load i64, i64* @RING_BUFFER_SIZE, align 8
  %119 = call i32 @min(i64 %117, i64 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i8* @kmalloc(i32 %123, i32 %124)
  %126 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %127 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %126, i32 0, i32 13
  store i8* %125, i8** %127, align 8
  %128 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %129 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %128, i32 0, i32 13
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %116
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 1
  %135 = load i32, i32* %11, align 4
  %136 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  br label %344

137:                                              ; preds = %116
  %138 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %139 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @kmalloc(i32 %140, i32 %141)
  %143 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %144 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %143, i32 0, i32 12
  store i8* %142, i8** %144, align 8
  %145 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %146 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %145, i32 0, i32 12
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %137
  %150 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %151 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %150, i32 0, i32 1
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %344

153:                                              ; preds = %137
  %154 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %155 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @kmalloc(i32 %156, i32 %157)
  %159 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %160 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %159, i32 0, i32 11
  store i8* %158, i8** %160, align 8
  %161 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %162 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %161, i32 0, i32 11
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %153
  %166 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %167 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %166, i32 0, i32 1
  %168 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %344

169:                                              ; preds = %153
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i8* @usb_alloc_urb(i32 0, i32 %170)
  %172 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %173 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %172, i32 0, i32 10
  store i8* %171, i8** %173, align 8
  %174 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %175 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %174, i32 0, i32 10
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %169
  %179 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %180 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %179, i32 0, i32 1
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %344

182:                                              ; preds = %169
  %183 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %184 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %183, i32 0, i32 3
  %185 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %184, align 8
  %186 = icmp ne %struct.usb_endpoint_descriptor* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %189 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %188, i32 0, i32 3
  %190 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %189, align 8
  %191 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @le16_to_cpu(i32 %192)
  br label %199

194:                                              ; preds = %182
  %195 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %196 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  br label %199

199:                                              ; preds = %194, %187
  %200 = phi i8* [ %193, %187 ], [ %198, %194 ]
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %203 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %205 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 64
  br i1 %207, label %208, label %212

208:                                              ; preds = %199
  %209 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %210 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %209, i32 0, i32 1
  %211 = call i32 @dev_warn(i32* %210, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %212

212:                                              ; preds = %208, %199
  %213 = load i64, i64* @write_buffer_size, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i64, i64* @WRITE_BUFFER_SIZE, align 8
  store i64 %216, i64* @write_buffer_size, align 8
  br label %217

217:                                              ; preds = %215, %212
  %218 = load i64, i64* @write_buffer_size, align 8
  %219 = load i64, i64* @WRITE_BUFFER_SIZE, align 8
  %220 = call i32 @min(i64 %218, i64 %219)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %223 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %221, %224
  %226 = load i32, i32* @GFP_KERNEL, align 4
  %227 = call i8* @kmalloc(i32 %225, i32 %226)
  %228 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %229 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %228, i32 0, i32 9
  store i8* %227, i8** %229, align 8
  %230 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %231 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %230, i32 0, i32 9
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %238, label %234

234:                                              ; preds = %217
  %235 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %236 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %235, i32 0, i32 1
  %237 = call i32 (i32*, i8*, ...) @dev_err(i32* %236, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %344

238:                                              ; preds = %217
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = mul i64 4, %240
  %242 = trunc i64 %241 to i32
  %243 = load i32, i32* @GFP_KERNEL, align 4
  %244 = call i8* @kmalloc(i32 %242, i32 %243)
  %245 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %246 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %245, i32 0, i32 8
  store i8* %244, i8** %246, align 8
  %247 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %248 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %247, i32 0, i32 8
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %255, label %251

251:                                              ; preds = %238
  %252 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %253 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %252, i32 0, i32 1
  %254 = call i32 (i32*, i8*, ...) @dev_err(i32* %253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %344

255:                                              ; preds = %238
  %256 = load i32, i32* @GFP_KERNEL, align 4
  %257 = call i8* @usb_alloc_urb(i32 0, i32 %256)
  %258 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %259 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %258, i32 0, i32 7
  store i8* %257, i8** %259, align 8
  %260 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %261 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %260, i32 0, i32 7
  %262 = load i8*, i8** %261, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %268, label %264

264:                                              ; preds = %255
  %265 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %266 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %265, i32 0, i32 1
  %267 = call i32 (i32*, i8*, ...) @dev_err(i32* %266, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %344

268:                                              ; preds = %255
  %269 = load i64, i64* @min_interrupt_in_interval, align 8
  %270 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %271 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %270, i32 0, i32 5
  %272 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %271, align 8
  %273 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp sgt i64 %269, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %268
  %277 = load i64, i64* @min_interrupt_in_interval, align 8
  br label %284

278:                                              ; preds = %268
  %279 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %280 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %279, i32 0, i32 5
  %281 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %280, align 8
  %282 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  br label %284

284:                                              ; preds = %278, %276
  %285 = phi i64 [ %277, %276 ], [ %283, %278 ]
  %286 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %287 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %286, i32 0, i32 6
  store i64 %285, i64* %287, align 8
  %288 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %289 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %288, i32 0, i32 3
  %290 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %289, align 8
  %291 = icmp ne %struct.usb_endpoint_descriptor* %290, null
  br i1 %291, label %292, label %312

292:                                              ; preds = %284
  %293 = load i64, i64* @min_interrupt_out_interval, align 8
  %294 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %295 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %294, i32 0, i32 3
  %296 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %295, align 8
  %297 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp sgt i64 %293, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %292
  %301 = load i64, i64* @min_interrupt_out_interval, align 8
  br label %308

302:                                              ; preds = %292
  %303 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %304 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %303, i32 0, i32 3
  %305 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %304, align 8
  %306 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  br label %308

308:                                              ; preds = %302, %300
  %309 = phi i64 [ %301, %300 ], [ %307, %302 ]
  %310 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %311 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %310, i32 0, i32 4
  store i64 %309, i64* %311, align 8
  br label %312

312:                                              ; preds = %308, %284
  %313 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %314 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %315 = call i32 @usb_set_intfdata(%struct.usb_interface* %313, %struct.usb_alphatrack* %314)
  %316 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %317 = getelementptr inbounds %struct.usb_alphatrack, %struct.usb_alphatrack* %316, i32 0, i32 2
  %318 = call i32 @atomic_set(i32* %317, i32 0)
  %319 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %320 = call i32 @usb_register_dev(%struct.usb_interface* %319, i32* @usb_alphatrack_class)
  store i32 %320, i32* %12, align 4
  %321 = load i32, i32* %12, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %312
  %324 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %325 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %324, i32 0, i32 1
  %326 = call i32 (i32*, i8*, ...) @dev_err(i32* %325, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %327 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %328 = call i32 @usb_set_intfdata(%struct.usb_interface* %327, %struct.usb_alphatrack* null)
  br label %344

329:                                              ; preds = %312
  %330 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %331 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %330, i32 0, i32 1
  %332 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %333 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @USB_ALPHATRACK_MINOR_BASE, align 8
  %336 = sub nsw i64 %334, %335
  %337 = load i32, i32* @USB_MAJOR, align 4
  %338 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %339 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = call i32 @dev_info(i32* %331, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i64 %336, i32 %337, i64 %340)
  br label %342

342:                                              ; preds = %329, %21
  %343 = load i32, i32* %12, align 4
  store i32 %343, i32* %3, align 4
  br label %348

344:                                              ; preds = %323, %264, %251, %234, %178, %165, %149, %132, %80
  %345 = load %struct.usb_alphatrack*, %struct.usb_alphatrack** %7, align 8
  %346 = call i32 @usb_alphatrack_delete(%struct.usb_alphatrack* %345)
  %347 = load i32, i32* %12, align 4
  store i32 %347, i32* %3, align 4
  br label %348

348:                                              ; preds = %344, %342
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_alphatrack* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @init_MUTEX(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_alphatrack*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, i64) #1

declare dso_local i32 @usb_alphatrack_delete(%struct.usb_alphatrack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
