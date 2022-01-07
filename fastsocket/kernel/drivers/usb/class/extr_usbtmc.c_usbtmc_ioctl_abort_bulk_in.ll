; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_abort_bulk_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_abort_bulk_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { i64, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.device, %struct.usb_host_interface* }
%struct.device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@USBTMC_SIZE_IOBUFFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_INITIATE_ABORT_BULK_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USBTMC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"INITIATE_ABORT_BULK_IN returned %x\0A\00", align 1
@USBTMC_STATUS_FAILED = common dso_local global i32 0, align 4
@USBTMC_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't get wMaxPacketSize\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"wMaxPacketSize is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Reading from bulk in EP\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"usb_bulk_msg returned %d\0A\00", align 1
@USBTMC_MAX_READS_TO_CLEAR_BULK_IN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Couldn't clear device buffer within %d cycles\0A\00", align 1
@USBTMC_REQUEST_CHECK_ABORT_BULK_IN_STATUS = common dso_local global i32 0, align 4
@USBTMC_STATUS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*)* @usbtmc_ioctl_abort_bulk_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_ioctl_abort_bulk_in(%struct.usbtmc_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtmc_device_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %3, align 8
  %11 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %12 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load i32, i32* @USBTMC_SIZE_IOBUFFER, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %291

23:                                               ; preds = %1
  %24 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %25 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %28 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_rcvctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* @USBTMC_REQUEST_INITIATE_ABORT_BULK_IN, align 4
  %32 = load i32, i32* @USB_DIR_IN, align 4
  %33 = load i32, i32* @USB_TYPE_CLASS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %38 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %41 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %45 = call i32 @usb_control_msg(i32 %26, i32 %30, i32 %31, i32 %36, i32 %39, i64 %42, i32* %43, i32 2, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %23
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %287

52:                                               ; preds = %23
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @USBTMC_STATUS_FAILED, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %287

64:                                               ; preds = %52
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EPERM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %287

78:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  %79 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %80 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.usb_host_interface*, %struct.usb_host_interface** %82, align 8
  store %struct.usb_host_interface* %83, %struct.usb_host_interface** %9, align 8
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %117, %78
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %87 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %84
  %92 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %93 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %102 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %91
  %106 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %107 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @le16_to_cpu(i32 %114)
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %105, %91
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %84

120:                                              ; preds = %84
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @EPERM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %287

128:                                              ; preds = %120
  %129 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %130 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %129, i32 0, i32 2
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %10, align 4
  %134 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %169, %128
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %138 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %139 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %142 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %145 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @usb_rcvbulkpipe(i32 %143, i64 %146)
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* @USBTMC_SIZE_IOBUFFER, align 4
  %150 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %151 = call i32 @usb_bulk_msg(i32 %140, i32 %147, i32* %148, i32 %149, i32* %8, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %135
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  br label %287

160:                                              ; preds = %135
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %168 = icmp slt i32 %166, %167
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi i1 [ false, %161 ], [ %168, %165 ]
  br i1 %170, label %135, label %171

171:                                              ; preds = %169
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %178 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %176, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @EPERM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %6, align 4
  br label %287

181:                                              ; preds = %171
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %286, %181
  %183 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %184 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %187 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @usb_rcvctrlpipe(i32 %188, i32 0)
  %190 = load i32, i32* @USBTMC_REQUEST_CHECK_ABORT_BULK_IN_STATUS, align 4
  %191 = load i32, i32* @USB_DIR_IN, align 4
  %192 = load i32, i32* @USB_TYPE_CLASS, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %197 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32*, i32** %4, align 8
  %200 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %201 = call i32 @usb_control_msg(i32 %185, i32 %189, i32 %190, i32 %195, i32 0, i64 %198, i32* %199, i32 8, i32 %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %182
  %205 = load %struct.device*, %struct.device** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %205, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %206)
  br label %287

208:                                              ; preds = %182
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = load i32*, i32** %4, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %209, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %212)
  %214 = load i32*, i32** %4, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %208
  store i32 0, i32* %6, align 4
  br label %287

220:                                              ; preds = %208
  %221 = load i32*, i32** %4, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @USBTMC_STATUS_PENDING, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  %227 = load %struct.device*, %struct.device** %5, align 8
  %228 = load i32*, i32** %4, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %227, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @EPERM, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %6, align 4
  br label %287

234:                                              ; preds = %220
  %235 = load i32*, i32** %4, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %276

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %273, %239
  %241 = load %struct.device*, %struct.device** %5, align 8
  %242 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %241, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %243 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %244 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %247 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %250 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @usb_rcvbulkpipe(i32 %248, i64 %251)
  %253 = load i32*, i32** %4, align 8
  %254 = load i32, i32* @USBTMC_SIZE_IOBUFFER, align 4
  %255 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %256 = call i32 @usb_bulk_msg(i32 %245, i32 %252, i32* %253, i32 %254, i32* %8, i32 %255)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %6, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %240
  %262 = load %struct.device*, %struct.device** %5, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %263)
  br label %287

265:                                              ; preds = %240
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %272 = icmp slt i32 %270, %271
  br label %273

273:                                              ; preds = %269, %266
  %274 = phi i1 [ false, %266 ], [ %272, %269 ]
  br i1 %274, label %240, label %275

275:                                              ; preds = %273
  br label %276

276:                                              ; preds = %275, %234
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = load %struct.device*, %struct.device** %5, align 8
  %282 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %283 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %281, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* @EPERM, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %6, align 4
  br label %287

286:                                              ; preds = %276
  br label %182

287:                                              ; preds = %280, %261, %226, %219, %204, %175, %156, %123, %70, %63, %48
  %288 = load i32*, i32** %4, align 8
  %289 = call i32 @kfree(i32* %288)
  %290 = load i32, i32* %6, align 4
  store i32 %290, i32* %2, align 4
  br label %291

291:                                              ; preds = %287, %20
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
