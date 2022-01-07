; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_snd_usb_handle_sync_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_snd_usb_handle_sync_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.snd_usb_packet_info* }
%struct.snd_usb_packet_info = type { i32, i32* }
%struct.urb = type { %struct.TYPE_2__*, i32, %struct.snd_urb_ctx* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.snd_urb_ctx = type { i32 }

@MAX_URBS = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_handle_sync_urb(%struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.snd_usb_endpoint*, align 8
  %5 = alloca %struct.snd_usb_endpoint*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_urb_ctx*, align 8
  %13 = alloca %struct.snd_usb_packet_info*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %4, align 8
  store %struct.snd_usb_endpoint* %1, %struct.snd_usb_endpoint** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %14 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %15 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %16 = icmp eq %struct.snd_usb_endpoint* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @snd_BUG_ON(i32 %17)
  %19 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %20 = call i64 @snd_usb_endpoint_implict_feedback_sink(%struct.snd_usb_endpoint* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %146

22:                                               ; preds = %3
  %23 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %24 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %146

27:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  %28 = load %struct.urb*, %struct.urb** %6, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %29, align 8
  store %struct.snd_urb_ctx* %30, %struct.snd_urb_ctx** %12, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %59, %27
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %12, align 8
  %34 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %31
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %47, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %31

62:                                               ; preds = %31
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %289

66:                                               ; preds = %62
  %67 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %68 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %67, i32 0, i32 7
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %72 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %71, i32 0, i32 8
  %73 = load %struct.snd_usb_packet_info*, %struct.snd_usb_packet_info** %72, align 8
  %74 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %75 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.snd_usb_packet_info, %struct.snd_usb_packet_info* %73, i64 %77
  store %struct.snd_usb_packet_info* %78, %struct.snd_usb_packet_info** %13, align 8
  %79 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %12, align 8
  %80 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.snd_usb_packet_info*, %struct.snd_usb_packet_info** %13, align 8
  %83 = getelementptr inbounds %struct.snd_usb_packet_info, %struct.snd_usb_packet_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %127, %66
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %12, align 8
  %87 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %84
  %91 = load %struct.urb*, %struct.urb** %6, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %90
  %101 = load %struct.urb*, %struct.urb** %6, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %110 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %108, %111
  %113 = load %struct.snd_usb_packet_info*, %struct.snd_usb_packet_info** %13, align 8
  %114 = getelementptr inbounds %struct.snd_usb_packet_info, %struct.snd_usb_packet_info* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %126

119:                                              ; preds = %90
  %120 = load %struct.snd_usb_packet_info*, %struct.snd_usb_packet_info** %13, align 8
  %121 = getelementptr inbounds %struct.snd_usb_packet_info, %struct.snd_usb_packet_info* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %100
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %84

130:                                              ; preds = %84
  %131 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %132 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @MAX_URBS, align 4
  %136 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %137 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = srem i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %141 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %140, i32 0, i32 7
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  %144 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %145 = call i32 @queue_pending_output_urbs(%struct.snd_usb_endpoint* %144)
  br label %289

146:                                              ; preds = %22, %3
  %147 = load %struct.urb*, %struct.urb** %6, align 8
  %148 = getelementptr inbounds %struct.urb, %struct.urb* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %146
  %155 = load %struct.urb*, %struct.urb** %6, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %163

162:                                              ; preds = %154, %146
  br label %289

163:                                              ; preds = %154
  %164 = load %struct.urb*, %struct.urb** %6, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @le32_to_cpup(i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load %struct.urb*, %struct.urb** %6, align 8
  %169 = getelementptr inbounds %struct.urb, %struct.urb* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load i32, i32* %8, align 4
  %177 = and i32 %176, 16777215
  store i32 %177, i32* %8, align 4
  br label %181

178:                                              ; preds = %163
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, 268435455
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %289

185:                                              ; preds = %181
  %186 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %187 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @INT_MIN, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %232

194:                                              ; preds = %185
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %206, %194
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %198 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %201 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = sdiv i32 %202, 4
  %204 = sub nsw i32 %199, %203
  %205 = icmp ult i32 %196, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %195
  %207 = load i32, i32* %8, align 4
  %208 = shl i32 %207, 1
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %195

211:                                              ; preds = %195
  br label %212

212:                                              ; preds = %223, %211
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %215 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %218 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = sdiv i32 %219, 2
  %221 = add nsw i32 %216, %220
  %222 = icmp ugt i32 %213, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %212
  %224 = load i32, i32* %8, align 4
  %225 = lshr i32 %224, 1
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %7, align 4
  br label %212

228:                                              ; preds = %212
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %231 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 8
  br label %251

232:                                              ; preds = %185
  %233 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %234 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = icmp sge i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %239 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = shl i32 %241, %240
  store i32 %242, i32* %8, align 4
  br label %250

243:                                              ; preds = %232
  %244 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %245 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = sub nsw i32 0, %246
  %248 = load i32, i32* %8, align 4
  %249 = lshr i32 %248, %247
  store i32 %249, i32* %8, align 4
  br label %250

250:                                              ; preds = %243, %237
  br label %251

251:                                              ; preds = %250, %228
  %252 = load i32, i32* %8, align 4
  %253 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %254 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %257 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = sdiv i32 %258, 8
  %260 = sub nsw i32 %255, %259
  %261 = icmp uge i32 %252, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %251
  %263 = load i32, i32* %8, align 4
  %264 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %265 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = icmp ule i32 %263, %266
  br label %268

268:                                              ; preds = %262, %251
  %269 = phi i1 [ false, %251 ], [ %267, %262 ]
  %270 = zext i1 %269 to i32
  %271 = call i64 @likely(i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %268
  %274 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %275 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %274, i32 0, i32 7
  %276 = load i64, i64* %9, align 8
  %277 = call i32 @spin_lock_irqsave(i32* %275, i64 %276)
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %280 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %279, i32 0, i32 6
  store i32 %278, i32* %280, align 4
  %281 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %282 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %281, i32 0, i32 7
  %283 = load i64, i64* %9, align 8
  %284 = call i32 @spin_unlock_irqrestore(i32* %282, i64 %283)
  br label %289

285:                                              ; preds = %268
  %286 = load i32, i32* @INT_MIN, align 4
  %287 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %288 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %65, %130, %162, %184, %285, %273
  ret void
}

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i64 @snd_usb_endpoint_implict_feedback_sink(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_pending_output_urbs(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
