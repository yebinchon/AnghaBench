; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_data_ep_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_data_ep_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audioformat = type { i32, i64 }
%struct.snd_usb_endpoint = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, %struct.snd_urb_ctx*, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_urb_ctx = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.snd_usb_endpoint* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.snd_urb_ctx*, i32, i32, i32 }

@SNDRV_PCM_FORMAT_U8 = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@MAX_PACKS = common dso_local global i64 0, align 8
@MAX_QUEUE = common dso_local global i32 0, align 4
@MAX_URBS = common dso_local global i32 0, align 4
@UAC_FORMAT_TYPE_II = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@snd_complete_urb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_endpoint*, i64, i32, i32, %struct.audioformat*, %struct.snd_usb_endpoint*)* @data_ep_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_ep_set_params(%struct.snd_usb_endpoint* %0, i64 %1, i32 %2, i32 %3, %struct.audioformat* %4, %struct.snd_usb_endpoint* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_usb_endpoint*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.audioformat*, align 8
  %13 = alloca %struct.snd_usb_endpoint*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.snd_urb_ctx*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.audioformat* %4, %struct.audioformat** %12, align 8
  store %struct.snd_usb_endpoint* %5, %struct.snd_usb_endpoint** %13, align 8
  %24 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %25 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_pipeout(i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @snd_pcm_format_physical_width(i64 %28)
  %30 = load i32, i32* %10, align 4
  %31 = mul i32 %29, %30
  store i32 %31, i32* %20, align 4
  %32 = load %struct.audioformat*, %struct.audioformat** %12, align 8
  %33 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %36 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %20, align 4
  %38 = ashr i32 %37, 3
  %39 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %40 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @SNDRV_PCM_FORMAT_U8, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 128, i32 0
  %46 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %47 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %6
  %53 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %54 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %20, align 4
  %58 = ashr i32 %57, 3
  %59 = udiv i32 %56, %58
  %60 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %61 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 16, %62
  %64 = shl i32 %59, %63
  %65 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %66 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  br label %90

67:                                               ; preds = %6
  %68 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %69 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %72 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 2
  %75 = add nsw i32 %70, %74
  %76 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %77 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %79 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = add i32 %80, 65535
  %82 = load i32, i32* %20, align 4
  %83 = ashr i32 %82, 3
  %84 = mul i32 %81, %83
  %85 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %86 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 16, %87
  %89 = lshr i32 %84, %88
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %67, %52
  %91 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %92 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %91, i32 0, i32 12
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %97 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %100 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  br label %105

101:                                              ; preds = %90
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %104 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %107 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %106, i32 0, i32 10
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @snd_usb_get_speed(i32 %110)
  %112 = load i64, i64* @USB_SPEED_FULL, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %116 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = ashr i32 8, %117
  store i32 %118, i32* %18, align 4
  br label %120

119:                                              ; preds = %105
  store i32 1, i32* %18, align 4
  br label %120

120:                                              ; preds = %119, %114
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %125 = call i32 @snd_usb_endpoint_implict_feedback_sink(%struct.snd_usb_endpoint* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %129 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %128, i32 0, i32 10
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @max(i32 %132, i32 1)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i64, i64* @MAX_PACKS, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @min(i32 %134, i32 %136)
  store i32 %137, i32* %16, align 4
  br label %139

138:                                              ; preds = %123, %120
  store i32 1, i32* %16, align 4
  br label %139

139:                                              ; preds = %138, %127
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %16, align 4
  %142 = mul i32 %141, %140
  store i32 %142, i32* %16, align 4
  %143 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %13, align 8
  %144 = icmp ne %struct.snd_usb_endpoint* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %147 = call i32 @snd_usb_endpoint_implict_feedback_sink(%struct.snd_usb_endpoint* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %13, align 8
  %152 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 1, %153
  %155 = call i32 @min(i32 %150, i32 %154)
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %149, %145, %139
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %205

159:                                              ; preds = %156
  %160 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %161 = call i32 @snd_usb_endpoint_implict_feedback_sink(%struct.snd_usb_endpoint* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %205, label %163

163:                                              ; preds = %159
  %164 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %165 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %168 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 16, %169
  %171 = ashr i32 %166, %170
  %172 = load i32, i32* %20, align 4
  %173 = ashr i32 %172, 3
  %174 = mul nsw i32 %171, %173
  store i32 %174, i32* %21, align 4
  %175 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %13, align 8
  %176 = icmp ne %struct.snd_usb_endpoint* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %163
  %178 = load i32, i32* %21, align 4
  %179 = lshr i32 %178, 3
  %180 = load i32, i32* %21, align 4
  %181 = sub i32 %180, %179
  store i32 %181, i32* %21, align 4
  br label %182

182:                                              ; preds = %177, %163
  %183 = load i32, i32* %21, align 4
  %184 = call i32 @max(i32 %183, i32 1)
  store i32 %184, i32* %21, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %21, align 4
  %187 = add i32 %185, %186
  %188 = sub i32 %187, 1
  %189 = load i32, i32* %21, align 4
  %190 = udiv i32 %188, %189
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp ult i32 %191, 2
  br i1 %192, label %193, label %194

193:                                              ; preds = %182
  store i32 2, i32* %17, align 4
  br label %204

194:                                              ; preds = %182
  %195 = load i32, i32* @MAX_QUEUE, align 4
  %196 = load i32, i32* %18, align 4
  %197 = mul i32 %195, %196
  %198 = load i32, i32* %16, align 4
  %199 = mul i32 %198, 2
  %200 = call i32 @max(i32 %197, i32 %199)
  store i32 %200, i32* %22, align 4
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %22, align 4
  %203 = call i32 @min(i32 %201, i32 %202)
  store i32 %203, i32* %17, align 4
  br label %204

204:                                              ; preds = %194, %193
  br label %224

205:                                              ; preds = %159, %156
  br label %206

206:                                              ; preds = %217, %205
  %207 = load i32, i32* %16, align 4
  %208 = icmp ugt i32 %207, 1
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %14, align 4
  %212 = mul i32 %210, %211
  %213 = load i32, i32* %11, align 4
  %214 = icmp uge i32 %212, %213
  br label %215

215:                                              ; preds = %209, %206
  %216 = phi i1 [ false, %206 ], [ %214, %209 ]
  br i1 %216, label %217, label %220

217:                                              ; preds = %215
  %218 = load i32, i32* %16, align 4
  %219 = lshr i32 %218, 1
  store i32 %219, i32* %16, align 4
  br label %206

220:                                              ; preds = %215
  %221 = load i32, i32* @MAX_URBS, align 4
  %222 = load i32, i32* %16, align 4
  %223 = mul i32 %221, %222
  store i32 %223, i32* %17, align 4
  br label %224

224:                                              ; preds = %220, %204
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %16, align 4
  %227 = add i32 %225, %226
  %228 = sub i32 %227, 1
  %229 = load i32, i32* %16, align 4
  %230 = udiv i32 %228, %229
  %231 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %232 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %231, i32 0, i32 8
  store i32 %230, i32* %232, align 8
  %233 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %234 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @MAX_URBS, align 4
  %237 = icmp ugt i32 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %224
  %239 = load i32, i32* @MAX_URBS, align 4
  %240 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %241 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %240, i32 0, i32 8
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* @MAX_URBS, align 4
  %243 = load i32, i32* %16, align 4
  %244 = mul i32 %242, %243
  store i32 %244, i32* %17, align 4
  br label %254

245:                                              ; preds = %224
  %246 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %247 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 8
  %249 = icmp ult i32 %248, 2
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %252 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %251, i32 0, i32 8
  store i32 2, i32* %252, align 8
  br label %253

253:                                              ; preds = %250, %245
  br label %254

254:                                              ; preds = %253, %238
  store i32 0, i32* %15, align 4
  br label %255

255:                                              ; preds = %384, %254
  %256 = load i32, i32* %15, align 4
  %257 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %258 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 8
  %260 = icmp ult i32 %256, %259
  br i1 %260, label %261, label %387

261:                                              ; preds = %255
  %262 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %263 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %262, i32 0, i32 11
  %264 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %263, align 8
  %265 = load i32, i32* %15, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %264, i64 %266
  store %struct.snd_urb_ctx* %267, %struct.snd_urb_ctx** %23, align 8
  %268 = load i32, i32* %15, align 4
  %269 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %270 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %272 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %273 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %272, i32 0, i32 5
  store %struct.snd_usb_endpoint* %271, %struct.snd_usb_endpoint** %273, align 8
  %274 = load i32, i32* %15, align 4
  %275 = add i32 %274, 1
  %276 = load i32, i32* %17, align 4
  %277 = mul i32 %275, %276
  %278 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %279 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 8
  %281 = udiv i32 %277, %280
  %282 = load i32, i32* %15, align 4
  %283 = load i32, i32* %17, align 4
  %284 = mul i32 %282, %283
  %285 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %286 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %285, i32 0, i32 8
  %287 = load i32, i32* %286, align 8
  %288 = udiv i32 %284, %287
  %289 = sub i32 %281, %288
  %290 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %291 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load i32, i32* %14, align 4
  %293 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %294 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = mul i32 %292, %295
  %297 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %298 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 8
  %299 = load %struct.audioformat*, %struct.audioformat** %12, align 8
  %300 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @UAC_FORMAT_TYPE_II, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %261
  %305 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %306 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %304, %261
  %310 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %311 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @GFP_KERNEL, align 4
  %314 = call %struct.TYPE_4__* @usb_alloc_urb(i32 %312, i32 %313)
  %315 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %316 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %315, i32 0, i32 4
  store %struct.TYPE_4__* %314, %struct.TYPE_4__** %316, align 8
  %317 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %318 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %317, i32 0, i32 4
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = icmp ne %struct.TYPE_4__* %319, null
  br i1 %320, label %322, label %321

321:                                              ; preds = %309
  br label %388

322:                                              ; preds = %309
  %323 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %324 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %323, i32 0, i32 10
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %329 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @GFP_KERNEL, align 4
  %332 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %333 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %332, i32 0, i32 4
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 6
  %336 = call i32 @usb_buffer_alloc(i32 %327, i32 %330, i32 %331, i32* %335)
  %337 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %338 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %337, i32 0, i32 4
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 5
  store i32 %336, i32* %340, align 4
  %341 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %342 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %341, i32 0, i32 4
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %322
  br label %388

348:                                              ; preds = %322
  %349 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %350 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %349, i32 0, i32 9
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %353 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %352, i32 0, i32 4
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 4
  store i32 %351, i32* %355, align 8
  %356 = load i32, i32* @URB_ISO_ASAP, align 4
  %357 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %358 = or i32 %356, %357
  %359 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %360 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %359, i32 0, i32 4
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  store i32 %358, i32* %362, align 8
  %363 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %364 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = shl i32 1, %365
  %367 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %368 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %367, i32 0, i32 4
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 1
  store i32 %366, i32* %370, align 4
  %371 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %372 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %373 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %372, i32 0, i32 4
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 3
  store %struct.snd_urb_ctx* %371, %struct.snd_urb_ctx** %375, align 8
  %376 = load i32, i32* @snd_complete_urb, align 4
  %377 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %378 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %377, i32 0, i32 4
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 2
  store i32 %376, i32* %380, align 8
  %381 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %23, align 8
  %382 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %381, i32 0, i32 3
  %383 = call i32 @INIT_LIST_HEAD(i32* %382)
  br label %384

384:                                              ; preds = %348
  %385 = load i32, i32* %15, align 4
  %386 = add i32 %385, 1
  store i32 %386, i32* %15, align 4
  br label %255

387:                                              ; preds = %255
  store i32 0, i32* %7, align 4
  br label %393

388:                                              ; preds = %347, %321
  %389 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %390 = call i32 @release_urbs(%struct.snd_usb_endpoint* %389, i32 0)
  %391 = load i32, i32* @ENOMEM, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %7, align 4
  br label %393

393:                                              ; preds = %388, %387
  %394 = load i32, i32* %7, align 4
  ret i32 %394
}

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i64) #1

declare dso_local i64 @snd_usb_get_speed(i32) #1

declare dso_local i32 @snd_usb_endpoint_implict_feedback_sink(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @release_urbs(%struct.snd_usb_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
