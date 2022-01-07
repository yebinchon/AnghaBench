; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ldusb.c_ld_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ldusb.c_ld_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i64, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ld_usb = type { i32, i32, %struct.usb_endpoint_descriptor*, i64, %struct.usb_endpoint_descriptor*, i64, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.usb_interface*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@USB_VENDOR_ID_LD = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LD_CASSY = common dso_local global i32 0, align 4
@USB_DEVICE_ID_LD_COM3LAB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't allocate string buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Interrupt in endpoint not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Interrupt out endpoint not found (using control endpoint instead)\0A\00", align 1
@ring_buffer_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Couldn't allocate ring_buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Couldn't allocate interrupt_in_buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Couldn't allocate interrupt_in_urb\0A\00", align 1
@write_buffer_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Couldn't allocate interrupt_out_buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Couldn't allocate interrupt_out_urb\0A\00", align 1
@min_interrupt_in_interval = common dso_local global i64 0, align 8
@min_interrupt_out_interval = common dso_local global i64 0, align 8
@ld_usb_class = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"LD USB Device #%d now attached to major %d minor %d\0A\00", align 1
@USB_LD_MINOR_BASE = common dso_local global i64 0, align 8
@USB_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ld_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ld_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.ld_usb*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  store %struct.ld_usb* null, %struct.ld_usb** %7, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ld_usb* @kzalloc(i32 104, i32 %17)
  store %struct.ld_usb* %18, %struct.ld_usb** %7, align 8
  %19 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %20 = icmp eq %struct.ld_usb* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 1
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %323

25:                                               ; preds = %2
  %26 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %27 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %26, i32 0, i32 15
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %30 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %29, i32 0, i32 14
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %34 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %33, i32 0, i32 13
  store %struct.usb_interface* %32, %struct.usb_interface** %34, align 8
  %35 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %36 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %35, i32 0, i32 12
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %39 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %38, i32 0, i32 11
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load i32, i32* @USB_VENDOR_ID_LD, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %25
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load i32, i32* @USB_DEVICE_ID_LD_CASSY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = load i32, i32* @USB_DEVICE_ID_LD_COM3LAB, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %56, %48
  %65 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = icmp sle i32 %69, 259
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kmalloc(i32 256, i32 %72)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %78 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %77, i32 0, i32 1
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %325

80:                                               ; preds = %71
  %81 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @usb_string(%struct.usb_device* %81, i32 255, i8* %82, i32 256)
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @kfree(i8* %84)
  br label %86

86:                                               ; preds = %80, %64, %56, %25
  %87 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %88 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %87, i32 0, i32 2
  %89 = load %struct.usb_host_interface*, %struct.usb_host_interface** %88, align 8
  store %struct.usb_host_interface* %89, %struct.usb_host_interface** %8, align 8
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %121, %86
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %93 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %90
  %98 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %99 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %104, %struct.usb_endpoint_descriptor** %9, align 8
  %105 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %106 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %110 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %111 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %110, i32 0, i32 4
  store %struct.usb_endpoint_descriptor* %109, %struct.usb_endpoint_descriptor** %111, align 8
  br label %112

112:                                              ; preds = %108, %97
  %113 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %114 = call i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %118 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %119 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %118, i32 0, i32 2
  store %struct.usb_endpoint_descriptor* %117, %struct.usb_endpoint_descriptor** %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %90

124:                                              ; preds = %90
  %125 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %126 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %125, i32 0, i32 4
  %127 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %126, align 8
  %128 = icmp eq %struct.usb_endpoint_descriptor* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %131 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %130, i32 0, i32 1
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %325

133:                                              ; preds = %124
  %134 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %135 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %134, i32 0, i32 2
  %136 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %135, align 8
  %137 = icmp eq %struct.usb_endpoint_descriptor* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %139, i32 0, i32 1
  %141 = call i32 @dev_warn(i32* %140, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %133
  %143 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %144 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %143, i32 0, i32 4
  %145 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %144, align 8
  %146 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @le16_to_cpu(i32 %147)
  %149 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %150 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @ring_buffer_size, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %154 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = add i64 8, %156
  %158 = mul i64 %152, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i8* @kmalloc(i32 %159, i32 %160)
  %162 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %163 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %162, i32 0, i32 10
  store i8* %161, i8** %163, align 8
  %164 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %165 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %164, i32 0, i32 10
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %142
  %169 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %170 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %169, i32 0, i32 1
  %171 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %325

172:                                              ; preds = %142
  %173 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %174 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i8* @kmalloc(i32 %175, i32 %176)
  %178 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %179 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %178, i32 0, i32 9
  store i8* %177, i8** %179, align 8
  %180 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %181 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %180, i32 0, i32 9
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %172
  %185 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %186 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %185, i32 0, i32 1
  %187 = call i32 @dev_err(i32* %186, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %325

188:                                              ; preds = %172
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = call i8* @usb_alloc_urb(i32 0, i32 %189)
  %191 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %192 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %191, i32 0, i32 8
  store i8* %190, i8** %192, align 8
  %193 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %194 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %193, i32 0, i32 8
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %188
  %198 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %199 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %198, i32 0, i32 1
  %200 = call i32 @dev_err(i32* %199, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %325

201:                                              ; preds = %188
  %202 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %203 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %202, i32 0, i32 2
  %204 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %203, align 8
  %205 = icmp ne %struct.usb_endpoint_descriptor* %204, null
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %208 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %207, i32 0, i32 2
  %209 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %208, align 8
  %210 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @le16_to_cpu(i32 %211)
  br label %218

213:                                              ; preds = %201
  %214 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %215 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  br label %218

218:                                              ; preds = %213, %206
  %219 = phi i32 [ %212, %206 ], [ %217, %213 ]
  %220 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %221 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* @write_buffer_size, align 4
  %223 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %224 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 %222, %225
  %227 = load i32, i32* @GFP_KERNEL, align 4
  %228 = call i8* @kmalloc(i32 %226, i32 %227)
  %229 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %230 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %229, i32 0, i32 7
  store i8* %228, i8** %230, align 8
  %231 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %232 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %231, i32 0, i32 7
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %218
  %236 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %237 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %236, i32 0, i32 1
  %238 = call i32 @dev_err(i32* %237, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %325

239:                                              ; preds = %218
  %240 = load i32, i32* @GFP_KERNEL, align 4
  %241 = call i8* @usb_alloc_urb(i32 0, i32 %240)
  %242 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %243 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %242, i32 0, i32 6
  store i8* %241, i8** %243, align 8
  %244 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %245 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %244, i32 0, i32 6
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %239
  %249 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %250 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %249, i32 0, i32 1
  %251 = call i32 @dev_err(i32* %250, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %325

252:                                              ; preds = %239
  %253 = load i64, i64* @min_interrupt_in_interval, align 8
  %254 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %255 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %254, i32 0, i32 4
  %256 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %255, align 8
  %257 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp sgt i64 %253, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %252
  %261 = load i64, i64* @min_interrupt_in_interval, align 8
  br label %268

262:                                              ; preds = %252
  %263 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %264 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %263, i32 0, i32 4
  %265 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %264, align 8
  %266 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  br label %268

268:                                              ; preds = %262, %260
  %269 = phi i64 [ %261, %260 ], [ %267, %262 ]
  %270 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %271 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %270, i32 0, i32 5
  store i64 %269, i64* %271, align 8
  %272 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %273 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %272, i32 0, i32 2
  %274 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %273, align 8
  %275 = icmp ne %struct.usb_endpoint_descriptor* %274, null
  br i1 %275, label %276, label %296

276:                                              ; preds = %268
  %277 = load i64, i64* @min_interrupt_out_interval, align 8
  %278 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %279 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %278, i32 0, i32 2
  %280 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %279, align 8
  %281 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp sgt i64 %277, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %276
  %285 = load i64, i64* @min_interrupt_out_interval, align 8
  br label %292

286:                                              ; preds = %276
  %287 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %288 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %287, i32 0, i32 2
  %289 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %288, align 8
  %290 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  br label %292

292:                                              ; preds = %286, %284
  %293 = phi i64 [ %285, %284 ], [ %291, %286 ]
  %294 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %295 = getelementptr inbounds %struct.ld_usb, %struct.ld_usb* %294, i32 0, i32 3
  store i64 %293, i64* %295, align 8
  br label %296

296:                                              ; preds = %292, %268
  %297 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %298 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %299 = call i32 @usb_set_intfdata(%struct.usb_interface* %297, %struct.ld_usb* %298)
  %300 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %301 = call i32 @usb_register_dev(%struct.usb_interface* %300, i32* @ld_usb_class)
  store i32 %301, i32* %12, align 4
  %302 = load i32, i32* %12, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %296
  %305 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %306 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %305, i32 0, i32 1
  %307 = call i32 @dev_err(i32* %306, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %308 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %309 = call i32 @usb_set_intfdata(%struct.usb_interface* %308, %struct.ld_usb* null)
  br label %325

310:                                              ; preds = %296
  %311 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %312 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %311, i32 0, i32 1
  %313 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %314 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @USB_LD_MINOR_BASE, align 8
  %317 = sub nsw i64 %315, %316
  %318 = load i32, i32* @USB_MAJOR, align 4
  %319 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %320 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @dev_info(i32* %312, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i64 %317, i32 %318, i64 %321)
  br label %323

323:                                              ; preds = %310, %21
  %324 = load i32, i32* %12, align 4
  store i32 %324, i32* %3, align 4
  br label %329

325:                                              ; preds = %304, %248, %235, %197, %184, %168, %129, %76
  %326 = load %struct.ld_usb*, %struct.ld_usb** %7, align 8
  %327 = call i32 @ld_usb_delete(%struct.ld_usb* %326)
  %328 = load i32, i32* %12, align 4
  store i32 %328, i32* %3, align 4
  br label %329

329:                                              ; preds = %325, %323
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.ld_usb* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ld_usb*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, i64) #1

declare dso_local i32 @ld_usb_delete(%struct.ld_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
