; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_setup_received_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_setup_received_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_udc = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, i32*)* }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.fsl_ep = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DEVICE_B_HNP_ENABLE = common dso_local global i32 0, align 4
@USB_DEVICE_A_HNP_SUPPORT = common dso_local global i32 0, align 4
@USB_DEVICE_A_ALT_HNP_SUPPORT = common dso_local global i32 0, align 4
@EP_DIR_IN = common dso_local global i32 0, align 4
@DATA_STATE_XMIT = common dso_local global i32 0, align 4
@DATA_STATE_RECV = common dso_local global i32 0, align 4
@WAIT_FOR_OUT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*, %struct.usb_ctrlrequest*)* @setup_received_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_received_irq(%struct.fsl_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.fsl_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_ep*, align 8
  store %struct.fsl_udc* %0, %struct.fsl_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le16_to_cpu(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %24 = call i32 @udc_reset_ep_queue(%struct.fsl_udc* %23, i32 0)
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %183 [
    i32 130, label %28
    i32 129, label %50
    i32 131, label %67
    i32 128, label %67
  ]

28:                                               ; preds = %2
  %29 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %30 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @USB_DIR_IN, align 4
  %33 = load i32, i32* @USB_TYPE_MASK, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @USB_DIR_IN, align 4
  %37 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %184

41:                                               ; preds = %28
  %42 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %43 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @ch9getstatus(%struct.fsl_udc* %42, i32 %45, i64 %46, i64 %47, i64 %48)
  br label %265

50:                                               ; preds = %2
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @USB_DIR_OUT, align 4
  %55 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %58 = or i32 %56, %57
  %59 = icmp ne i32 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %184

61:                                               ; preds = %50
  %62 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @ch9setaddress(%struct.fsl_udc* %62, i64 %63, i64 %64, i64 %65)
  br label %265

67:                                               ; preds = %2, %2
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %71 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @USB_RECIP_MASK, align 4
  %74 = load i32, i32* @USB_TYPE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %78 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %79 = or i32 %77, %78
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %67
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @get_pipe_by_windex(i64 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i64, i64* %5, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %92 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %86, %81
  br label %184

96:                                               ; preds = %89
  %97 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call %struct.fsl_ep* @get_ep_by_pipe(%struct.fsl_udc* %97, i32 %98)
  store %struct.fsl_ep* %99, %struct.fsl_ep** %10, align 8
  %100 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %101 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %100, i32 0, i32 3
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.fsl_ep*, %struct.fsl_ep** %10, align 8
  %104 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %103, i32 0, i32 0
  %105 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %106 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 128
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = call i32 @fsl_ep_set_halt(i32* %104, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %113 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %112, i32 0, i32 3
  %114 = call i32 @spin_lock(i32* %113)
  br label %170

115:                                              ; preds = %67
  %116 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %117 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @USB_RECIP_MASK, align 4
  %120 = load i32, i32* @USB_TYPE_MASK, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %124 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %125 = or i32 %123, %124
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %168

127:                                              ; preds = %115
  %128 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %129 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %128, i32 0, i32 5
  %130 = call i32 @gadget_is_otg(%struct.TYPE_6__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %184

133:                                              ; preds = %127
  %134 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %135 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @USB_DEVICE_B_HNP_ENABLE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %141 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  br label %166

143:                                              ; preds = %133
  %144 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %145 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @USB_DEVICE_A_HNP_SUPPORT, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %151 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  br label %165

153:                                              ; preds = %143
  %154 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %155 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @USB_DEVICE_A_ALT_HNP_SUPPORT, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %161 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i32 1, i32* %162, align 4
  br label %164

163:                                              ; preds = %153
  br label %184

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164, %149
  br label %166

166:                                              ; preds = %165, %139
  br label %167

167:                                              ; preds = %166
  store i32 0, i32* %8, align 4
  br label %169

168:                                              ; preds = %115
  br label %184

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %169, %96
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %175 = load i32, i32* @EP_DIR_IN, align 4
  %176 = call i32 @ep0_prime_status(%struct.fsl_udc* %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %180 = call i32 @ep0stall(%struct.fsl_udc* %179)
  br label %181

181:                                              ; preds = %178, %173
  br label %182

182:                                              ; preds = %181, %170
  br label %265

183:                                              ; preds = %2
  br label %184

184:                                              ; preds = %183, %168, %163, %132, %95, %60, %40
  %185 = load i64, i64* %7, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %237

187:                                              ; preds = %184
  %188 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %189 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @USB_DIR_IN, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @USB_DIR_IN, align 4
  br label %198

196:                                              ; preds = %187
  %197 = load i32, i32* @USB_DIR_OUT, align 4
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %200 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %201 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %203 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %202, i32 0, i32 3
  %204 = call i32 @spin_unlock(i32* %203)
  %205 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %206 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %205, i32 0, i32 6
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i64 (%struct.TYPE_6__*, i32*)*, i64 (%struct.TYPE_6__*, i32*)** %208, align 8
  %210 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %211 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %210, i32 0, i32 5
  %212 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %213 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %212, i32 0, i32 4
  %214 = call i64 %209(%struct.TYPE_6__* %211, i32* %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %198
  %217 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %218 = call i32 @ep0stall(%struct.fsl_udc* %217)
  br label %219

219:                                              ; preds = %216, %198
  %220 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %221 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %220, i32 0, i32 3
  %222 = call i32 @spin_lock(i32* %221)
  %223 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %224 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @USB_DIR_IN, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %219
  %230 = load i32, i32* @DATA_STATE_XMIT, align 4
  br label %233

231:                                              ; preds = %219
  %232 = load i32, i32* @DATA_STATE_RECV, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  %235 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %236 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  br label %265

237:                                              ; preds = %184
  %238 = load i32, i32* @USB_DIR_IN, align 4
  %239 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %240 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %242 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %241, i32 0, i32 3
  %243 = call i32 @spin_unlock(i32* %242)
  %244 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %245 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %244, i32 0, i32 6
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i64 (%struct.TYPE_6__*, i32*)*, i64 (%struct.TYPE_6__*, i32*)** %247, align 8
  %249 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %250 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %249, i32 0, i32 5
  %251 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %252 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %251, i32 0, i32 4
  %253 = call i64 %248(%struct.TYPE_6__* %250, i32* %252)
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %237
  %256 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %257 = call i32 @ep0stall(%struct.fsl_udc* %256)
  br label %258

258:                                              ; preds = %255, %237
  %259 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %260 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %259, i32 0, i32 3
  %261 = call i32 @spin_lock(i32* %260)
  %262 = load i32, i32* @WAIT_FOR_OUT_STATUS, align 4
  %263 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %264 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  br label %265

265:                                              ; preds = %41, %61, %182, %258, %233
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @udc_reset_ep_queue(%struct.fsl_udc*, i32) #1

declare dso_local i32 @ch9getstatus(%struct.fsl_udc*, i32, i64, i64, i64) #1

declare dso_local i32 @ch9setaddress(%struct.fsl_udc*, i64, i64, i64) #1

declare dso_local i32 @get_pipe_by_windex(i64) #1

declare dso_local %struct.fsl_ep* @get_ep_by_pipe(%struct.fsl_udc*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsl_ep_set_halt(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gadget_is_otg(%struct.TYPE_6__*) #1

declare dso_local i32 @ep0_prime_status(%struct.fsl_udc*, i32) #1

declare dso_local i32 @ep0stall(%struct.fsl_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
