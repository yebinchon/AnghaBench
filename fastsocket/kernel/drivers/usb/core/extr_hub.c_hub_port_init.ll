; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32, i32, i32, i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_11__, %struct.TYPE_14__*, i64, i32*, i32 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 (%struct.usb_hcd*, %struct.usb_device*)* }
%struct.usb_device_descriptor = type { i32, i32 }

@hub_port_init.usb_address0_mutex = internal global i32 0, align 4
@HUB_SHORT_RESET_TIME = common dso_local global i32 0, align 4
@HUB_ROOT_RESET_TIME = common dso_local global i32 0, align 4
@HUB_LONG_RESET_TIME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"device reset changed speed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Wireless \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"%s %s speed %sUSB device number %d using %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@GET_DESCRIPTOR_TRIES = common dso_local global i32 0, align 4
@HCD_USB3 = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@initial_descriptor_timeout = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"device descriptor read/64, error %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@SET_ADDRESS_TRIES = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"device not accepting address %d, error %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%s SuperSpeed USB device number %d using %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"device descriptor read/8, error %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"got a wrong device descriptor, warm reset device\0A\00", align 1
@HUB_BH_RESET_TIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"ep0 maxpacket = %d\0A\00", align 1
@USB_DT_DEVICE_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [38 x i8] c"device descriptor read/all, error %d\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@GET_DESCRIPTOR_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, %struct.usb_device*, i32, i32)* @hub_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_init(%struct.usb_hub* %0, %struct.usb_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usb_hub*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_hcd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.usb_device_descriptor*, align 8
  %20 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %5, align 8
  store %struct.usb_device* %1, %struct.usb_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %22 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %21, i32 0, i32 1
  %23 = load %struct.usb_device*, %struct.usb_device** %22, align 8
  store %struct.usb_device* %23, %struct.usb_device** %9, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = call %struct.usb_hcd* @bus_to_hcd(%struct.TYPE_14__* %26)
  store %struct.usb_hcd* %27, %struct.usb_hcd** %10, align 8
  %28 = load i32, i32* @HUB_SHORT_RESET_TIME, align 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %18, align 4
  %35 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* @HUB_ROOT_RESET_TIME, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %39
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %55, 130
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @HUB_LONG_RESET_TIME, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i32 @mutex_lock(i32* @hub_port_init.usb_address0_mutex)
  %61 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @hub_port_reset(%struct.usb_hub* %61, i32 %62, %struct.usb_device* %63, i32 %64, i32 0)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %543

69:                                               ; preds = %59
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %78 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %83 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %82, i32 0, i32 6
  %84 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %543

85:                                               ; preds = %75, %69
  %86 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %87 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %15, align 4
  %89 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %90 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %116 [
    i32 129, label %92
    i32 128, label %92
    i32 131, label %98
    i32 132, label %104
    i32 130, label %110
  ]

92:                                               ; preds = %85, %85
  %93 = call i8* @cpu_to_le16(i32 512)
  %94 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i8* %93, i8** %97, align 8
  br label %117

98:                                               ; preds = %85
  %99 = call i8* @cpu_to_le16(i32 64)
  %100 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i8* %99, i8** %103, align 8
  br label %117

104:                                              ; preds = %85
  %105 = call i8* @cpu_to_le16(i32 64)
  %106 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  br label %117

110:                                              ; preds = %85
  %111 = call i8* @cpu_to_le16(i32 8)
  %112 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i8* %111, i8** %115, align 8
  br label %117

116:                                              ; preds = %85
  br label %543

117:                                              ; preds = %110, %104, %98, %92
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %118 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %119 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %126 [
    i32 130, label %121
    i32 132, label %122
    i32 131, label %123
    i32 129, label %124
    i32 128, label %125
  ]

121:                                              ; preds = %117
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %127

122:                                              ; preds = %117
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %127

123:                                              ; preds = %117
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %127

124:                                              ; preds = %117
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %127

125:                                              ; preds = %117
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %127

126:                                              ; preds = %117
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  br label %127

127:                                              ; preds = %126, %125, %124, %123, %122, %121
  %128 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %129 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 129
  br i1 %131, label %132, label %154

132:                                              ; preds = %127
  %133 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %134 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %133, i32 0, i32 6
  %135 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %136 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %135, i32 0, i32 9
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %141 = load i8*, i8** %16, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %145 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %144, i32 0, i32 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %134, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8* %140, i8* %141, i8* %142, i32 %143, i32 %152)
  br label %154

154:                                              ; preds = %132, %127
  %155 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %156 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %155, i32 0, i32 10
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %161 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %160, i32 0, i32 10
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %164 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %163, i32 0, i32 10
  store i32* %162, i32** %164, align 8
  %165 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %166 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %169 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  br label %189

170:                                              ; preds = %154
  %171 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %172 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 131
  br i1 %174, label %175, label %188

175:                                              ; preds = %170
  %176 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %177 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 131
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %182 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %181, i32 0, i32 0
  %183 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %184 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %183, i32 0, i32 10
  store i32* %182, i32** %184, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %187 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %180, %175, %170
  br label %189

189:                                              ; preds = %188, %159
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %390, %189
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @GET_DESCRIPTOR_TRIES, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %394

194:                                              ; preds = %190
  %195 = load i32, i32* %8, align 4
  %196 = call i64 @USE_NEW_SCHEME(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %297

198:                                              ; preds = %194
  %199 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %200 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %199, i32 0, i32 0
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @HCD_USB3, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %297, label %207

207:                                              ; preds = %198
  store i32 0, i32* %20, align 4
  %208 = load i32, i32* @GFP_NOIO, align 4
  %209 = call %struct.usb_device_descriptor* @kmalloc(i32 64, i32 %208)
  store %struct.usb_device_descriptor* %209, %struct.usb_device_descriptor** %19, align 8
  %210 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %19, align 8
  %211 = icmp ne %struct.usb_device_descriptor* %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %13, align 4
  br label %390

215:                                              ; preds = %207
  store i32 0, i32* %12, align 4
  br label %216

216:                                              ; preds = %254, %215
  %217 = load i32, i32* %12, align 4
  %218 = icmp slt i32 %217, 3
  br i1 %218, label %219, label %257

219:                                              ; preds = %216
  %220 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %19, align 8
  %221 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %220, i32 0, i32 0
  store i32 0, i32* %221, align 4
  %222 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %223 = call i32 (...) @usb_rcvaddr0pipe()
  %224 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %225 = load i32, i32* @USB_DIR_IN, align 4
  %226 = load i32, i32* @USB_DT_DEVICE, align 4
  %227 = shl i32 %226, 8
  %228 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %19, align 8
  %229 = load i32, i32* @initial_descriptor_timeout, align 4
  %230 = call i32 @usb_control_msg(%struct.usb_device* %222, i32 %223, i32 %224, i32 %225, i32 %227, i32 0, %struct.usb_device_descriptor* %228, i32 64, i32 %229)
  store i32 %230, i32* %20, align 4
  %231 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %19, align 8
  %232 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  switch i32 %233, label %242 [
    i32 8, label %234
    i32 16, label %234
    i32 32, label %234
    i32 64, label %234
    i32 255, label %234
  ]

234:                                              ; preds = %219, %219, %219, %219, %219
  %235 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %19, align 8
  %236 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @USB_DT_DEVICE, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  store i32 0, i32* %20, align 4
  br label %249

241:                                              ; preds = %234
  br label %242

242:                                              ; preds = %219, %241
  %243 = load i32, i32* %20, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* @EPROTO, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %20, align 4
  br label %248

248:                                              ; preds = %245, %242
  br label %249

249:                                              ; preds = %248, %240
  %250 = load i32, i32* %20, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  br label %257

253:                                              ; preds = %249
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %216

257:                                              ; preds = %252, %216
  %258 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %19, align 8
  %259 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %262 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  store i32 %260, i32* %263, align 8
  %264 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %19, align 8
  %265 = call i32 @kfree(%struct.usb_device_descriptor* %264)
  %266 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @hub_port_reset(%struct.usb_hub* %266, i32 %267, %struct.usb_device* %268, i32 %269, i32 0)
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %13, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %257
  br label %543

274:                                              ; preds = %257
  %275 = load i32, i32* %15, align 4
  %276 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %277 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %275, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  %281 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %282 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %281, i32 0, i32 6
  %283 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %282, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %284 = load i32, i32* @ENODEV, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %13, align 4
  br label %543

286:                                              ; preds = %274
  %287 = load i32, i32* %20, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %286
  %290 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %291 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %290, i32 0, i32 6
  %292 = load i32, i32* %20, align 4
  %293 = call i32 (i32*, i8*, ...) @dev_err(i32* %291, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* @EMSGSIZE, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %13, align 4
  br label %390

296:                                              ; preds = %286
  br label %297

297:                                              ; preds = %296, %198, %194
  %298 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %299 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %372

302:                                              ; preds = %297
  store i32 0, i32* %12, align 4
  br label %303

303:                                              ; preds = %316, %302
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* @SET_ADDRESS_TRIES, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %319

307:                                              ; preds = %303
  %308 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %309 = load i32, i32* %18, align 4
  %310 = call i32 @hub_set_address(%struct.usb_device* %308, i32 %309)
  store i32 %310, i32* %13, align 4
  %311 = load i32, i32* %13, align 4
  %312 = icmp sge i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  br label %319

314:                                              ; preds = %307
  %315 = call i32 @msleep(i32 200)
  br label %316

316:                                              ; preds = %314
  %317 = load i32, i32* %12, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %12, align 4
  br label %303

319:                                              ; preds = %313, %303
  %320 = load i32, i32* %13, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  %323 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %324 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %323, i32 0, i32 6
  %325 = load i32, i32* %18, align 4
  %326 = load i32, i32* %13, align 4
  %327 = call i32 (i32*, i8*, ...) @dev_err(i32* %324, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %325, i32 %326)
  br label %543

328:                                              ; preds = %319
  %329 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %330 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, 129
  br i1 %332, label %333, label %356

333:                                              ; preds = %328
  %334 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %335 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %18, align 4
  %337 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %338 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %337, i32 0, i32 6
  %339 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %340 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %339, i32 0, i32 9
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %345 = load i32, i32* %18, align 4
  %346 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %347 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %346, i32 0, i32 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %338, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %344, i32 %345, i32 %354)
  br label %356

356:                                              ; preds = %333, %328
  %357 = call i32 @msleep(i32 10)
  %358 = load i32, i32* %8, align 4
  %359 = call i64 @USE_NEW_SCHEME(i32 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %371

361:                                              ; preds = %356
  %362 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %363 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %362, i32 0, i32 0
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @HCD_USB3, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %371, label %370

370:                                              ; preds = %361
  br label %394

371:                                              ; preds = %361, %356
  br label %372

372:                                              ; preds = %371, %297
  %373 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %374 = call i32 @usb_get_device_descriptor(%struct.usb_device* %373, i32 8)
  store i32 %374, i32* %13, align 4
  %375 = load i32, i32* %13, align 4
  %376 = icmp slt i32 %375, 8
  br i1 %376, label %377, label %388

377:                                              ; preds = %372
  %378 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %379 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %378, i32 0, i32 6
  %380 = load i32, i32* %13, align 4
  %381 = call i32 (i32*, i8*, ...) @dev_err(i32* %379, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %380)
  %382 = load i32, i32* %13, align 4
  %383 = icmp sge i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %377
  %385 = load i32, i32* @EMSGSIZE, align 4
  %386 = sub nsw i32 0, %385
  store i32 %386, i32* %13, align 4
  br label %387

387:                                              ; preds = %384, %377
  br label %389

388:                                              ; preds = %372
  store i32 0, i32* %13, align 4
  br label %394

389:                                              ; preds = %387
  br label %390

390:                                              ; preds = %389, %289, %212
  %391 = load i32, i32* %11, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %11, align 4
  %393 = call i32 @msleep(i32 100)
  br label %190

394:                                              ; preds = %388, %370, %190
  %395 = load i32, i32* %13, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %394
  br label %543

398:                                              ; preds = %394
  %399 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %400 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = icmp eq i32 %401, 129
  br i1 %402, label %403, label %421

403:                                              ; preds = %398
  %404 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %405 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %404, i32 0, i32 5
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 1
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @le16_to_cpu(i8* %407)
  %409 = icmp slt i32 %408, 768
  br i1 %409, label %410, label %421

410:                                              ; preds = %403
  %411 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %412 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %411, i32 0, i32 6
  %413 = call i32 (i32*, i8*, ...) @dev_err(i32* %412, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %414 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %415 = load i32, i32* %7, align 4
  %416 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %417 = load i32, i32* @HUB_BH_RESET_TIME, align 4
  %418 = call i32 @hub_port_reset(%struct.usb_hub* %414, i32 %415, %struct.usb_device* %416, i32 %417, i32 1)
  %419 = load i32, i32* @EINVAL, align 4
  %420 = sub nsw i32 0, %419
  store i32 %420, i32* %13, align 4
  br label %543

421:                                              ; preds = %403, %398
  %422 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %423 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = icmp eq i32 %425, 255
  br i1 %426, label %432, label %427

427:                                              ; preds = %421
  %428 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %429 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %430, 129
  br i1 %431, label %432, label %433

432:                                              ; preds = %427, %421
  store i32 512, i32* %11, align 4
  br label %438

433:                                              ; preds = %427
  %434 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %435 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  store i32 %437, i32* %11, align 4
  br label %438

438:                                              ; preds = %433, %432
  %439 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %440 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %439, i32 0, i32 7
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 0
  %443 = load i8*, i8** %442, align 8
  %444 = call i32 @le16_to_cpu(i8* %443)
  %445 = load i32, i32* %11, align 4
  %446 = icmp ne i32 %444, %445
  br i1 %446, label %447, label %484

447:                                              ; preds = %438
  %448 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %449 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = icmp ne i32 %450, 132
  br i1 %451, label %464, label %452

452:                                              ; preds = %447
  %453 = load i32, i32* %11, align 4
  %454 = icmp eq i32 %453, 8
  br i1 %454, label %471, label %455

455:                                              ; preds = %452
  %456 = load i32, i32* %11, align 4
  %457 = icmp eq i32 %456, 16
  br i1 %457, label %471, label %458

458:                                              ; preds = %455
  %459 = load i32, i32* %11, align 4
  %460 = icmp eq i32 %459, 32
  br i1 %460, label %471, label %461

461:                                              ; preds = %458
  %462 = load i32, i32* %11, align 4
  %463 = icmp eq i32 %462, 64
  br i1 %463, label %471, label %464

464:                                              ; preds = %461, %447
  %465 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %466 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %465, i32 0, i32 6
  %467 = load i32, i32* %11, align 4
  %468 = call i32 (i32*, i8*, ...) @dev_err(i32* %466, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %467)
  %469 = load i32, i32* @EMSGSIZE, align 4
  %470 = sub nsw i32 0, %469
  store i32 %470, i32* %13, align 4
  br label %543

471:                                              ; preds = %461, %458, %455, %452
  %472 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %473 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %472, i32 0, i32 6
  %474 = load i32, i32* %11, align 4
  %475 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %473, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %474)
  %476 = load i32, i32* %11, align 4
  %477 = call i8* @cpu_to_le16(i32 %476)
  %478 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %479 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %478, i32 0, i32 7
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %480, i32 0, i32 0
  store i8* %477, i8** %481, align 8
  %482 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %483 = call i32 @usb_ep0_reinit(%struct.usb_device* %482)
  br label %484

484:                                              ; preds = %471, %438
  %485 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %486 = load i32, i32* @USB_DT_DEVICE_SIZE, align 4
  %487 = call i32 @usb_get_device_descriptor(%struct.usb_device* %485, i32 %486)
  store i32 %487, i32* %13, align 4
  %488 = load i32, i32* %13, align 4
  %489 = icmp slt i32 %488, 16
  br i1 %489, label %490, label %501

490:                                              ; preds = %484
  %491 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %492 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %491, i32 0, i32 6
  %493 = load i32, i32* %13, align 4
  %494 = call i32 (i32*, i8*, ...) @dev_err(i32* %492, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i32 %493)
  %495 = load i32, i32* %13, align 4
  %496 = icmp sge i32 %495, 0
  br i1 %496, label %497, label %500

497:                                              ; preds = %490
  %498 = load i32, i32* @ENOMSG, align 4
  %499 = sub nsw i32 0, %498
  store i32 %499, i32* %13, align 4
  br label %500

500:                                              ; preds = %497, %490
  br label %543

501:                                              ; preds = %484
  %502 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %503 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %502, i32 0, i32 3
  %504 = load i64, i64* %503, align 8
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %526

506:                                              ; preds = %501
  %507 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %508 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %507, i32 0, i32 5
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 1
  %510 = load i8*, i8** %509, align 8
  %511 = call i32 @le16_to_cpu(i8* %510)
  %512 = icmp sge i32 %511, 513
  br i1 %512, label %513, label %526

513:                                              ; preds = %506
  %514 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %515 = call i32 @usb_get_bos_descriptor(%struct.usb_device* %514)
  store i32 %515, i32* %13, align 4
  %516 = load i32, i32* %13, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %525, label %518

518:                                              ; preds = %513
  %519 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %520 = call i32 @usb_device_supports_lpm(%struct.usb_device* %519)
  %521 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %522 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %521, i32 0, i32 4
  store i32 %520, i32* %522, align 8
  %523 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %524 = call i32 @usb_set_lpm_parameters(%struct.usb_device* %523)
  br label %525

525:                                              ; preds = %518, %513
  br label %526

526:                                              ; preds = %525, %506, %501
  store i32 0, i32* %13, align 4
  %527 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %528 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %527, i32 0, i32 0
  %529 = load %struct.TYPE_9__*, %struct.TYPE_9__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %529, i32 0, i32 1
  %531 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %530, align 8
  %532 = icmp ne i32 (%struct.usb_hcd*, %struct.usb_device*)* %531, null
  br i1 %532, label %533, label %542

533:                                              ; preds = %526
  %534 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %535 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %534, i32 0, i32 0
  %536 = load %struct.TYPE_9__*, %struct.TYPE_9__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %536, i32 0, i32 1
  %538 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %537, align 8
  %539 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %540 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %541 = call i32 %538(%struct.usb_hcd* %539, %struct.usb_device* %540)
  br label %542

542:                                              ; preds = %533, %526
  br label %543

543:                                              ; preds = %542, %500, %464, %410, %397, %322, %280, %273, %116, %81, %68
  %544 = load i32, i32* %13, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %553

546:                                              ; preds = %543
  %547 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %548 = load i32, i32* %7, align 4
  %549 = call i32 @hub_port_disable(%struct.usb_hub* %547, i32 %548, i32 0)
  %550 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %551 = load i32, i32* %18, align 4
  %552 = call i32 @update_devnum(%struct.usb_device* %550, i32 %551)
  br label %553

553:                                              ; preds = %546, %543
  %554 = call i32 @mutex_unlock(i32* @hub_port_init.usb_address0_mutex)
  %555 = load i32, i32* %13, align 4
  ret i32 %555
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hub_port_reset(%struct.usb_hub*, i32, %struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

declare dso_local i64 @USE_NEW_SCHEME(i32) #1

declare dso_local %struct.usb_device_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.usb_device_descriptor*, i32, i32) #1

declare dso_local i32 @usb_rcvaddr0pipe(...) #1

declare dso_local i32 @kfree(%struct.usb_device_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hub_set_address(%struct.usb_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_get_device_descriptor(%struct.usb_device*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @usb_ep0_reinit(%struct.usb_device*) #1

declare dso_local i32 @usb_get_bos_descriptor(%struct.usb_device*) #1

declare dso_local i32 @usb_device_supports_lpm(%struct.usb_device*) #1

declare dso_local i32 @usb_set_lpm_parameters(%struct.usb_device*) #1

declare dso_local i32 @hub_port_disable(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @update_devnum(%struct.usb_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
