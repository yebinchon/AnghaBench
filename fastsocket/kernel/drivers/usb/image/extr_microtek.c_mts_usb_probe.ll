; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_microtek.c_mts_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/image/extr_microtek.c_mts_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.mts_desc = type { i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_15__*, %struct.usb_interface*, %struct.usb_device* }
%struct.TYPE_14__ = type { %struct.mts_desc* }
%struct.TYPE_15__ = type { i64* }
%struct.usb_device = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb-device descriptor at %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"product id = 0x%x, vendor id = 0x%x\0A\00", align 1
@MTS_EP_TOTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"expecting %d got %d endpoints! Bailing out.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"can only deal with bulk endpoints; endpoint %d is not bulk.\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"can only deal with one output endpoints. Bailing out.\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"couldn't find an output bulk endpoint. Bailing out.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@MTS_EP_OUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"will this work? Command EP is not usually %d\0A\00", align 1
@MTS_EP_RESPONSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"will this work? Response EP is not usually %d\0A\00", align 1
@MTS_EP_IMAGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"will this work? Image data EP is not usually %d\0A\00", align 1
@mts_scsi_host_template = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @mts_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mts_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mts_desc*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 -1, i32* %7, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %12, align 8
  %19 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %20 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %21 = ptrtoint %struct.usb_device* %20 to i32
  %22 = call i32 (i8*, i32, ...) @MTS_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = call i32 (i8*, i32, ...) @MTS_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %32)
  %34 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 0
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %36, align 8
  store %struct.usb_host_interface* %37, %struct.usb_host_interface** %13, align 8
  %38 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %39 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MTS_EP_TOTAL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %2
  %45 = load i32, i32* @MTS_EP_TOTAL, align 4
  %46 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %47 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %279

53:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %134, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %57 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %137

61:                                               ; preds = %54
  %62 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %63 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %61
  %76 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %77 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %133

86:                                               ; preds = %61
  %87 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %88 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @USB_DIR_IN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %86
  %100 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %101 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  br label %132

113:                                              ; preds = %86
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %279

120:                                              ; preds = %113
  %121 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %122 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %121, i32 0, i32 0
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %120, %99
  br label %133

133:                                              ; preds = %132, %75
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %54

137:                                              ; preds = %54
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @ENODEV, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %279

144:                                              ; preds = %137
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call %struct.mts_desc* @kzalloc(i32 48, i32 %145)
  store %struct.mts_desc* %146, %struct.mts_desc** %11, align 8
  %147 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %148 = icmp ne %struct.mts_desc* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  br label %277

150:                                              ; preds = %144
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call i32 @usb_alloc_urb(i32 0, i32 %151)
  %153 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %154 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %156 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %150
  br label %274

160:                                              ; preds = %150
  %161 = load i32, i32* @GFP_KERNEL, align 4
  %162 = call %struct.mts_desc* @kmalloc(i32 1, i32 %161)
  %163 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %164 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  store %struct.mts_desc* %162, %struct.mts_desc** %165, align 8
  %166 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %167 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load %struct.mts_desc*, %struct.mts_desc** %168, align 8
  %170 = icmp ne %struct.mts_desc* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %160
  br label %269

172:                                              ; preds = %160
  %173 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %174 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %175 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %174, i32 0, i32 7
  store %struct.usb_device* %173, %struct.usb_device** %175, align 8
  %176 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %177 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %178 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %177, i32 0, i32 6
  store %struct.usb_interface* %176, %struct.usb_interface** %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %181 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %185 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %189 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %191 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @MTS_EP_OUT, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %172
  %196 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %197 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %195, %172
  %201 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %202 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @MTS_EP_RESPONSE, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %208 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %206, %200
  %212 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %213 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @MTS_EP_IMAGE, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %219 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i8*, ...) @MTS_WARNING(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %217, %211
  %223 = call %struct.TYPE_15__* @scsi_host_alloc(i32* @mts_scsi_host_template, i32 8)
  %224 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %225 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %224, i32 0, i32 5
  store %struct.TYPE_15__* %223, %struct.TYPE_15__** %225, align 8
  %226 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %227 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %226, i32 0, i32 5
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = icmp ne %struct.TYPE_15__* %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %222
  br label %263

231:                                              ; preds = %222
  %232 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %233 = ptrtoint %struct.mts_desc* %232 to i64
  %234 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %235 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %234, i32 0, i32 5
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 0
  store i64 %233, i64* %239, align 8
  %240 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %241 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %240, i32 0, i32 5
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %241, align 8
  %243 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %244 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %243, i32 0, i32 0
  %245 = call i64 @scsi_add_host(%struct.TYPE_15__* %242, i32* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %231
  %248 = load i32, i32* @EIO, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %10, align 4
  br label %258

250:                                              ; preds = %231
  %251 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %252 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %251, i32 0, i32 5
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = call i32 @scsi_scan_host(%struct.TYPE_15__* %253)
  %255 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %256 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %257 = call i32 @usb_set_intfdata(%struct.usb_interface* %255, %struct.mts_desc* %256)
  store i32 0, i32* %3, align 4
  br label %279

258:                                              ; preds = %247
  %259 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %260 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %259, i32 0, i32 5
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = call i32 @scsi_host_put(%struct.TYPE_15__* %261)
  br label %263

263:                                              ; preds = %258, %230
  %264 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %265 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = load %struct.mts_desc*, %struct.mts_desc** %266, align 8
  %268 = call i32 @kfree(%struct.mts_desc* %267)
  br label %269

269:                                              ; preds = %263, %171
  %270 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %271 = getelementptr inbounds %struct.mts_desc, %struct.mts_desc* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @usb_free_urb(i32 %272)
  br label %274

274:                                              ; preds = %269, %159
  %275 = load %struct.mts_desc*, %struct.mts_desc** %11, align 8
  %276 = call i32 @kfree(%struct.mts_desc* %275)
  br label %277

277:                                              ; preds = %274, %149
  %278 = load i32, i32* %10, align 4
  store i32 %278, i32* %3, align 4
  br label %279

279:                                              ; preds = %277, %250, %140, %116, %44
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @MTS_DEBUG_GOT_HERE(...) #1

declare dso_local i32 @MTS_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @MTS_WARNING(i8*, ...) #1

declare dso_local %struct.mts_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.mts_desc* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_15__* @scsi_host_alloc(i32*, i32) #1

declare dso_local i64 @scsi_add_host(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.TYPE_15__*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.mts_desc*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree(%struct.mts_desc*) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
