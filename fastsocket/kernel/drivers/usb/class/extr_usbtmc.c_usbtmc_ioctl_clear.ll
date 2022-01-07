; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_host_interface*, %struct.device }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Sending INITIATE_CLEAR request\0A\00", align 1
@USBTMC_SIZE_IOBUFFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_INITIATE_CLEAR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USBTMC_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"INITIATE_CLEAR returned %x\0A\00", align 1
@USBTMC_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't get wMaxPacketSize\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"wMaxPacketSize is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Sending CHECK_CLEAR_STATUS request\0A\00", align 1
@USBTMC_REQUEST_CHECK_CLEAR_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"CHECK_CLEAR_STATUS returned %x\0A\00", align 1
@USBTMC_STATUS_PENDING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Reading from bulk in EP\0A\00", align 1
@USBTMC_MAX_READS_TO_CLEAR_BULK_IN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"Couldn't clear device buffer within %d cycles\0A\00", align 1
@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*)* @usbtmc_ioctl_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_ioctl_clear(%struct.usbtmc_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtmc_device_data*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %3, align 8
  %12 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %13 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @USBTMC_SIZE_IOBUFFER, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmalloc(i32 %18, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %254

26:                                               ; preds = %1
  %27 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %28 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %31 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_rcvctrlpipe(i32 %32, i32 0)
  %34 = load i32, i32* @USBTMC_REQUEST_INITIATE_CLEAR, align 4
  %35 = load i32, i32* @USB_DIR_IN, align 4
  %36 = load i32, i32* @USB_TYPE_CLASS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %39 = or i32 %37, %38
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %42 = call i32 @usb_control_msg(i32 %29, i32 %33, i32 %34, i32 %39, i32 0, i32 0, i32* %40, i32 1, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %26
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %250

49:                                               ; preds = %26
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %250

68:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  %69 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %70 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.usb_host_interface*, %struct.usb_host_interface** %72, align 8
  store %struct.usb_host_interface* %73, %struct.usb_host_interface** %4, align 8
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %102, %68
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %77 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %74
  %82 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %83 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %88, %struct.usb_endpoint_descriptor** %5, align 8
  %89 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %90 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %93 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %81
  %97 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %98 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @le16_to_cpu(i32 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %96, %81
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %74

105:                                              ; preds = %74
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @EPERM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  br label %250

113:                                              ; preds = %105
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %221, %113
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %120 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %121 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %124 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @usb_rcvctrlpipe(i32 %125, i32 0)
  %127 = load i32, i32* @USBTMC_REQUEST_CHECK_CLEAR_STATUS, align 4
  %128 = load i32, i32* @USB_DIR_IN, align 4
  %129 = load i32, i32* @USB_TYPE_CLASS, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %132 = or i32 %130, %131
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %135 = call i32 @usb_control_msg(i32 %122, i32 %126, i32 %127, i32 %132, i32 0, i32 0, i32* %133, i32 2, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %117
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %250

142:                                              ; preds = %117
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %142
  br label %222

154:                                              ; preds = %142
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @USBTMC_STATUS_PENDING, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load %struct.device*, %struct.device** %6, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @EPERM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %8, align 4
  br label %250

168:                                              ; preds = %154
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %211

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %208, %173
  %175 = load %struct.device*, %struct.device** %6, align 8
  %176 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %177 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %178 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %181 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %184 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @usb_rcvbulkpipe(i32 %182, i64 %185)
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* @USBTMC_SIZE_IOBUFFER, align 4
  %189 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %190 = call i32 @usb_bulk_msg(i32 %179, i32 %186, i32* %187, i32 %188, i32* %10, i32 %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %174
  %196 = load %struct.device*, %struct.device** %6, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  br label %250

199:                                              ; preds = %174
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %207 = icmp slt i32 %205, %206
  br label %208

208:                                              ; preds = %204, %200
  %209 = phi i1 [ false, %200 ], [ %207, %204 ]
  br i1 %209, label %174, label %210

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210, %168
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load %struct.device*, %struct.device** %6, align 8
  %217 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %218 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %216, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @EPERM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %8, align 4
  br label %250

221:                                              ; preds = %211
  br label %117

222:                                              ; preds = %153
  %223 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %224 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %227 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @usb_sndctrlpipe(i32 %228, i32 0)
  %230 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %231 = load i32, i32* @USB_DIR_OUT, align 4
  %232 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %237 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %238 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32*, i32** %7, align 8
  %241 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %242 = call i32 @usb_control_msg(i32 %225, i32 %229, i32 %230, i32 %235, i32 %236, i32 %239, i32* %240, i32 0, i32 %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %222
  %246 = load %struct.device*, %struct.device** %6, align 8
  %247 = load i32, i32* %8, align 4
  %248 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %246, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %247)
  br label %250

249:                                              ; preds = %222
  store i32 0, i32* %8, align 4
  br label %250

250:                                              ; preds = %249, %245, %215, %195, %160, %138, %108, %60, %45
  %251 = load i32*, i32** %7, align 8
  %252 = call i32 @kfree(i32* %251)
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %250, %23
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i64) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
