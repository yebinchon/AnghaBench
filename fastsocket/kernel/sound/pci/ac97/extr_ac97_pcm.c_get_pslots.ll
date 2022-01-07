; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_pcm.c_get_pslots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_pcm.c_get_pslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i32, i32* }

@AC97_EI_DACS_SLOT_MASK = common dso_local global i32 0, align 4
@AC97_EXTENDED_ID = common dso_local global i64 0, align 8
@AC97_EI_DACS_SLOT_SHIFT = common dso_local global i32 0, align 4
@AC97_SLOT_PCM_LEFT = common dso_local global i32 0, align 4
@AC97_SLOT_PCM_RIGHT = common dso_local global i32 0, align 4
@AC97_SCAP_SURROUND_DAC = common dso_local global i32 0, align 4
@AC97_SLOT_PCM_SLEFT = common dso_local global i32 0, align 4
@AC97_SLOT_PCM_SRIGHT = common dso_local global i32 0, align 4
@AC97_SCAP_CENTER_LFE_DAC = common dso_local global i32 0, align 4
@AC97_SLOT_PCM_CENTER = common dso_local global i32 0, align 4
@AC97_SLOT_LFE = common dso_local global i32 0, align 4
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@AC97_SLOT_SPDIF_LEFT = common dso_local global i32 0, align 4
@AC97_SLOT_SPDIF_RIGHT = common dso_local global i32 0, align 4
@AC97_SLOT_SPDIF_LEFT1 = common dso_local global i32 0, align 4
@AC97_SLOT_SPDIF_RIGHT1 = common dso_local global i32 0, align 4
@AC97_SLOT_SPDIF_LEFT2 = common dso_local global i32 0, align 4
@AC97_SLOT_SPDIF_RIGHT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i8*, i16*)* @get_pslots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @get_pslots(%struct.snd_ac97* %0, i8* %1, i16* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16* %2, i16** %7, align 8
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %12 = call i32 @ac97_is_audio(%struct.snd_ac97* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i16 0, i16* %4, align 2
  br label %328

15:                                               ; preds = %3
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %17 = call i64 @ac97_is_rev22(%struct.snd_ac97* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %21 = call i64 @ac97_can_amap(%struct.snd_ac97* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %238

23:                                               ; preds = %19, %15
  store i16 0, i16* %8, align 2
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %25 = call i64 @ac97_is_rev22(%struct.snd_ac97* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load i32, i32* @AC97_EI_DACS_SLOT_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @AC97_EXTENDED_ID, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %29
  store i32 %36, i32* %34, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %50 [
    i32 1, label %40
    i32 2, label %40
    i32 3, label %45
  ]

40:                                               ; preds = %27, %27
  %41 = load i32, i32* @AC97_EI_DACS_SLOT_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %50

45:                                               ; preds = %27
  %46 = load i32, i32* @AC97_EI_DACS_SLOT_SHIFT, align 4
  %47 = shl i32 2, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %27, %45, %40
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %52 = load i64, i64* @AC97_EXTENDED_ID, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %51, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %23
  %56 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %57 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %236 [
    i32 0, label %59
    i32 1, label %151
    i32 2, label %151
    i32 3, label %210
  ]

59:                                               ; preds = %55
  %60 = load i32, i32* @AC97_SLOT_PCM_LEFT, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* @AC97_SLOT_PCM_RIGHT, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i16, i16* %8, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %8, align 2
  %69 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %70 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %59
  %76 = load i32, i32* @AC97_SLOT_PCM_SLEFT, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* @AC97_SLOT_PCM_SRIGHT, align 4
  %79 = shl i32 1, %78
  %80 = or i32 %77, %79
  %81 = load i16, i16* %8, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %8, align 2
  br label %85

85:                                               ; preds = %75, %59
  %86 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AC97_SCAP_CENTER_LFE_DAC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load i32, i32* @AC97_SLOT_PCM_CENTER, align 4
  %94 = shl i32 1, %93
  %95 = load i32, i32* @AC97_SLOT_LFE, align 4
  %96 = shl i32 1, %95
  %97 = or i32 %94, %96
  %98 = load i16, i16* %8, align 2
  %99 = zext i16 %98 to i32
  %100 = or i32 %99, %97
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %8, align 2
  br label %102

102:                                              ; preds = %92, %85
  %103 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %104 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AC97_EI_SPDIF, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %149

109:                                              ; preds = %102
  %110 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %111 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @AC97_SLOT_SPDIF_LEFT, align 4
  %118 = shl i32 1, %117
  %119 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT, align 4
  %120 = shl i32 1, %119
  %121 = or i32 %118, %120
  %122 = trunc i32 %121 to i16
  %123 = load i16*, i16** %7, align 8
  store i16 %122, i16* %123, align 2
  br label %148

124:                                              ; preds = %109
  %125 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %126 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AC97_SCAP_CENTER_LFE_DAC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @AC97_SLOT_SPDIF_LEFT1, align 4
  %133 = shl i32 1, %132
  %134 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT1, align 4
  %135 = shl i32 1, %134
  %136 = or i32 %133, %135
  %137 = trunc i32 %136 to i16
  %138 = load i16*, i16** %7, align 8
  store i16 %137, i16* %138, align 2
  br label %147

139:                                              ; preds = %124
  %140 = load i32, i32* @AC97_SLOT_SPDIF_LEFT2, align 4
  %141 = shl i32 1, %140
  %142 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT2, align 4
  %143 = shl i32 1, %142
  %144 = or i32 %141, %143
  %145 = trunc i32 %144 to i16
  %146 = load i16*, i16** %7, align 8
  store i16 %145, i16* %146, align 2
  br label %147

147:                                              ; preds = %139, %131
  br label %148

148:                                              ; preds = %147, %116
  br label %149

149:                                              ; preds = %148, %102
  %150 = load i8*, i8** %6, align 8
  store i8 0, i8* %150, align 1
  br label %236

151:                                              ; preds = %55, %55
  %152 = load i32, i32* @AC97_SLOT_PCM_SLEFT, align 4
  %153 = shl i32 1, %152
  %154 = load i32, i32* @AC97_SLOT_PCM_SRIGHT, align 4
  %155 = shl i32 1, %154
  %156 = or i32 %153, %155
  %157 = load i16, i16* %8, align 2
  %158 = zext i16 %157 to i32
  %159 = or i32 %158, %156
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %8, align 2
  %161 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %162 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %151
  %168 = load i32, i32* @AC97_SLOT_PCM_CENTER, align 4
  %169 = shl i32 1, %168
  %170 = load i32, i32* @AC97_SLOT_LFE, align 4
  %171 = shl i32 1, %170
  %172 = or i32 %169, %171
  %173 = load i16, i16* %8, align 2
  %174 = zext i16 %173 to i32
  %175 = or i32 %174, %172
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %8, align 2
  br label %177

177:                                              ; preds = %167, %151
  %178 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %179 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @AC97_EI_SPDIF, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %208

184:                                              ; preds = %177
  %185 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %186 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %184
  %192 = load i32, i32* @AC97_SLOT_SPDIF_LEFT1, align 4
  %193 = shl i32 1, %192
  %194 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT1, align 4
  %195 = shl i32 1, %194
  %196 = or i32 %193, %195
  %197 = trunc i32 %196 to i16
  %198 = load i16*, i16** %7, align 8
  store i16 %197, i16* %198, align 2
  br label %207

199:                                              ; preds = %184
  %200 = load i32, i32* @AC97_SLOT_SPDIF_LEFT2, align 4
  %201 = shl i32 1, %200
  %202 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT2, align 4
  %203 = shl i32 1, %202
  %204 = or i32 %201, %203
  %205 = trunc i32 %204 to i16
  %206 = load i16*, i16** %7, align 8
  store i16 %205, i16* %206, align 2
  br label %207

207:                                              ; preds = %199, %191
  br label %208

208:                                              ; preds = %207, %177
  %209 = load i8*, i8** %6, align 8
  store i8 1, i8* %209, align 1
  br label %236

210:                                              ; preds = %55
  %211 = load i32, i32* @AC97_SLOT_PCM_CENTER, align 4
  %212 = shl i32 1, %211
  %213 = load i32, i32* @AC97_SLOT_LFE, align 4
  %214 = shl i32 1, %213
  %215 = or i32 %212, %214
  %216 = load i16, i16* %8, align 2
  %217 = zext i16 %216 to i32
  %218 = or i32 %217, %215
  %219 = trunc i32 %218 to i16
  store i16 %219, i16* %8, align 2
  %220 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %221 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @AC97_EI_SPDIF, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %210
  %227 = load i32, i32* @AC97_SLOT_SPDIF_LEFT2, align 4
  %228 = shl i32 1, %227
  %229 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT2, align 4
  %230 = shl i32 1, %229
  %231 = or i32 %228, %230
  %232 = trunc i32 %231 to i16
  %233 = load i16*, i16** %7, align 8
  store i16 %232, i16* %233, align 2
  br label %234

234:                                              ; preds = %226, %210
  %235 = load i8*, i8** %6, align 8
  store i8 2, i8* %235, align 1
  br label %236

236:                                              ; preds = %55, %234, %208, %149
  %237 = load i16, i16* %8, align 2
  store i16 %237, i16* %4, align 2
  br label %328

238:                                              ; preds = %19
  %239 = load i32, i32* @AC97_SLOT_PCM_LEFT, align 4
  %240 = shl i32 1, %239
  %241 = load i32, i32* @AC97_SLOT_PCM_RIGHT, align 4
  %242 = shl i32 1, %241
  %243 = or i32 %240, %242
  %244 = trunc i32 %243 to i16
  store i16 %244, i16* %10, align 2
  %245 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %246 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %238
  %252 = load i32, i32* @AC97_SLOT_PCM_SLEFT, align 4
  %253 = shl i32 1, %252
  %254 = load i32, i32* @AC97_SLOT_PCM_SRIGHT, align 4
  %255 = shl i32 1, %254
  %256 = or i32 %253, %255
  %257 = load i16, i16* %10, align 2
  %258 = zext i16 %257 to i32
  %259 = or i32 %258, %256
  %260 = trunc i32 %259 to i16
  store i16 %260, i16* %10, align 2
  br label %261

261:                                              ; preds = %251, %238
  %262 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %263 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @AC97_SCAP_CENTER_LFE_DAC, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %261
  %269 = load i32, i32* @AC97_SLOT_PCM_CENTER, align 4
  %270 = shl i32 1, %269
  %271 = load i32, i32* @AC97_SLOT_LFE, align 4
  %272 = shl i32 1, %271
  %273 = or i32 %270, %272
  %274 = load i16, i16* %10, align 2
  %275 = zext i16 %274 to i32
  %276 = or i32 %275, %273
  %277 = trunc i32 %276 to i16
  store i16 %277, i16* %10, align 2
  br label %278

278:                                              ; preds = %268, %261
  %279 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %280 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @AC97_EI_SPDIF, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %325

285:                                              ; preds = %278
  %286 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %287 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %300, label %292

292:                                              ; preds = %285
  %293 = load i32, i32* @AC97_SLOT_SPDIF_LEFT, align 4
  %294 = shl i32 1, %293
  %295 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT, align 4
  %296 = shl i32 1, %295
  %297 = or i32 %294, %296
  %298 = trunc i32 %297 to i16
  %299 = load i16*, i16** %7, align 8
  store i16 %298, i16* %299, align 2
  br label %324

300:                                              ; preds = %285
  %301 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %302 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @AC97_SCAP_CENTER_LFE_DAC, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %300
  %308 = load i32, i32* @AC97_SLOT_SPDIF_LEFT1, align 4
  %309 = shl i32 1, %308
  %310 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT1, align 4
  %311 = shl i32 1, %310
  %312 = or i32 %309, %311
  %313 = trunc i32 %312 to i16
  %314 = load i16*, i16** %7, align 8
  store i16 %313, i16* %314, align 2
  br label %323

315:                                              ; preds = %300
  %316 = load i32, i32* @AC97_SLOT_SPDIF_LEFT2, align 4
  %317 = shl i32 1, %316
  %318 = load i32, i32* @AC97_SLOT_SPDIF_RIGHT2, align 4
  %319 = shl i32 1, %318
  %320 = or i32 %317, %319
  %321 = trunc i32 %320 to i16
  %322 = load i16*, i16** %7, align 8
  store i16 %321, i16* %322, align 2
  br label %323

323:                                              ; preds = %315, %307
  br label %324

324:                                              ; preds = %323, %292
  br label %325

325:                                              ; preds = %324, %278
  %326 = load i8*, i8** %6, align 8
  store i8 0, i8* %326, align 1
  %327 = load i16, i16* %10, align 2
  store i16 %327, i16* %4, align 2
  br label %328

328:                                              ; preds = %325, %236, %14
  %329 = load i16, i16* %4, align 2
  ret i16 %329
}

declare dso_local i32 @ac97_is_audio(%struct.snd_ac97*) #1

declare dso_local i64 @ac97_is_rev22(%struct.snd_ac97*) #1

declare dso_local i64 @ac97_can_amap(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
