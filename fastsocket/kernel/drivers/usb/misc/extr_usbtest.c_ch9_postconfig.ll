; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_ch9_postconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_ch9_postconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32*, %struct.usb_interface* }
%struct.usb_interface = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.usb_device = type { i64, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_qualifier_descriptor = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid alt [%d].bAltSetting = %d\0A\00", align 1
@realworld = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"can't set_interface = %d, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"get alt should be %d, was %d\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@USB_REQ_GET_CONFIGURATION = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"get config --> %d %d (1 %d)\0A\00", align 1
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"dev descriptor --> %d\0A\00", align 1
@USB_DT_CONFIG = common dso_local global i32 0, align 4
@TBUF_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"config [%d] descriptor --> %d\0A\00", align 1
@USB_DT_DEVICE_QUALIFIER = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"hs dev qualifier --> %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"dev qualifier --> %d\0A\00", align 1
@USB_DT_OTHER_SPEED_CONFIG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"other speed config --> %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"get dev status --> %d\0A\00", align 1
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"get interface status --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*)* @ch9_postconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch9_postconfig(%struct.usbtest_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtest_dev*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_qualifier_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %3, align 8
  %12 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %13 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %12, i32 0, i32 1
  %14 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  store %struct.usb_interface* %14, %struct.usb_interface** %4, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %91, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %94

23:                                               ; preds = %17
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35, %23
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 1
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i64, i64* @realworld, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %91

56:                                               ; preds = %50, %47
  %57 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @set_altsetting(%struct.usbtest_dev* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %64 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %63, i32 0, i32 1
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %378

69:                                               ; preds = %56
  %70 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %71 = call i32 @get_altsetting(%struct.usbtest_dev* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %76, i32 0, i32 1
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  br label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @EDOM, align 4
  %87 = sub nsw i32 0, %86
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi i32 [ %84, %83 ], [ %87, %85 ]
  store i32 %89, i32* %2, align 4
  br label %378

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %17

94:                                               ; preds = %17
  %95 = load i64, i64* @realworld, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %99 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %153

103:                                              ; preds = %97, %94
  %104 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %105 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %9, align 4
  %110 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %111 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %112 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %111, i32 0)
  %113 = load i32, i32* @USB_REQ_GET_CONFIGURATION, align 4
  %114 = load i32, i32* @USB_DIR_IN, align 4
  %115 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %118 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %121 = call i32 @usb_control_msg(%struct.usb_device* %110, i32 %112, i32 %113, i32 %116, i32 0, i32 0, i32* %119, i32 1, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %132, label %124

124:                                              ; preds = %103
  %125 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %126 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %124, %103
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 1
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %137 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %140, i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %132
  %146 = load i32, i32* %8, align 4
  br label %150

147:                                              ; preds = %132
  %148 = load i32, i32* @EDOM, align 4
  %149 = sub nsw i32 0, %148
  br label %150

150:                                              ; preds = %147, %145
  %151 = phi i32 [ %146, %145 ], [ %149, %147 ]
  store i32 %151, i32* %2, align 4
  br label %378

152:                                              ; preds = %124
  br label %153

153:                                              ; preds = %152, %97
  %154 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %155 = load i32, i32* @USB_DT_DEVICE, align 4
  %156 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %157 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @usb_get_descriptor(%struct.usb_device* %154, i32 %155, i32 0, i32* %158, i32 8)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp ne i64 %161, 8
  br i1 %162, label %163, label %177

163:                                              ; preds = %153
  %164 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %165 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %164, i32 0, i32 1
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i32, i32* %8, align 4
  br label %175

172:                                              ; preds = %163
  %173 = load i32, i32* @EDOM, align 4
  %174 = sub nsw i32 0, %173
  br label %175

175:                                              ; preds = %172, %170
  %176 = phi i32 [ %171, %170 ], [ %174, %172 ]
  store i32 %176, i32* %2, align 4
  br label %378

177:                                              ; preds = %153
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %214, %177
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %181 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %217

185:                                              ; preds = %178
  %186 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %187 = load i32, i32* @USB_DT_CONFIG, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %190 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @TBUF_SIZE, align 4
  %193 = call i32 @usb_get_descriptor(%struct.usb_device* %186, i32 %187, i32 %188, i32* %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @is_good_config(%struct.usbtest_dev* %194, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %213, label %198

198:                                              ; preds = %185
  %199 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %200 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %199, i32 0, i32 1
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %200, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %201, i32 %202)
  %204 = load i32, i32* %8, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = load i32, i32* %8, align 4
  br label %211

208:                                              ; preds = %198
  %209 = load i32, i32* @EDOM, align 4
  %210 = sub nsw i32 0, %209
  br label %211

211:                                              ; preds = %208, %206
  %212 = phi i32 [ %207, %206 ], [ %210, %208 ]
  store i32 %212, i32* %2, align 4
  br label %378

213:                                              ; preds = %185
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %178

217:                                              ; preds = %178
  %218 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %219 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @le16_to_cpu(i32 %221)
  %223 = icmp eq i32 %222, 512
  br i1 %223, label %224, label %324

224:                                              ; preds = %217
  store %struct.usb_qualifier_descriptor* null, %struct.usb_qualifier_descriptor** %10, align 8
  %225 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %226 = load i32, i32* @USB_DT_DEVICE_QUALIFIER, align 4
  %227 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %228 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @usb_get_descriptor(%struct.usb_device* %225, i32 %226, i32 0, i32* %229, i32 4)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* @EPIPE, align 4
  %233 = sub nsw i32 0, %232
  %234 = icmp eq i32 %231, %233
  br i1 %234, label %235, label %256

235:                                              ; preds = %224
  %236 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %237 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @USB_SPEED_HIGH, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %255

241:                                              ; preds = %235
  %242 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %243 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %242, i32 0, i32 1
  %244 = load i32, i32* %8, align 4
  %245 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %243, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* %8, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = load i32, i32* %8, align 4
  br label %253

250:                                              ; preds = %241
  %251 = load i32, i32* @EDOM, align 4
  %252 = sub nsw i32 0, %251
  br label %253

253:                                              ; preds = %250, %248
  %254 = phi i32 [ %249, %248 ], [ %252, %250 ]
  store i32 %254, i32* %2, align 4
  br label %378

255:                                              ; preds = %235
  br label %280

256:                                              ; preds = %224
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = icmp ne i64 %258, 4
  br i1 %259, label %260, label %274

260:                                              ; preds = %256
  %261 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %262 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %261, i32 0, i32 1
  %263 = load i32, i32* %8, align 4
  %264 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %262, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %8, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %260
  %268 = load i32, i32* %8, align 4
  br label %272

269:                                              ; preds = %260
  %270 = load i32, i32* @EDOM, align 4
  %271 = sub nsw i32 0, %270
  br label %272

272:                                              ; preds = %269, %267
  %273 = phi i32 [ %268, %267 ], [ %271, %269 ]
  store i32 %273, i32* %2, align 4
  br label %378

274:                                              ; preds = %256
  %275 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %276 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = bitcast i32* %277 to %struct.usb_qualifier_descriptor*
  store %struct.usb_qualifier_descriptor* %278, %struct.usb_qualifier_descriptor** %10, align 8
  br label %279

279:                                              ; preds = %274
  br label %280

280:                                              ; preds = %279, %255
  %281 = load %struct.usb_qualifier_descriptor*, %struct.usb_qualifier_descriptor** %10, align 8
  %282 = icmp ne %struct.usb_qualifier_descriptor* %281, null
  br i1 %282, label %283, label %323

283:                                              ; preds = %280
  %284 = load %struct.usb_qualifier_descriptor*, %struct.usb_qualifier_descriptor** %10, align 8
  %285 = getelementptr inbounds %struct.usb_qualifier_descriptor, %struct.usb_qualifier_descriptor* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %287

287:                                              ; preds = %319, %283
  %288 = load i32, i32* %6, align 4
  %289 = load i32, i32* %11, align 4
  %290 = icmp ult i32 %288, %289
  br i1 %290, label %291, label %322

291:                                              ; preds = %287
  %292 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %293 = load i32, i32* @USB_DT_OTHER_SPEED_CONFIG, align 4
  %294 = load i32, i32* %6, align 4
  %295 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %296 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* @TBUF_SIZE, align 4
  %299 = call i32 @usb_get_descriptor(%struct.usb_device* %292, i32 %293, i32 %294, i32* %297, i32 %298)
  store i32 %299, i32* %8, align 4
  %300 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @is_good_config(%struct.usbtest_dev* %300, i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %318, label %304

304:                                              ; preds = %291
  %305 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %306 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %305, i32 0, i32 1
  %307 = load i32, i32* %8, align 4
  %308 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %306, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* %8, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %304
  %312 = load i32, i32* %8, align 4
  br label %316

313:                                              ; preds = %304
  %314 = load i32, i32* @EDOM, align 4
  %315 = sub nsw i32 0, %314
  br label %316

316:                                              ; preds = %313, %311
  %317 = phi i32 [ %312, %311 ], [ %315, %313 ]
  store i32 %317, i32* %2, align 4
  br label %378

318:                                              ; preds = %291
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %6, align 4
  br label %287

322:                                              ; preds = %287
  br label %323

323:                                              ; preds = %322, %280
  br label %324

324:                                              ; preds = %323, %217
  %325 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %326 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %327 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %328 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = call i32 @usb_get_status(%struct.usb_device* %325, i32 %326, i32 0, i32* %329)
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %8, align 4
  %332 = icmp ne i32 %331, 2
  br i1 %332, label %333, label %347

333:                                              ; preds = %324
  %334 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %335 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %334, i32 0, i32 1
  %336 = load i32, i32* %8, align 4
  %337 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %335, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %336)
  %338 = load i32, i32* %8, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %333
  %341 = load i32, i32* %8, align 4
  br label %345

342:                                              ; preds = %333
  %343 = load i32, i32* @EDOM, align 4
  %344 = sub nsw i32 0, %343
  br label %345

345:                                              ; preds = %342, %340
  %346 = phi i32 [ %341, %340 ], [ %344, %342 ]
  store i32 %346, i32* %2, align 4
  br label %378

347:                                              ; preds = %324
  %348 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %349 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %350 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %351 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %350, i32 0, i32 2
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i64 0
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.usbtest_dev*, %struct.usbtest_dev** %3, align 8
  %358 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = call i32 @usb_get_status(%struct.usb_device* %348, i32 %349, i32 %356, i32* %359)
  store i32 %360, i32* %8, align 4
  %361 = load i32, i32* %8, align 4
  %362 = icmp ne i32 %361, 2
  br i1 %362, label %363, label %377

363:                                              ; preds = %347
  %364 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %365 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %364, i32 0, i32 1
  %366 = load i32, i32* %8, align 4
  %367 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %365, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %366)
  %368 = load i32, i32* %8, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %363
  %371 = load i32, i32* %8, align 4
  br label %375

372:                                              ; preds = %363
  %373 = load i32, i32* @EDOM, align 4
  %374 = sub nsw i32 0, %373
  br label %375

375:                                              ; preds = %372, %370
  %376 = phi i32 [ %371, %370 ], [ %374, %372 ]
  store i32 %376, i32* %2, align 4
  br label %378

377:                                              ; preds = %347
  store i32 0, i32* %2, align 4
  br label %378

378:                                              ; preds = %377, %375, %345, %316, %272, %253, %211, %175, %150, %88, %62
  %379 = load i32, i32* %2, align 4
  ret i32 %379
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @set_altsetting(%struct.usbtest_dev*, i32) #1

declare dso_local i32 @get_altsetting(%struct.usbtest_dev*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @is_good_config(%struct.usbtest_dev*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_get_status(%struct.usb_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
