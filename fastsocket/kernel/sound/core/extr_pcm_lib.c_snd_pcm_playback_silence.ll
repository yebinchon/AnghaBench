; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_playback_silence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_playback_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, %struct.snd_pcm_runtime* }
%struct.TYPE_6__ = type { i32 (%struct.snd_pcm_substream*, i32, i64, i64)* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i64, i64, i64, i64, i8*, i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@SNDRV_PCM_ACCESS_MMAP_INTERLEAVED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_pcm_playback_silence(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i64 %1, i64* %4, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 1
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %5, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %122

29:                                               ; preds = %2
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 12
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %32, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %29
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 12
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %52, %39
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  br label %74

71:                                               ; preds = %59
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 12
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %74, %29
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %382

91:                                               ; preds = %82
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %93 = call i64 @snd_pcm_playback_hw_avail(%struct.snd_pcm_runtime* %92)
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp sge i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %382

104:                                              ; preds = %91
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = sub nsw i64 %107, %108
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp sgt i64 %110, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %104
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %6, align 8
  br label %121

121:                                              ; preds = %116, %104
  br label %206

122:                                              ; preds = %2
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @ULONG_MAX, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %156

126:                                              ; preds = %122
  %127 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %128 = call i64 @snd_pcm_playback_hw_avail(%struct.snd_pcm_runtime* %127)
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %11, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i64, i64* %11, align 8
  br label %134

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i64 [ %132, %131 ], [ 0, %133 ]
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %136, i32 0, i32 3
  store i64 %135, i64* %137, align 8
  %138 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %139 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %138, i32 0, i32 11
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %145 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = srem i64 %147, %151
  %153 = trunc i64 %152 to i32
  %154 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %155 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  br label %198

156:                                              ; preds = %122
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %158 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %157, i32 0, i32 11
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %7, align 8
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* %7, align 8
  %165 = sub nsw i64 %163, %164
  store i64 %165, i64* %6, align 8
  %166 = load i64, i64* %6, align 8
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %156
  %169 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %170 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %6, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %6, align 8
  br label %175

175:                                              ; preds = %168, %156
  %176 = load i64, i64* %6, align 8
  %177 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %178 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %182 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %175
  %186 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %187 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %186, i32 0, i32 3
  store i64 0, i64* %187, align 8
  %188 = load i64, i64* %4, align 8
  %189 = trunc i64 %188 to i32
  %190 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %191 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  br label %197

192:                                              ; preds = %175
  %193 = load i64, i64* %7, align 8
  %194 = trunc i64 %193 to i32
  %195 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %196 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %192, %185
  br label %198

198:                                              ; preds = %197, %134
  %199 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %200 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %203 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = sub nsw i64 %201, %204
  store i64 %205, i64* %6, align 8
  br label %206

206:                                              ; preds = %198, %121
  %207 = load i64, i64* %6, align 8
  %208 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %209 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %207, %210
  %212 = zext i1 %211 to i32
  %213 = call i64 @snd_BUG_ON(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %206
  br label %382

216:                                              ; preds = %206
  %217 = load i64, i64* %6, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %382

220:                                              ; preds = %216
  %221 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %222 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %226 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = srem i64 %224, %227
  store i64 %228, i64* %7, align 8
  br label %229

229:                                              ; preds = %373, %220
  %230 = load i64, i64* %6, align 8
  %231 = icmp sgt i64 %230, 0
  br i1 %231, label %232, label %382

232:                                              ; preds = %229
  %233 = load i64, i64* %7, align 8
  %234 = load i64, i64* %6, align 8
  %235 = add nsw i64 %233, %234
  %236 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %237 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = icmp sgt i64 %235, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %242 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %7, align 8
  %245 = sub nsw i64 %243, %244
  br label %248

246:                                              ; preds = %232
  %247 = load i64, i64* %6, align 8
  br label %248

248:                                              ; preds = %246, %240
  %249 = phi i64 [ %245, %240 ], [ %247, %246 ]
  store i64 %249, i64* %8, align 8
  %250 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %251 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %261, label %255

255:                                              ; preds = %248
  %256 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %257 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %256, i32 0, i32 6
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @SNDRV_PCM_ACCESS_MMAP_INTERLEAVED, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %302

261:                                              ; preds = %255, %248
  %262 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %263 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %262, i32 0, i32 0
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32 (%struct.snd_pcm_substream*, i32, i64, i64)*, i32 (%struct.snd_pcm_substream*, i32, i64, i64)** %265, align 8
  %267 = icmp ne i32 (%struct.snd_pcm_substream*, i32, i64, i64)* %266, null
  br i1 %267, label %268, label %282

268:                                              ; preds = %261
  %269 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %270 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %269, i32 0, i32 0
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32 (%struct.snd_pcm_substream*, i32, i64, i64)*, i32 (%struct.snd_pcm_substream*, i32, i64, i64)** %272, align 8
  %274 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %275 = load i64, i64* %7, align 8
  %276 = load i64, i64* %8, align 8
  %277 = call i32 %273(%struct.snd_pcm_substream* %274, i32 -1, i64 %275, i64 %276)
  store i32 %277, i32* %12, align 4
  %278 = load i32, i32* %12, align 4
  %279 = icmp slt i32 %278, 0
  %280 = zext i1 %279 to i32
  %281 = call i64 @snd_BUG_ON(i32 %280)
  br label %301

282:                                              ; preds = %261
  %283 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %284 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %283, i32 0, i32 7
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %287 = load i64, i64* %7, align 8
  %288 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %286, i64 %287)
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %285, i64 %289
  store i8* %290, i8** %13, align 8
  %291 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %292 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 4
  %294 = load i8*, i8** %13, align 8
  %295 = load i64, i64* %8, align 8
  %296 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %297 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %296, i32 0, i32 8
  %298 = load i64, i64* %297, align 8
  %299 = mul nsw i64 %295, %298
  %300 = call i32 @snd_pcm_format_set_silence(i32 %293, i8* %294, i64 %299)
  br label %301

301:                                              ; preds = %282, %268
  br label %373

302:                                              ; preds = %255
  %303 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %304 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %303, i32 0, i32 8
  %305 = load i64, i64* %304, align 8
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %15, align 4
  %307 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %308 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %307, i32 0, i32 0
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32 (%struct.snd_pcm_substream*, i32, i64, i64)*, i32 (%struct.snd_pcm_substream*, i32, i64, i64)** %310, align 8
  %312 = icmp ne i32 (%struct.snd_pcm_substream*, i32, i64, i64)* %311, null
  br i1 %312, label %313, label %337

313:                                              ; preds = %302
  store i32 0, i32* %14, align 4
  br label %314

314:                                              ; preds = %333, %313
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* %15, align 4
  %317 = icmp ult i32 %315, %316
  br i1 %317, label %318, label %336

318:                                              ; preds = %314
  %319 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %320 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %319, i32 0, i32 0
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i32 (%struct.snd_pcm_substream*, i32, i64, i64)*, i32 (%struct.snd_pcm_substream*, i32, i64, i64)** %322, align 8
  %324 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %325 = load i32, i32* %14, align 4
  %326 = load i64, i64* %7, align 8
  %327 = load i64, i64* %8, align 8
  %328 = call i32 %323(%struct.snd_pcm_substream* %324, i32 %325, i64 %326, i64 %327)
  store i32 %328, i32* %16, align 4
  %329 = load i32, i32* %16, align 4
  %330 = icmp slt i32 %329, 0
  %331 = zext i1 %330 to i32
  %332 = call i64 @snd_BUG_ON(i32 %331)
  br label %333

333:                                              ; preds = %318
  %334 = load i32, i32* %14, align 4
  %335 = add i32 %334, 1
  store i32 %335, i32* %14, align 4
  br label %314

336:                                              ; preds = %314
  br label %372

337:                                              ; preds = %302
  %338 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %339 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %338, i32 0, i32 9
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* %15, align 4
  %342 = udiv i32 %340, %341
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %17, align 8
  store i32 0, i32* %14, align 4
  br label %344

344:                                              ; preds = %368, %337
  %345 = load i32, i32* %14, align 4
  %346 = load i32, i32* %15, align 4
  %347 = icmp ult i32 %345, %346
  br i1 %347, label %348, label %371

348:                                              ; preds = %344
  %349 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %350 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %349, i32 0, i32 7
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* %14, align 4
  %353 = zext i32 %352 to i64
  %354 = load i64, i64* %17, align 8
  %355 = mul i64 %353, %354
  %356 = getelementptr inbounds i8, i8* %351, i64 %355
  %357 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %358 = load i64, i64* %7, align 8
  %359 = call i32 @samples_to_bytes(%struct.snd_pcm_runtime* %357, i64 %358)
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %356, i64 %360
  store i8* %361, i8** %18, align 8
  %362 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %363 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %362, i32 0, i32 10
  %364 = load i32, i32* %363, align 4
  %365 = load i8*, i8** %18, align 8
  %366 = load i64, i64* %8, align 8
  %367 = call i32 @snd_pcm_format_set_silence(i32 %364, i8* %365, i64 %366)
  br label %368

368:                                              ; preds = %348
  %369 = load i32, i32* %14, align 4
  %370 = add i32 %369, 1
  store i32 %370, i32* %14, align 4
  br label %344

371:                                              ; preds = %344
  br label %372

372:                                              ; preds = %371, %336
  br label %373

373:                                              ; preds = %372, %301
  %374 = load i64, i64* %8, align 8
  %375 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %376 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = add nsw i64 %377, %374
  store i64 %378, i64* %376, align 8
  %379 = load i64, i64* %8, align 8
  %380 = load i64, i64* %6, align 8
  %381 = sub nsw i64 %380, %379
  store i64 %381, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %229

382:                                              ; preds = %90, %103, %215, %219, %229
  ret void
}

declare dso_local i64 @snd_pcm_playback_hw_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i8*, i64) #1

declare dso_local i32 @samples_to_bytes(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
