; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_prepare_playback_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_prepare_playback_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i64, i64, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.snd_usb_endpoint* }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i32, i32, i64 }
%struct.snd_usb_endpoint = type { i32 }
%struct.urb = type { i32, i64, i64, %struct.TYPE_3__*, %struct.snd_urb_ctx* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_urb_ctx = type { i32, i32* }

@UAC_FORMAT_TYPE_II = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_substream*, %struct.urb*)* @prepare_playback_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_playback_urb(%struct.snd_usb_substream* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_substream*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_usb_endpoint*, align 8
  %7 = alloca %struct.snd_urb_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %16 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %5, align 8
  %21 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %21, i32 0, i32 8
  %23 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %22, align 8
  store %struct.snd_usb_endpoint* %23, %struct.snd_usb_endpoint** %6, align 8
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 4
  %26 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %25, align 8
  store %struct.snd_urb_ctx* %26, %struct.snd_urb_ctx** %7, align 8
  store i32 0, i32* %13, align 4
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 3
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %31 = load %struct.urb*, %struct.urb** %4, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %33, i32 0, i32 6
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %192, %2
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %195

43:                                               ; preds = %37
  %44 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  br label %63

60:                                               ; preds = %43
  %61 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %62 = call i32 @snd_usb_endpoint_next_packet_size(%struct.snd_usb_endpoint* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = mul i32 %64, %65
  %67 = load %struct.urb*, %struct.urb** %4, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %12, align 4
  %76 = mul i32 %74, %75
  %77 = load %struct.urb*, %struct.urb** %4, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 3
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.urb*, %struct.urb** %4, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %94 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %98 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %99, %102
  br i1 %103, label %104, label %181

104:                                              ; preds = %63
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %109 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  store i32 1, i32* %13, align 4
  %112 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %113 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @UAC_FORMAT_TYPE_II, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %180

117:                                              ; preds = %104
  %118 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %119 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %117
  %123 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %124 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = sub nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %9, align 4
  %130 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %131 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = sub nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %12, align 4
  %139 = mul i32 %137, %138
  %140 = load %struct.urb*, %struct.urb** %4, align 8
  %141 = getelementptr inbounds %struct.urb, %struct.urb* %140, i32 0, i32 3
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i32 %139, i32* %146, align 4
  %147 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %148 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %122, %117
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %154 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %149
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %12, align 4
  %160 = mul i32 %158, %159
  %161 = load %struct.urb*, %struct.urb** %4, align 8
  %162 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 3
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 %160, i32* %167, align 4
  %168 = load %struct.urb*, %struct.urb** %4, align 8
  %169 = getelementptr inbounds %struct.urb, %struct.urb* %168, i32 0, i32 3
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load %struct.urb*, %struct.urb** %4, align 8
  %176 = getelementptr inbounds %struct.urb, %struct.urb* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %179

179:                                              ; preds = %157, %149
  br label %195

180:                                              ; preds = %104
  br label %181

181:                                              ; preds = %180, %63
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %186 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %185, i32 0, i32 8
  %187 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %186, align 8
  %188 = call i32 @snd_usb_endpoint_implict_feedback_sink(%struct.snd_usb_endpoint* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %184
  br label %195

191:                                              ; preds = %184, %181
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %37

195:                                              ; preds = %190, %179, %37
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %12, align 4
  %198 = mul i32 %196, %197
  store i32 %198, i32* %10, align 4
  %199 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %200 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = add i32 %201, %202
  %204 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %205 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = mul nsw i32 %206, %207
  %209 = icmp ugt i32 %203, %208
  br i1 %209, label %210, label %246

210:                                              ; preds = %195
  %211 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %212 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %217 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = sub i32 %215, %218
  store i32 %219, i32* %15, align 4
  %220 = load %struct.urb*, %struct.urb** %4, align 8
  %221 = getelementptr inbounds %struct.urb, %struct.urb* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %224 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %227 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = zext i32 %228 to i64
  %230 = add nsw i64 %225, %229
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @memcpy(i64 %222, i64 %230, i32 %231)
  %233 = load %struct.urb*, %struct.urb** %4, align 8
  %234 = getelementptr inbounds %struct.urb, %struct.urb* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %15, align 4
  %237 = zext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %240 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %15, align 4
  %244 = sub i32 %242, %243
  %245 = call i32 @memcpy(i64 %238, i64 %241, i32 %244)
  br label %260

246:                                              ; preds = %195
  %247 = load %struct.urb*, %struct.urb** %4, align 8
  %248 = getelementptr inbounds %struct.urb, %struct.urb* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %251 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %254 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = zext i32 %255 to i64
  %257 = add nsw i64 %252, %256
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @memcpy(i64 %249, i64 %257, i32 %258)
  br label %260

260:                                              ; preds = %246, %210
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %263 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = add i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %267 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %270 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = mul nsw i32 %271, %272
  %274 = icmp uge i32 %268, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %260
  %276 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %277 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = mul nsw i32 %278, %279
  %281 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %282 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = sub i32 %283, %280
  store i32 %284, i32* %282, align 8
  br label %285

285:                                              ; preds = %275, %260
  %286 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %287 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %290 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* %9, align 4
  %292 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %293 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %297 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %300 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  %301 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %302 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %301, i32 0, i32 7
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @usb_get_current_frame_number(i32 %303)
  %305 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %306 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %305, i32 0, i32 4
  store i32 %304, i32* %306, align 8
  %307 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %308 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = and i32 %309, 255
  store i32 %310, i32* %308, align 8
  %311 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %312 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %311, i32 0, i32 6
  %313 = load i64, i64* %14, align 8
  %314 = call i32 @spin_unlock_irqrestore(i32* %312, i64 %313)
  %315 = load i32, i32* %10, align 4
  %316 = load %struct.urb*, %struct.urb** %4, align 8
  %317 = getelementptr inbounds %struct.urb, %struct.urb* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 8
  %318 = load i32, i32* %13, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %285
  %321 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %322 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %321, i32 0, i32 5
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %323)
  br label %325

325:                                              ; preds = %320, %285
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_usb_endpoint_next_packet_size(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @snd_usb_endpoint_implict_feedback_sink(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @usb_get_current_frame_number(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
