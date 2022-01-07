; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_handle_ep0_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_handle_ep0_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usba_ep = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@DATA_STAGE_IN = common dso_local global i32 0, align 4
@SET_STA = common dso_local global i32 0, align 4
@USBA_TX_PK_RDY = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@CLR_STA = common dso_local global i32 0, align 4
@USBA_FORCE_STALL = common dso_local global i32 0, align 4
@USBA_TOGGLE_CLR = common dso_local global i32 0, align 4
@STATUS_STAGE_TEST = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@STATUS_STAGE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"udc: %s: Invalid setup request: %02x.%02x v%04x i%04x l%d, halting endpoint...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*, %struct.usba_ep*, %struct.usb_ctrlrequest*)* @handle_ep0_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ep0_setup(%struct.usba_udc* %0, %struct.usba_ep* %1, %struct.usb_ctrlrequest* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usba_udc*, align 8
  %6 = alloca %struct.usba_ep*, align 8
  %7 = alloca %struct.usb_ctrlrequest*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usba_ep*, align 8
  %11 = alloca %struct.usba_ep*, align 8
  %12 = alloca %struct.usba_ep*, align 8
  store %struct.usba_udc* %0, %struct.usba_udc** %5, align 8
  store %struct.usba_ep* %1, %struct.usba_ep** %6, align 8
  store %struct.usb_ctrlrequest* %2, %struct.usb_ctrlrequest** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %255 [
    i32 130, label %16
    i32 131, label %90
    i32 128, label %158
    i32 129, label %233
  ]

16:                                               ; preds = %3
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @USB_DIR_IN, align 4
  %21 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %26 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @cpu_to_le16(i32 %27)
  store i32 %28, i32* %9, align 4
  br label %70

29:                                               ; preds = %16
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %31 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @cpu_to_le16(i32 0)
  store i32 %38, i32* %9, align 4
  br label %69

39:                                               ; preds = %29
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USB_DIR_IN, align 4
  %44 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %39
  %48 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %49 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %50 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = call %struct.usba_ep* @get_ep_by_addr(%struct.usba_udc* %48, i32 %52)
  store %struct.usba_ep* %53, %struct.usba_ep** %10, align 8
  %54 = load %struct.usba_ep*, %struct.usba_ep** %10, align 8
  %55 = icmp ne %struct.usba_ep* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %274

57:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  %58 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %59 = load %struct.usba_ep*, %struct.usba_ep** %10, align 8
  %60 = call i32 @is_stalled(%struct.usba_udc* %58, %struct.usba_ep* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i32 @cpu_to_le16(i32 1)
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %57
  br label %68

67:                                               ; preds = %39
  br label %256

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %37
  br label %70

70:                                               ; preds = %69, %24
  %71 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %72 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cpu_to_le16(i32 4)
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %274

77:                                               ; preds = %70
  %78 = load i32, i32* @DATA_STAGE_IN, align 4
  %79 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %80 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %83 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @__raw_writew(i32 %81, i32 %84)
  %86 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %87 = load i32, i32* @SET_STA, align 4
  %88 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %89 = call i32 @usba_ep_writel(%struct.usba_ep* %86, i32 %87, i32 %88)
  br label %272

90:                                               ; preds = %3
  %91 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %92 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %98 = call i32 @feature_is_dev_remote_wakeup(%struct.usb_ctrlrequest* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %102 = shl i32 1, %101
  %103 = xor i32 %102, -1
  %104 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %105 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %109

108:                                              ; preds = %96
  br label %274

109:                                              ; preds = %100
  br label %154

110:                                              ; preds = %90
  %111 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %112 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %110
  %117 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %118 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @cpu_to_le16(i32 0)
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %124 = call i32 @feature_is_ep_halt(%struct.usb_ctrlrequest* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122, %116
  br label %274

127:                                              ; preds = %122
  %128 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %129 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %130 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = call %struct.usba_ep* @get_ep_by_addr(%struct.usba_udc* %128, i32 %132)
  store %struct.usba_ep* %133, %struct.usba_ep** %11, align 8
  %134 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %135 = icmp ne %struct.usba_ep* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %127
  br label %274

137:                                              ; preds = %127
  %138 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %139 = load i32, i32* @CLR_STA, align 4
  %140 = load i32, i32* @USBA_FORCE_STALL, align 4
  %141 = call i32 @usba_ep_writel(%struct.usba_ep* %138, i32 %139, i32 %140)
  %142 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %143 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %148 = load i32, i32* @CLR_STA, align 4
  %149 = load i32, i32* @USBA_TOGGLE_CLR, align 4
  %150 = call i32 @usba_ep_writel(%struct.usba_ep* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %137
  br label %153

152:                                              ; preds = %110
  br label %256

153:                                              ; preds = %151
  br label %154

154:                                              ; preds = %153, %109
  %155 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %156 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %157 = call i32 @send_status(%struct.usba_udc* %155, %struct.usba_ep* %156)
  br label %272

158:                                              ; preds = %3
  %159 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %160 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %195

164:                                              ; preds = %158
  %165 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %166 = call i32 @feature_is_dev_test_mode(%struct.usb_ctrlrequest* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %164
  %169 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %170 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %171 = call i32 @send_status(%struct.usba_udc* %169, %struct.usba_ep* %170)
  %172 = load i32, i32* @STATUS_STAGE_TEST, align 4
  %173 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %174 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %176 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le16_to_cpu(i32 %177)
  %179 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %180 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  store i32 0, i32* %4, align 4
  br label %301

181:                                              ; preds = %164
  %182 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %183 = call i32 @feature_is_dev_remote_wakeup(%struct.usb_ctrlrequest* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %187 = shl i32 1, %186
  %188 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %189 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %193

192:                                              ; preds = %181
  br label %274

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %193
  br label %229

195:                                              ; preds = %158
  %196 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %197 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %227

201:                                              ; preds = %195
  %202 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %203 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @cpu_to_le16(i32 0)
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %201
  %208 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %209 = call i32 @feature_is_ep_halt(%struct.usb_ctrlrequest* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %207, %201
  br label %274

212:                                              ; preds = %207
  %213 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %214 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %215 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @le16_to_cpu(i32 %216)
  %218 = call %struct.usba_ep* @get_ep_by_addr(%struct.usba_udc* %213, i32 %217)
  store %struct.usba_ep* %218, %struct.usba_ep** %12, align 8
  %219 = load %struct.usba_ep*, %struct.usba_ep** %12, align 8
  %220 = icmp ne %struct.usba_ep* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %212
  br label %274

222:                                              ; preds = %212
  %223 = load %struct.usba_ep*, %struct.usba_ep** %12, align 8
  %224 = load i32, i32* @SET_STA, align 4
  %225 = load i32, i32* @USBA_FORCE_STALL, align 4
  %226 = call i32 @usba_ep_writel(%struct.usba_ep* %223, i32 %224, i32 %225)
  br label %228

227:                                              ; preds = %195
  br label %256

228:                                              ; preds = %222
  br label %229

229:                                              ; preds = %228, %194
  %230 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %231 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %232 = call i32 @send_status(%struct.usba_udc* %230, %struct.usba_ep* %231)
  br label %272

233:                                              ; preds = %3
  %234 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %235 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @USB_DIR_OUT, align 4
  %238 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %239 = or i32 %237, %238
  %240 = icmp ne i32 %236, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  br label %256

242:                                              ; preds = %233
  %243 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %244 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %245 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @le16_to_cpu(i32 %246)
  %248 = call i32 @set_address(%struct.usba_udc* %243, i32 %247)
  %249 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %250 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %251 = call i32 @send_status(%struct.usba_udc* %249, %struct.usba_ep* %250)
  %252 = load i32, i32* @STATUS_STAGE_ADDR, align 4
  %253 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %254 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  br label %272

255:                                              ; preds = %3
  br label %256

256:                                              ; preds = %255, %241, %227, %152, %67
  %257 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %258 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %257, i32 0, i32 1
  %259 = call i32 @spin_unlock(i32* %258)
  %260 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %261 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %260, i32 0, i32 3
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %263, align 8
  %265 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %266 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %265, i32 0, i32 2
  %267 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %268 = call i32 %264(i32* %266, %struct.usb_ctrlrequest* %267)
  store i32 %268, i32* %8, align 4
  %269 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %270 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %269, i32 0, i32 1
  %271 = call i32 @spin_lock(i32* %270)
  br label %272

272:                                              ; preds = %256, %242, %229, %154, %77
  %273 = load i32, i32* %8, align 4
  store i32 %273, i32* %4, align 4
  br label %301

274:                                              ; preds = %221, %211, %192, %136, %126, %108, %76, %56
  %275 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %276 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %280 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %283 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %286 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @le16_to_cpu(i32 %287)
  %289 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %290 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @le16_to_cpu(i32 %291)
  %293 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %294 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @le16_to_cpu(i32 %295)
  %297 = call i32 @pr_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %278, i32 %281, i32 %284, i32 %288, i32 %292, i32 %296)
  %298 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %299 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %300 = call i32 @set_protocol_stall(%struct.usba_udc* %298, %struct.usba_ep* %299)
  store i32 -1, i32* %4, align 4
  br label %301

301:                                              ; preds = %274, %272, %168
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.usba_ep* @get_ep_by_addr(%struct.usba_udc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @is_stalled(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @feature_is_dev_remote_wakeup(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @feature_is_ep_halt(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @send_status(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i32 @feature_is_dev_test_mode(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @set_address(%struct.usba_udc*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_protocol_stall(%struct.usba_udc*, %struct.usba_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
