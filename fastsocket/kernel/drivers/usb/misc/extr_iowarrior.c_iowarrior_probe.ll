; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_iowarrior.c_iowarrior_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_iowarrior.c_iowarrior_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i64, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iowarrior = type { i64, i32, i32, i64, i32, %struct.usb_interface*, i8*, %struct.usb_endpoint_descriptor*, i8*, %struct.usb_device*, i32, %struct.usb_endpoint_descriptor*, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@USB_DEVICE_ID_CODEMERCS_IOW56 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't allocate interrupt_in_urb\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Couldn't allocate int_in_buffer\0A\00", align 1
@iowarrior_callback = common dso_local global i32 0, align 4
@MAX_INTERRUPT_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Couldn't allocate read_queue\0A\00", align 1
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@iowarrior_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"IOWarrior product=0x%x, serial=%s interface=%d now attached to iowarrior%d\0A\00", align 1
@IOWARRIOR_MINOR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @iowarrior_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iowarrior_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.iowarrior*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  store %struct.iowarrior* null, %struct.iowarrior** %7, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.iowarrior* @kzalloc(i32 120, i32 %16)
  store %struct.iowarrior* %17, %struct.iowarrior** %7, align 8
  %18 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %19 = icmp eq %struct.iowarrior* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %294

25:                                               ; preds = %2
  %26 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %27 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %26, i32 0, i32 19
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %30 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %29, i32 0, i32 18
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %33 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %32, i32 0, i32 17
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %36 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %35, i32 0, i32 16
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %39 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %38, i32 0, i32 15
  %40 = call i32 @atomic_set(i32* %39, i32 0)
  %41 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %42 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %41, i32 0, i32 14
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %45 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %44, i32 0, i32 13
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %48 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %47, i32 0, i32 12
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %52 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %51, i32 0, i32 9
  store %struct.usb_device* %50, %struct.usb_device** %52, align 8
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %55 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %54, i32 0, i32 5
  store %struct.usb_interface* %53, %struct.usb_interface** %55, align 8
  %56 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %57 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 2
  %58 = load %struct.usb_host_interface*, %struct.usb_host_interface** %57, align 8
  store %struct.usb_host_interface* %58, %struct.usb_host_interface** %8, align 8
  %59 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le16_to_cpu(i32 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %66 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %98, %25
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %70 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %67
  %75 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %76 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %81, %struct.usb_endpoint_descriptor** %9, align 8
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %83 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %87 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %88 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %87, i32 0, i32 7
  store %struct.usb_endpoint_descriptor* %86, %struct.usb_endpoint_descriptor** %88, align 8
  br label %89

89:                                               ; preds = %85, %74
  %90 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %91 = call i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %95 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %96 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %95, i32 0, i32 11
  store %struct.usb_endpoint_descriptor* %94, %struct.usb_endpoint_descriptor** %96, align 8
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %67

101:                                              ; preds = %67
  %102 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %103 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %102, i32 0, i32 7
  %104 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %103, align 8
  %105 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le16_to_cpu(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %110 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %112 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %111, i32 0, i32 5
  %113 = load %struct.usb_interface*, %struct.usb_interface** %112, align 8
  %114 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %113, i32 0, i32 2
  %115 = load %struct.usb_host_interface*, %struct.usb_host_interface** %114, align 8
  %116 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %101
  %121 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %122 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @USB_DEVICE_ID_CODEMERCS_IOW56, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %128 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %127, i32 0, i32 1
  store i32 7, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %120, %101
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i32 @usb_alloc_urb(i32 0, i32 %130)
  %132 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %133 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 8
  %134 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %135 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %129
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %139, i32 0, i32 0
  %141 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %290

142:                                              ; preds = %129
  %143 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %144 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call i8* @kmalloc(i32 %145, i32 %146)
  %148 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %149 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %148, i32 0, i32 8
  store i8* %147, i8** %149, align 8
  %150 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %151 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %150, i32 0, i32 8
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %142
  %155 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %156 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %155, i32 0, i32 0
  %157 = call i32 @dev_err(i32* %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %290

158:                                              ; preds = %142
  %159 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %160 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %159, i32 0, i32 10
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %163 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %162, i32 0, i32 9
  %164 = load %struct.usb_device*, %struct.usb_device** %163, align 8
  %165 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %166 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %165, i32 0, i32 9
  %167 = load %struct.usb_device*, %struct.usb_device** %166, align 8
  %168 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %169 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %168, i32 0, i32 7
  %170 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %169, align 8
  %171 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @usb_rcvintpipe(%struct.usb_device* %167, i32 %172)
  %174 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %175 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %174, i32 0, i32 8
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %178 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @iowarrior_callback, align 4
  %181 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %182 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %183 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %182, i32 0, i32 7
  %184 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %183, align 8
  %185 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @usb_fill_int_urb(i32 %161, %struct.usb_device* %164, i32 %173, i8* %176, i32 %179, i32 %180, %struct.iowarrior* %181, i32 %186)
  %188 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %189 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  %192 = load i32, i32* @MAX_INTERRUPT_BUFFER, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* @GFP_KERNEL, align 4
  %195 = call i8* @kmalloc(i32 %193, i32 %194)
  %196 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %197 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %196, i32 0, i32 6
  store i8* %195, i8** %197, align 8
  %198 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %199 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %198, i32 0, i32 6
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %158
  %203 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %204 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %203, i32 0, i32 0
  %205 = call i32 @dev_err(i32* %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %290

206:                                              ; preds = %158
  %207 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %208 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @memset(i32 %209, i32 0, i32 4)
  %211 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %212 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %213 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %217 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @usb_string(%struct.usb_device* %211, i32 %215, i32 %218, i32 4)
  %220 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %221 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @strlen(i32 %222)
  %224 = icmp ne i32 %223, 8
  br i1 %224, label %225, label %230

225:                                              ; preds = %206
  %226 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %227 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @memset(i32 %228, i32 0, i32 4)
  br label %230

230:                                              ; preds = %225, %206
  %231 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %232 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %231, i32 0, i32 5
  %233 = load %struct.usb_interface*, %struct.usb_interface** %232, align 8
  %234 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %233, i32 0, i32 2
  %235 = load %struct.usb_host_interface*, %struct.usb_host_interface** %234, align 8
  %236 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %230
  %241 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %242 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %243 = call i32 @usb_sndctrlpipe(%struct.usb_device* %242, i32 0)
  %244 = load i32, i32* @USB_TYPE_CLASS, align 4
  %245 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %248 = call i32 @usb_control_msg(%struct.usb_device* %241, i32 %243, i32 10, i32 %246, i32 0, i32 0, i32* null, i32 0, i32 %247)
  br label %249

249:                                              ; preds = %240, %230
  %250 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %251 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %250, i32 0, i32 2
  store i32 1, i32* %251, align 4
  %252 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %253 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %254 = call i32 @usb_set_intfdata(%struct.usb_interface* %252, %struct.iowarrior* %253)
  %255 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %256 = call i32 @usb_register_dev(%struct.usb_interface* %255, i32* @iowarrior_class)
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %249
  %260 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %261 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %260, i32 0, i32 0
  %262 = call i32 @dev_err(i32* %261, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %263 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %264 = call i32 @usb_set_intfdata(%struct.usb_interface* %263, %struct.iowarrior* null)
  br label %290

265:                                              ; preds = %249
  %266 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %267 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %270 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %269, i32 0, i32 3
  store i64 %268, i64* %270, align 8
  %271 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %272 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %271, i32 0, i32 0
  %273 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %274 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %277 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %280 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %284 = getelementptr inbounds %struct.iowarrior, %struct.iowarrior* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @IOWARRIOR_MINOR_BASE, align 8
  %287 = sub nsw i64 %285, %286
  %288 = call i32 @dev_info(i32* %272, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i64 %275, i32 %278, i64 %282, i64 %287)
  %289 = load i32, i32* %11, align 4
  store i32 %289, i32* %3, align 4
  br label %294

290:                                              ; preds = %259, %202, %154, %138
  %291 = load %struct.iowarrior*, %struct.iowarrior** %7, align 8
  %292 = call i32 @iowarrior_delete(%struct.iowarrior* %291)
  %293 = load i32, i32* %11, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %290, %265, %20
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.iowarrior* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i8*, i32, i32, %struct.iowarrior*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.iowarrior*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, i64, i64) #1

declare dso_local i32 @iowarrior_delete(%struct.iowarrior*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
