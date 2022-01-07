; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/frontier/extr_tranzport.c_usb_tranzport_probe.c"
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
%struct.usb_tranzport = type { i32, i32, %struct.usb_endpoint_descriptor*, i64, %struct.usb_endpoint_descriptor*, i64, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.usb_interface*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Interrupt in endpoint not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Interrupt out endpoint not found(using control endpoint instead)\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Interrupt in endpoint size is not 8!\0A\00", align 1
@ring_buffer_size = common dso_local global i64 0, align 8
@RING_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Couldn't allocate ring_buffer size %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Couldn't allocate interrupt_in_buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Couldn't allocate interrupt_in_urb\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Interrupt out endpoint size is not 8!)\0A\00", align 1
@write_buffer_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Couldn't allocate interrupt_out_buffer\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Couldn't allocate interrupt_out_urb\0A\00", align 1
@min_interrupt_in_interval = common dso_local global i64 0, align 8
@min_interrupt_out_interval = common dso_local global i64 0, align 8
@usb_tranzport_class = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@dev_attr_compress_wheel = common dso_local global i32 0, align 4
@dev_attr_enable = common dso_local global i32 0, align 4
@dev_attr_offline = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [56 x i8] c"Tranzport Device #%d now attached to major %d minor %d\0A\00", align 1
@USB_TRANZPORT_MINOR_BASE = common dso_local global i64 0, align 8
@USB_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_tranzport_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_tranzport_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_tranzport*, align 8
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
  store %struct.usb_tranzport* null, %struct.usb_tranzport** %7, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.usb_tranzport* @kzalloc(i32 104, i32 %17)
  store %struct.usb_tranzport* %18, %struct.usb_tranzport** %7, align 8
  %19 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %20 = icmp eq %struct.usb_tranzport* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 1
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %320

25:                                               ; preds = %2
  %26 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %27 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %26, i32 0, i32 14
  %28 = call i32 @init_MUTEX(i32* %27)
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %31 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %30, i32 0, i32 13
  store %struct.usb_interface* %29, %struct.usb_interface** %31, align 8
  %32 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %33 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %32, i32 0, i32 12
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %36 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %35, i32 0, i32 11
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
  %61 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %62 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %61, i32 0, i32 4
  store %struct.usb_endpoint_descriptor* %60, %struct.usb_endpoint_descriptor** %62, align 8
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %65 = call i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %69 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %70 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %69, i32 0, i32 2
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
  %76 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %77 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %76, i32 0, i32 4
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %77, align 8
  %79 = icmp eq %struct.usb_endpoint_descriptor* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %82 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %81, i32 0, i32 1
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %322

84:                                               ; preds = %75
  %85 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %86 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %85, i32 0, i32 2
  %87 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %86, align 8
  %88 = icmp eq %struct.usb_endpoint_descriptor* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %91 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %90, i32 0, i32 1
  %92 = call i32 @dev_warn(i32* %91, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %95 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %94, i32 0, i32 4
  %96 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %95, align 8
  %97 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @le16_to_cpu(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %102 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %104 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 8
  br i1 %106, label %107, label %111

107:                                              ; preds = %93
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %108, i32 0, i32 1
  %110 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
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
  %123 = add i64 %122, 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call i8* @kmalloc(i32 %124, i32 %125)
  %127 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %128 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %127, i32 0, i32 10
  store i8* %126, i8** %128, align 8
  %129 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %130 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %129, i32 0, i32 10
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %116
  %134 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %135 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %134, i32 0, i32 1
  %136 = load i32, i32* %11, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %322

138:                                              ; preds = %116
  %139 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %140 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @kmalloc(i32 %141, i32 %142)
  %144 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %145 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %144, i32 0, i32 9
  store i8* %143, i8** %145, align 8
  %146 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %147 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %146, i32 0, i32 9
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %138
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %151, i32 0, i32 1
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %152, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %322

154:                                              ; preds = %138
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @usb_alloc_urb(i32 0, i32 %155)
  %157 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %158 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %157, i32 0, i32 8
  store i8* %156, i8** %158, align 8
  %159 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %160 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %159, i32 0, i32 8
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %154
  %164 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %165 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %164, i32 0, i32 1
  %166 = call i32 (i32*, i8*, ...) @dev_err(i32* %165, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %322

167:                                              ; preds = %154
  %168 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %169 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %168, i32 0, i32 2
  %170 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %169, align 8
  %171 = icmp ne %struct.usb_endpoint_descriptor* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %174 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %173, i32 0, i32 2
  %175 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %174, align 8
  %176 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @le16_to_cpu(i32 %177)
  br label %184

179:                                              ; preds = %167
  %180 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %181 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  br label %184

184:                                              ; preds = %179, %172
  %185 = phi i8* [ %178, %172 ], [ %183, %179 ]
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %188 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %190 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 8
  br i1 %192, label %193, label %197

193:                                              ; preds = %184
  %194 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %195 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %194, i32 0, i32 1
  %196 = call i32 @dev_warn(i32* %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %197

197:                                              ; preds = %193, %184
  %198 = load i32, i32* @write_buffer_size, align 4
  %199 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %200 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %198, %201
  %203 = load i32, i32* @GFP_KERNEL, align 4
  %204 = call i8* @kmalloc(i32 %202, i32 %203)
  %205 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %206 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %205, i32 0, i32 7
  store i8* %204, i8** %206, align 8
  %207 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %208 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %207, i32 0, i32 7
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %197
  %212 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %213 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %212, i32 0, i32 1
  %214 = call i32 (i32*, i8*, ...) @dev_err(i32* %213, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %322

215:                                              ; preds = %197
  %216 = load i32, i32* @GFP_KERNEL, align 4
  %217 = call i8* @usb_alloc_urb(i32 0, i32 %216)
  %218 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %219 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %218, i32 0, i32 6
  store i8* %217, i8** %219, align 8
  %220 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %221 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %220, i32 0, i32 6
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %215
  %225 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %226 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %225, i32 0, i32 1
  %227 = call i32 (i32*, i8*, ...) @dev_err(i32* %226, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %322

228:                                              ; preds = %215
  %229 = load i64, i64* @min_interrupt_in_interval, align 8
  %230 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %231 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %230, i32 0, i32 4
  %232 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %231, align 8
  %233 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp sgt i64 %229, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %228
  %237 = load i64, i64* @min_interrupt_in_interval, align 8
  br label %244

238:                                              ; preds = %228
  %239 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %240 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %239, i32 0, i32 4
  %241 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %240, align 8
  %242 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  br label %244

244:                                              ; preds = %238, %236
  %245 = phi i64 [ %237, %236 ], [ %243, %238 ]
  %246 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %247 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %246, i32 0, i32 5
  store i64 %245, i64* %247, align 8
  %248 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %249 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %248, i32 0, i32 2
  %250 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %249, align 8
  %251 = icmp ne %struct.usb_endpoint_descriptor* %250, null
  br i1 %251, label %252, label %272

252:                                              ; preds = %244
  %253 = load i64, i64* @min_interrupt_out_interval, align 8
  %254 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %255 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %254, i32 0, i32 2
  %256 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %255, align 8
  %257 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp sgt i64 %253, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %252
  %261 = load i64, i64* @min_interrupt_out_interval, align 8
  br label %268

262:                                              ; preds = %252
  %263 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %264 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %263, i32 0, i32 2
  %265 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %264, align 8
  %266 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  br label %268

268:                                              ; preds = %262, %260
  %269 = phi i64 [ %261, %260 ], [ %267, %262 ]
  %270 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %271 = getelementptr inbounds %struct.usb_tranzport, %struct.usb_tranzport* %270, i32 0, i32 3
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %268, %244
  %273 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %274 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %275 = call i32 @usb_set_intfdata(%struct.usb_interface* %273, %struct.usb_tranzport* %274)
  %276 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %277 = call i32 @usb_register_dev(%struct.usb_interface* %276, i32* @usb_tranzport_class)
  store i32 %277, i32* %12, align 4
  %278 = load i32, i32* %12, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %272
  %281 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %282 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %281, i32 0, i32 1
  %283 = call i32 (i32*, i8*, ...) @dev_err(i32* %282, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %284 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %285 = call i32 @usb_set_intfdata(%struct.usb_interface* %284, %struct.usb_tranzport* null)
  br label %322

286:                                              ; preds = %272
  %287 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %288 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %287, i32 0, i32 1
  %289 = call i32 @device_create_file(i32* %288, i32* @dev_attr_compress_wheel)
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %286
  br label %322

293:                                              ; preds = %286
  %294 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %295 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %294, i32 0, i32 1
  %296 = call i32 @device_create_file(i32* %295, i32* @dev_attr_enable)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  br label %322

300:                                              ; preds = %293
  %301 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %302 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %301, i32 0, i32 1
  %303 = call i32 @device_create_file(i32* %302, i32* @dev_attr_offline)
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %12, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  br label %322

307:                                              ; preds = %300
  %308 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %309 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %308, i32 0, i32 1
  %310 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %311 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @USB_TRANZPORT_MINOR_BASE, align 8
  %314 = sub nsw i64 %312, %313
  %315 = load i32, i32* @USB_MAJOR, align 4
  %316 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %317 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @dev_info(i32* %309, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i64 %314, i32 %315, i64 %318)
  br label %320

320:                                              ; preds = %307, %21
  %321 = load i32, i32* %12, align 4
  store i32 %321, i32* %3, align 4
  br label %326

322:                                              ; preds = %306, %299, %292, %280, %224, %211, %163, %150, %133, %80
  %323 = load %struct.usb_tranzport*, %struct.usb_tranzport** %7, align 8
  %324 = call i32 @usb_tranzport_delete(%struct.usb_tranzport* %323)
  %325 = load i32, i32* %12, align 4
  store i32 %325, i32* %3, align 4
  br label %326

326:                                              ; preds = %322, %320
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_tranzport* @kzalloc(i32, i32) #1

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

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_tranzport*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, i64) #1

declare dso_local i32 @usb_tranzport_delete(%struct.usb_tranzport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
