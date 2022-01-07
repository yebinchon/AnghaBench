; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_usb_parse_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_usb_parse_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_5__, %struct.usb_host_endpoint* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_host_endpoint = type { i8*, i32, %struct.usb_endpoint_descriptor, %struct.TYPE_8__*, i32 }
%struct.usb_endpoint_descriptor = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@USB_DT_ENDPOINT_AUDIO_SIZE = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"config %d interface %d altsetting %d has an invalid endpoint descriptor of length %d, skipping\0A\00", align 1
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"config %d interface %d altsetting %d has an invalid endpoint with address 0x%X, skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has an invalid bInterval %d, changing to %d\0A\00", align 1
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"config %d interface %d altsetting %d endpoint 0x%X is Bulk; changing to Interrupt\0A\00", align 1
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [82 x i8] c"config %d interface %d altsetting %d bulk endpoint 0x%X has invalid maxpacket %d\0A\00", align 1
@USB_DT_SS_ENDPOINT_COMP = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i32 0, align 4
@USB_DT_INTERFACE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DT_SS_EP_COMP_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [91 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has no SuperSpeed companion descriptor\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"skipped %d descriptor%s after %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, %struct.usb_host_interface*, i32, i8*, i32)* @usb_parse_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_parse_endpoint(%struct.device* %0, i32 %1, i32 %2, i32 %3, %struct.usb_host_interface* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_host_interface*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.usb_endpoint_descriptor*, align 8
  %20 = alloca %struct.usb_host_endpoint*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.usb_host_interface* %4, %struct.usb_host_interface** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = load i8*, i8** %16, align 8
  store i8* %26, i8** %18, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = bitcast i8* %27 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %28, %struct.usb_endpoint_descriptor** %19, align 8
  %29 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %30 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %16, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %16, align 8
  %35 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %36 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %17, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %17, align 4
  %40 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %41 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USB_DT_ENDPOINT_AUDIO_SIZE, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %8
  %46 = load i32, i32* @USB_DT_ENDPOINT_AUDIO_SIZE, align 4
  store i32 %46, i32* %21, align 4
  br label %65

47:                                               ; preds = %8
  %48 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %49 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @USB_DT_ENDPOINT_SIZE, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @USB_DT_ENDPOINT_SIZE, align 4
  store i32 %54, i32* %21, align 4
  br label %64

55:                                               ; preds = %47
  %56 = load %struct.device*, %struct.device** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %61 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %62)
  br label %397

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %67 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %22, align 4
  %73 = icmp sge i32 %72, 16
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %22, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74, %65
  %78 = load %struct.device*, %struct.device** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %83 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %78, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %84)
  br label %397

86:                                               ; preds = %74
  %87 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %88 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %397

94:                                               ; preds = %86
  %95 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %96 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %95, i32 0, i32 1
  %97 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %96, align 8
  %98 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %99 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %97, i64 %102
  store %struct.usb_host_endpoint* %103, %struct.usb_host_endpoint** %20, align 8
  %104 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %105 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %110 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %109, i32 0, i32 2
  %111 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %112 = load i32, i32* %21, align 4
  %113 = call i32 @memcpy(%struct.usb_endpoint_descriptor* %110, %struct.usb_endpoint_descriptor* %111, i32 %112)
  %114 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %115 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %114, i32 0, i32 4
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  store i32 0, i32* %22, align 4
  store i32 255, i32* %23, align 4
  %117 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %118 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %94
  store i32 1, i32* %22, align 4
  %121 = load %struct.device*, %struct.device** %10, align 8
  %122 = call %struct.TYPE_7__* @to_usb_device(%struct.device* %121)
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  switch i32 %124, label %135 [
    i32 128, label %125
    i32 129, label %125
  ]

125:                                              ; preds = %120, %120
  %126 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %127 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 8
  %130 = call i32 @fls(i32 %129)
  store i32 %130, i32* %21, align 4
  %131 = load i32, i32* %21, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 9, i32* %21, align 4
  br label %134

134:                                              ; preds = %133, %125
  store i32 16, i32* %23, align 4
  br label %136

135:                                              ; preds = %120
  store i32 32, i32* %21, align 4
  br label %136

136:                                              ; preds = %135, %134
  br label %150

137:                                              ; preds = %94
  %138 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %139 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  store i32 1, i32* %22, align 4
  store i32 16, i32* %23, align 4
  %142 = load %struct.device*, %struct.device** %10, align 8
  %143 = call %struct.TYPE_7__* @to_usb_device(%struct.device* %142)
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %147 [
    i32 129, label %146
  ]

146:                                              ; preds = %141
  store i32 9, i32* %21, align 4
  br label %148

147:                                              ; preds = %141
  store i32 6, i32* %21, align 4
  br label %148

148:                                              ; preds = %147, %146
  br label %149

149:                                              ; preds = %148, %137
  br label %150

150:                                              ; preds = %149, %136
  %151 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %152 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %22, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %158 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %23, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %156, %150
  %163 = load %struct.device*, %struct.device** %10, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %168 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %171 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %21, align 4
  %174 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %163, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %165, i32 %166, i32 %169, i32 %172, i32 %173)
  %175 = load i32, i32* %21, align 4
  %176 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %177 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 4
  br label %179

179:                                              ; preds = %162, %156
  %180 = load %struct.device*, %struct.device** %10, align 8
  %181 = call %struct.TYPE_7__* @to_usb_device(%struct.device* %180)
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @USB_SPEED_LOW, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %218

186:                                              ; preds = %179
  %187 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %188 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %186
  %191 = load %struct.device*, %struct.device** %10, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %196 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %191, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %192, i32 %193, i32 %194, i32 %197)
  %199 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %200 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %201 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %201, i32 0, i32 4
  store i32 %199, i32* %202, align 4
  %203 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %204 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %204, i32 0, i32 2
  store i32 1, i32* %205, align 4
  %206 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %207 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @le16_to_cpu(i32 %209)
  %211 = icmp sgt i32 %210, 8
  br i1 %211, label %212, label %217

212:                                              ; preds = %190
  %213 = call i32 @cpu_to_le16(i32 8)
  %214 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %215 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %215, i32 0, i32 3
  store i32 %213, i32* %216, align 4
  br label %217

217:                                              ; preds = %212, %190
  br label %218

218:                                              ; preds = %217, %186, %179
  %219 = load %struct.device*, %struct.device** %10, align 8
  %220 = call %struct.TYPE_7__* @to_usb_device(%struct.device* %219)
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 129
  br i1 %223, label %224, label %248

224:                                              ; preds = %218
  %225 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %226 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %248

228:                                              ; preds = %224
  %229 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %230 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le16_to_cpu(i32 %232)
  %234 = and i32 %233, 2047
  store i32 %234, i32* %25, align 4
  %235 = load i32, i32* %25, align 4
  %236 = icmp ne i32 %235, 512
  br i1 %236, label %237, label %247

237:                                              ; preds = %228
  %238 = load %struct.device*, %struct.device** %10, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %13, align 4
  %242 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %243 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %25, align 4
  %246 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %238, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i32 %239, i32 %240, i32 %241, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %237, %228
  br label %248

248:                                              ; preds = %247, %224, %218
  %249 = load %struct.device*, %struct.device** %10, align 8
  %250 = call %struct.TYPE_7__* @to_usb_device(%struct.device* %249)
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 128
  br i1 %253, label %254, label %365

254:                                              ; preds = %248
  %255 = load i8*, i8** %16, align 8
  %256 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %257 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  %258 = load i8*, i8** %16, align 8
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* @USB_DT_SS_ENDPOINT_COMP, align 4
  %261 = load i32, i32* @USB_DT_ENDPOINT, align 4
  %262 = load i32, i32* @USB_DT_INTERFACE, align 4
  %263 = call i32 @find_next_descriptor_more(i8* %258, i32 %259, i32 %260, i32 %261, i32 %262, i32* %21)
  store i32 %263, i32* %22, align 4
  %264 = load i32, i32* %22, align 4
  %265 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %266 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* %22, align 4
  %268 = load i8*, i8** %16, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  store i8* %270, i8** %16, align 8
  %271 = load i32, i32* %22, align 4
  %272 = load i32, i32* %17, align 4
  %273 = sub nsw i32 %272, %271
  store i32 %273, i32* %17, align 4
  %274 = load i32, i32* @GFP_KERNEL, align 4
  %275 = call %struct.TYPE_8__* @kzalloc(i32 4, i32 %274)
  %276 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %277 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %276, i32 0, i32 3
  store %struct.TYPE_8__* %275, %struct.TYPE_8__** %277, align 8
  %278 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %279 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %278, i32 0, i32 3
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %279, align 8
  %281 = icmp ne %struct.TYPE_8__* %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %254
  %283 = load i32, i32* @ENOMEM, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %9, align 4
  br label %412

285:                                              ; preds = %254
  %286 = load i32, i32* @USB_DT_SS_EP_COMP_SIZE, align 4
  %287 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %288 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %287, i32 0, i32 3
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  store i32 %286, i32* %291, align 4
  %292 = load i32, i32* @USB_DT_SS_ENDPOINT_COMP, align 4
  %293 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %294 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %293, i32 0, i32 3
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 2
  store i32 %292, i32* %297, align 8
  %298 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %299 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %298, i32 0, i32 3
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  store i64 0, i64* %302, align 8
  %303 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %304 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %303, i32 0, i32 2
  %305 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %285
  %308 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %309 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %308, i32 0, i32 2
  %310 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %307, %285
  %313 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %314 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %318 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %317, i32 0, i32 3
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  store i32 %316, i32* %321, align 8
  br label %322

322:                                              ; preds = %312, %307
  %323 = load i32, i32* %17, align 4
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %349

325:                                              ; preds = %322
  %326 = load %struct.device*, %struct.device** %10, align 8
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %12, align 4
  %329 = load i32, i32* %13, align 4
  %330 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %331 = load i32, i32* %15, align 4
  %332 = load i8*, i8** %16, align 8
  %333 = load i32, i32* %17, align 4
  %334 = call i32 @usb_parse_ss_endpoint_companion(%struct.device* %326, i32 %327, i32 %328, i32 %329, %struct.usb_host_endpoint* %330, i32 %331, i8* %332, i32 %333)
  store i32 %334, i32* %24, align 4
  %335 = load i32, i32* %24, align 4
  %336 = icmp sge i32 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %325
  %338 = load i32, i32* %24, align 4
  %339 = load i8*, i8** %16, align 8
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds i8, i8* %339, i64 %340
  store i8* %341, i8** %16, align 8
  %342 = load i8*, i8** %16, align 8
  %343 = load i8*, i8** %18, align 8
  %344 = ptrtoint i8* %342 to i64
  %345 = ptrtoint i8* %343 to i64
  %346 = sub i64 %344, %345
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %24, align 4
  br label %348

348:                                              ; preds = %337, %325
  br label %364

349:                                              ; preds = %322
  %350 = load %struct.device*, %struct.device** %10, align 8
  %351 = load i32, i32* %11, align 4
  %352 = load i32, i32* %12, align 4
  %353 = load i32, i32* %13, align 4
  %354 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  %355 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_warn(%struct.device* %350, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i32 %351, i32 %352, i32 %353, i32 %356)
  %358 = load i8*, i8** %16, align 8
  %359 = load i8*, i8** %18, align 8
  %360 = ptrtoint i8* %358 to i64
  %361 = ptrtoint i8* %359 to i64
  %362 = sub i64 %360, %361
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %24, align 4
  br label %364

364:                                              ; preds = %349, %348
  br label %386

365:                                              ; preds = %248
  %366 = load i8*, i8** %16, align 8
  %367 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %368 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %367, i32 0, i32 0
  store i8* %366, i8** %368, align 8
  %369 = load i8*, i8** %16, align 8
  %370 = load i32, i32* %17, align 4
  %371 = load i32, i32* @USB_DT_ENDPOINT, align 4
  %372 = load i32, i32* @USB_DT_INTERFACE, align 4
  %373 = call i32 @find_next_descriptor(i8* %369, i32 %370, i32 %371, i32 %372, i32* %21)
  store i32 %373, i32* %22, align 4
  %374 = load i32, i32* %22, align 4
  %375 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %20, align 8
  %376 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %375, i32 0, i32 1
  store i32 %374, i32* %376, align 8
  %377 = load i8*, i8** %16, align 8
  %378 = load i8*, i8** %18, align 8
  %379 = ptrtoint i8* %377 to i64
  %380 = ptrtoint i8* %378 to i64
  %381 = sub i64 %379, %380
  %382 = load i32, i32* %22, align 4
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %381, %383
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %24, align 4
  br label %386

386:                                              ; preds = %365, %364
  %387 = load i32, i32* %21, align 4
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %386
  %390 = load %struct.device*, %struct.device** %10, align 8
  %391 = load i32, i32* %21, align 4
  %392 = load i32, i32* %21, align 4
  %393 = call i32 @plural(i32 %392)
  %394 = call i32 @dev_dbg(%struct.device* %390, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %391, i32 %393, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %395

395:                                              ; preds = %389, %386
  %396 = load i32, i32* %24, align 4
  store i32 %396, i32* %9, align 4
  br label %412

397:                                              ; preds = %93, %77, %55
  %398 = load i8*, i8** %16, align 8
  %399 = load i32, i32* %17, align 4
  %400 = load i32, i32* @USB_DT_ENDPOINT, align 4
  %401 = load i32, i32* @USB_DT_INTERFACE, align 4
  %402 = call i32 @find_next_descriptor(i8* %398, i32 %399, i32 %400, i32 %401, i32* null)
  store i32 %402, i32* %22, align 4
  %403 = load i8*, i8** %16, align 8
  %404 = load i8*, i8** %18, align 8
  %405 = ptrtoint i8* %403 to i64
  %406 = ptrtoint i8* %404 to i64
  %407 = sub i64 %405, %406
  %408 = load i32, i32* %22, align 4
  %409 = sext i32 %408 to i64
  %410 = add nsw i64 %407, %409
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %9, align 4
  br label %412

412:                                              ; preds = %397, %395, %282
  %413 = load i32, i32* %9, align 4
  ret i32 %413
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @memcpy(%struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.TYPE_7__* @to_usb_device(%struct.device*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @find_next_descriptor_more(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_parse_ss_endpoint_companion(%struct.device*, i32, i32, i32, %struct.usb_host_endpoint*, i32, i8*, i32) #1

declare dso_local i32 @find_next_descriptor(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @plural(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
