; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_connect_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_connect_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.usb_device*, i32, i32*, i64, i32, i32, %struct.TYPE_7__*, %struct.device* }
%struct.usb_device = type { i64, i32, i64, i64, i64, %struct.usb_device**, %struct.TYPE_8__, %struct.device, i32, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.device = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)* }

@.str = private unnamed_addr constant [39 x i8] c"port %d, status %04x, change %04x, %s\0A\00", align 1
@HUB_LED_AUTO = common dso_local global i32 0, align 4
@INDICATOR_AUTO = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"connect-debounce failed, port %d disabled\0A\00", align 1
@HUB_CHAR_LPSM = common dso_local global i32 0, align 4
@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4
@SET_CONFIG_TRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"couldn't allocate port %d usb_device\0A\00", align 1
@USB_STATE_POWERED = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@USB_CLASS_HUB = common dso_local global i64 0, align 8
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"get status %d ?\0A\00", align 1
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"can't connect bus-powered hub to this port\0A\00", align 1
@INDICATOR_AMBER_BLINK = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@highspeed_hubs = common dso_local global i64 0, align 8
@device_state_lock = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"%dmA power budget left\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"unable to enumerate USB device on port %d\0A\00", align 1
@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32, i32, i32)* @hub_port_connect_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_port_connect_change(%struct.usb_hub* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usb_hub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.usb_hcd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %18 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %17, i32 0, i32 1
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %9, align 8
  %20 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %21 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %20, i32 0, i32 8
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %10, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 10
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call %struct.usb_hcd* @bus_to_hcd(%struct.TYPE_9__* %25)
  store %struct.usb_hcd* %26, %struct.usb_hcd** %11, align 8
  %27 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %28 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %27, i32 0, i32 7
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @portspeed(%struct.usb_hub* %37, i32 %38)
  %40 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %42 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %4
  %46 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @HUB_LED_AUTO, align 4
  %49 = call i32 @set_port_led(%struct.usb_hub* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @INDICATOR_AUTO, align 4
  %51 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %52 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %50, i32* %57, align 4
  br label %58

58:                                               ; preds = %45, %4
  %59 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 5
  %61 = load %struct.usb_device**, %struct.usb_device*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %61, i64 %64
  %66 = load %struct.usb_device*, %struct.usb_device** %65, align 8
  store %struct.usb_device* %66, %struct.usb_device** %13, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %58
  %72 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %73 = icmp ne %struct.usb_device* %72, null
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  %75 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %76 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %82 = call i32 @usb_lock_device(%struct.usb_device* %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 0, i32* %14, align 4
  br label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %88, %87
  %92 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %93 = call i32 @usb_unlock_device(%struct.usb_device* %92)
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %99 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @clear_bit(i32 %97, i32 %100)
  br label %477

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %74, %71, %58
  %104 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %105 = icmp ne %struct.usb_device* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %108 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %107, i32 0, i32 5
  %109 = load %struct.usb_device**, %struct.usb_device*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %109, i64 %112
  %114 = call i32 @usb_disconnect(%struct.usb_device** %113)
  br label %115

115:                                              ; preds = %106, %103
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %118 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @clear_bit(i32 %116, i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125, %115
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %133 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @clear_bit(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %130, %125
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %139 = load i32, i32* @USB_PORT_STAT_C_ENABLE, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %136
  %144 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @hub_port_debounce(%struct.usb_hub* %144, i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %143
  %150 = call i64 (...) @printk_ratelimit()
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load %struct.device*, %struct.device** %10, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %153, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %152, %149
  %157 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %7, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %7, align 4
  br label %163

161:                                              ; preds = %143
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %161, %156
  br label %164

164:                                              ; preds = %163, %136
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %172 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @test_bit(i32 %170, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %169, %164
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @HUB_CHAR_LPSM, align 4
  %179 = and i32 %177, %178
  %180 = icmp ult i32 %179, 2
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @port_is_power_on(%struct.usb_hub* %182, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %190 = call i32 @set_port_feature(%struct.usb_device* %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %181, %176
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %451

197:                                              ; preds = %191
  br label %477

198:                                              ; preds = %169
  store i32 0, i32* %15, align 4
  br label %199

199:                                              ; preds = %419, %198
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* @SET_CONFIG_TRIES, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %422

203:                                              ; preds = %199
  %204 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %205 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %206 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %205, i32 0, i32 10
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call %struct.usb_device* @usb_alloc_dev(%struct.usb_device* %204, %struct.TYPE_9__* %207, i32 %208)
  store %struct.usb_device* %209, %struct.usb_device** %13, align 8
  %210 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %211 = icmp ne %struct.usb_device* %210, null
  br i1 %211, label %216, label %212

212:                                              ; preds = %203
  %213 = load %struct.device*, %struct.device** %10, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %213, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  br label %451

216:                                              ; preds = %203
  %217 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %218 = load i32, i32* @USB_STATE_POWERED, align 4
  %219 = call i32 @usb_set_device_state(%struct.usb_device* %217, i32 %218)
  %220 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %221 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %224 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  %225 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %226 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %225, i32 0, i32 9
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  %229 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %230 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %229, i32 0, i32 9
  store i64 %228, i64* %230, align 8
  %231 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %232 = call i32 @hub_is_wusb(%struct.usb_hub* %231)
  %233 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %234 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  %235 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %236 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %235, i32 0, i32 1
  %237 = load %struct.usb_device*, %struct.usb_device** %236, align 8
  %238 = call i64 @hub_is_superspeed(%struct.usb_device* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %216
  %241 = load i64, i64* @USB_SPEED_SUPER, align 8
  %242 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %243 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %242, i32 0, i32 2
  store i64 %241, i64* %243, align 8
  br label %248

244:                                              ; preds = %216
  %245 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %246 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %247 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  br label %248

248:                                              ; preds = %244, %240
  %249 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %250 = call i32 @choose_devnum(%struct.usb_device* %249)
  %251 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %252 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp sle i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load i32, i32* @ENOTCONN, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %14, align 4
  br label %399

258:                                              ; preds = %248
  %259 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %260 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* %15, align 4
  %263 = call i32 @hub_port_init(%struct.usb_hub* %259, %struct.usb_device* %260, i32 %261, i32 %262)
  store i32 %263, i32* %14, align 4
  %264 = load i32, i32* %14, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  br label %399

267:                                              ; preds = %258
  %268 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %269 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %268, i32 0, i32 6
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @USB_CLASS_HUB, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %321

274:                                              ; preds = %267
  %275 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %276 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = icmp sle i32 %277, 100
  br i1 %278, label %279, label %321

279:                                              ; preds = %274
  %280 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %281 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %282 = call i32 @usb_get_status(%struct.usb_device* %280, i32 %281, i32 0, i32* %16)
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %14, align 4
  %284 = icmp slt i32 %283, 2
  br i1 %284, label %285, label %290

285:                                              ; preds = %279
  %286 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %287 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %286, i32 0, i32 7
  %288 = load i32, i32* %14, align 4
  %289 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %287, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %288)
  br label %395

290:                                              ; preds = %279
  %291 = call i32 @le16_to_cpus(i32* %16)
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %294 = shl i32 1, %293
  %295 = and i32 %292, %294
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %320

297:                                              ; preds = %290
  %298 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %299 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %298, i32 0, i32 7
  %300 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %299, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %301 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %302 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %317

305:                                              ; preds = %297
  %306 = load i32, i32* @INDICATOR_AMBER_BLINK, align 4
  %307 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %308 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %307, i32 0, i32 3
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sub nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  store i32 %306, i32* %313, align 4
  %314 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %315 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %314, i32 0, i32 2
  %316 = call i32 @schedule_delayed_work(i32* %315, i32 0)
  br label %317

317:                                              ; preds = %305, %297
  %318 = load i32, i32* @ENOTCONN, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %14, align 4
  br label %395

320:                                              ; preds = %290
  br label %321

321:                                              ; preds = %320, %274, %267
  %322 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %323 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %322, i32 0, i32 6
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @le16_to_cpu(i32 %325)
  %327 = icmp sge i32 %326, 512
  br i1 %327, label %328, label %342

328:                                              ; preds = %321
  %329 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %330 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @USB_SPEED_FULL, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %328
  %335 = load i64, i64* @highspeed_hubs, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %334
  %338 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %339 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %340 = load i32, i32* %6, align 4
  %341 = call i32 @check_highspeed(%struct.usb_hub* %338, %struct.usb_device* %339, i32 %340)
  br label %342

342:                                              ; preds = %337, %334, %328, %321
  store i32 0, i32* %14, align 4
  %343 = call i32 @spin_lock_irq(i32* @device_state_lock)
  %344 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %345 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load i32, i32* @ENOTCONN, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %14, align 4
  br label %361

352:                                              ; preds = %342
  %353 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %354 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %355 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %354, i32 0, i32 5
  %356 = load %struct.usb_device**, %struct.usb_device*** %355, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %356, i64 %359
  store %struct.usb_device* %353, %struct.usb_device** %360, align 8
  br label %361

361:                                              ; preds = %352, %349
  %362 = call i32 @spin_unlock_irq(i32* @device_state_lock)
  %363 = load i32, i32* %14, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %381, label %365

365:                                              ; preds = %361
  %366 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %367 = call i32 @usb_new_device(%struct.usb_device* %366)
  store i32 %367, i32* %14, align 4
  %368 = load i32, i32* %14, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %380

370:                                              ; preds = %365
  %371 = call i32 @spin_lock_irq(i32* @device_state_lock)
  %372 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %373 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %372, i32 0, i32 5
  %374 = load %struct.usb_device**, %struct.usb_device*** %373, align 8
  %375 = load i32, i32* %6, align 4
  %376 = sub nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %374, i64 %377
  store %struct.usb_device* null, %struct.usb_device** %378, align 8
  %379 = call i32 @spin_unlock_irq(i32* @device_state_lock)
  br label %380

380:                                              ; preds = %370, %365
  br label %381

381:                                              ; preds = %380, %361
  %382 = load i32, i32* %14, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  br label %395

385:                                              ; preds = %381
  %386 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %387 = call i32 @hub_power_remaining(%struct.usb_hub* %386)
  store i32 %387, i32* %14, align 4
  %388 = load i32, i32* %14, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %385
  %391 = load %struct.device*, %struct.device** %10, align 8
  %392 = load i32, i32* %14, align 4
  %393 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %391, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %392)
  br label %394

394:                                              ; preds = %390, %385
  br label %477

395:                                              ; preds = %384, %317, %285
  %396 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %397 = load i32, i32* %6, align 4
  %398 = call i32 @hub_port_disable(%struct.usb_hub* %396, i32 %397, i32 1)
  br label %399

399:                                              ; preds = %395, %266, %255
  %400 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %401 = call i32 @usb_ep0_reinit(%struct.usb_device* %400)
  %402 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %403 = call i32 @release_devnum(%struct.usb_device* %402)
  %404 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %405 = call i32 @hub_free_dev(%struct.usb_device* %404)
  %406 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %407 = call i32 @usb_put_dev(%struct.usb_device* %406)
  %408 = load i32, i32* %14, align 4
  %409 = load i32, i32* @ENOTCONN, align 4
  %410 = sub nsw i32 0, %409
  %411 = icmp eq i32 %408, %410
  br i1 %411, label %417, label %412

412:                                              ; preds = %399
  %413 = load i32, i32* %14, align 4
  %414 = load i32, i32* @ENOTSUPP, align 4
  %415 = sub nsw i32 0, %414
  %416 = icmp eq i32 %413, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %412, %399
  br label %422

418:                                              ; preds = %412
  br label %419

419:                                              ; preds = %418
  %420 = load i32, i32* %15, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %15, align 4
  br label %199

422:                                              ; preds = %417, %199
  %423 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %424 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %423, i32 0, i32 1
  %425 = load %struct.usb_device*, %struct.usb_device** %424, align 8
  %426 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %425, i32 0, i32 4
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %446, label %429

429:                                              ; preds = %422
  %430 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %431 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %430, i32 0, i32 0
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 1
  %434 = load i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)** %433, align 8
  %435 = icmp ne i32 (%struct.usb_hcd*, i32)* %434, null
  br i1 %435, label %436, label %446

436:                                              ; preds = %429
  %437 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %438 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %437, i32 0, i32 0
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  %441 = load i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)** %440, align 8
  %442 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %443 = load i32, i32* %6, align 4
  %444 = call i32 %441(%struct.usb_hcd* %442, i32 %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %450, label %446

446:                                              ; preds = %436, %429, %422
  %447 = load %struct.device*, %struct.device** %10, align 8
  %448 = load i32, i32* %6, align 4
  %449 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %447, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %448)
  br label %450

450:                                              ; preds = %446, %436
  br label %451

451:                                              ; preds = %450, %212, %196
  %452 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %453 = load i32, i32* %6, align 4
  %454 = call i32 @hub_port_disable(%struct.usb_hub* %452, i32 %453, i32 1)
  %455 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %456 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %455, i32 0, i32 0
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 0
  %459 = load i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)** %458, align 8
  %460 = icmp ne i32 (%struct.usb_hcd*, i32)* %459, null
  br i1 %460, label %461, label %477

461:                                              ; preds = %451
  %462 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %463 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %462, i32 0, i32 1
  %464 = load %struct.usb_device*, %struct.usb_device** %463, align 8
  %465 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %464, i32 0, i32 4
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %477, label %468

468:                                              ; preds = %461
  %469 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %470 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %469, i32 0, i32 0
  %471 = load %struct.TYPE_6__*, %struct.TYPE_6__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 0
  %473 = load i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)** %472, align 8
  %474 = load %struct.usb_hcd*, %struct.usb_hcd** %11, align 8
  %475 = load i32, i32* %6, align 4
  %476 = call i32 %473(%struct.usb_hcd* %474, i32 %475)
  br label %477

477:                                              ; preds = %96, %197, %394, %468, %461, %451
  ret void
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.TYPE_9__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @portspeed(%struct.usb_hub*, i32) #1

declare dso_local i32 @set_port_led(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @usb_disconnect(%struct.usb_device**) #1

declare dso_local i32 @hub_port_debounce(%struct.usb_hub*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @port_is_power_on(%struct.usb_hub*, i32) #1

declare dso_local i32 @set_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local %struct.usb_device* @usb_alloc_dev(%struct.usb_device*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @hub_is_wusb(%struct.usb_hub*) #1

declare dso_local i64 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local i32 @choose_devnum(%struct.usb_device*) #1

declare dso_local i32 @hub_port_init(%struct.usb_hub*, %struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_get_status(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @check_highspeed(%struct.usb_hub*, %struct.usb_device*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_new_device(%struct.usb_device*) #1

declare dso_local i32 @hub_power_remaining(%struct.usb_hub*) #1

declare dso_local i32 @hub_port_disable(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @usb_ep0_reinit(%struct.usb_device*) #1

declare dso_local i32 @release_devnum(%struct.usb_device*) #1

declare dso_local i32 @hub_free_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
