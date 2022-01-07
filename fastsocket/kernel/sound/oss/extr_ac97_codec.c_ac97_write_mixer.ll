; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_write_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_write_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_mixer_hw = type { i32, i32 }
%struct.ac97_codec = type { i32, i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32, i32)*, i64 }

@ac97_hw = common dso_local global %struct.ac97_mixer_hw* null, align 8
@AC97_STEREO_MASK = common dso_local global i32 0, align 4
@AC97_MUTE = common dso_local global i32 0, align 4
@SOUND_MIXER_IGAIN = common dso_local global i32 0, align 4
@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@SOUND_MIXER_ALTPCM = common dso_local global i32 0, align 4
@SOUND_MIXER_BASS = common dso_local global i32 0, align 4
@SOUND_MIXER_TREBLE = common dso_local global i32 0, align 4
@SOUND_MIXER_SPEAKER = common dso_local global i32 0, align 4
@SOUND_MIXER_PHONEIN = common dso_local global i32 0, align 4
@SOUND_MIXER_PHONEOUT = common dso_local global i32 0, align 4
@SOUND_MIXER_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ac97_codec*, i32, i32, i32)* @ac97_write_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac97_write_mixer(%struct.ac97_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ac97_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ac97_mixer_hw*, align 8
  store %struct.ac97_codec* %0, %struct.ac97_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** @ac97_hw, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %12, i64 %14
  store %struct.ac97_mixer_hw* %15, %struct.ac97_mixer_hw** %11, align 8
  %16 = load i32, i32* @AC97_STEREO_MASK, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %116

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @AC97_MUTE, align 4
  store i32 %28, i32* %9, align 4
  br label %115

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SOUND_MIXER_IGAIN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %36 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %34, %37
  %39 = udiv i32 %38, 100
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %42 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 %40, %43
  %45 = udiv i32 %44, 100
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %48 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp uge i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %33
  %52 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %53 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %33
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %59 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp uge i32 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %64 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %56
  br label %110

68:                                               ; preds = %29
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SOUND_MIXER_ALTPCM, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %68
  %77 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %78 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 1, %79
  store i32 %80, i32* %10, align 4
  br label %85

81:                                               ; preds = %72
  %82 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %83 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %8, align 4
  %87 = sub i32 100, %86
  %88 = load i32, i32* %10, align 4
  %89 = mul i32 %87, %88
  %90 = udiv i32 %89, 100
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub i32 100, %91
  %93 = load i32, i32* %10, align 4
  %94 = mul i32 %92, %93
  %95 = udiv i32 %94, 100
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp uge i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %85
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp uge i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %106, %102
  br label %110

110:                                              ; preds = %109, %67
  %111 = load i32, i32* %7, align 4
  %112 = shl i32 %111, 8
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %110, %27
  br label %311

116:                                              ; preds = %4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @SOUND_MIXER_BASS, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %153

120:                                              ; preds = %116
  %121 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %122 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %121, i32 0, i32 1
  %123 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %122, align 8
  %124 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %125 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %126 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 %123(%struct.ac97_codec* %124, i32 %127)
  %129 = and i32 %128, -3841
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %7, align 4
  %131 = sub i32 100, %130
  %132 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %133 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = mul i32 %131, %134
  %136 = udiv i32 %135, 100
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %139 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp uge i32 %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %120
  %143 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %144 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sub i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %142, %120
  %148 = load i32, i32* %7, align 4
  %149 = shl i32 %148, 8
  %150 = and i32 %149, 3584
  %151 = load i32, i32* %9, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %9, align 4
  br label %310

153:                                              ; preds = %116
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @SOUND_MIXER_TREBLE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %153
  %158 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %159 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %158, i32 0, i32 1
  %160 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %159, align 8
  %161 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %162 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %163 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 %160(%struct.ac97_codec* %161, i32 %164)
  %166 = and i32 %165, -16
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %7, align 4
  %168 = sub i32 100, %167
  %169 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %170 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = mul i32 %168, %171
  %173 = udiv i32 %172, 100
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %176 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp uge i32 %174, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %157
  %180 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %181 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sub i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %179, %157
  %185 = load i32, i32* %7, align 4
  %186 = and i32 %185, 14
  %187 = load i32, i32* %9, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %9, align 4
  br label %309

189:                                              ; preds = %153
  %190 = load i32, i32* %7, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* @AC97_MUTE, align 4
  store i32 %193, i32* %9, align 4
  br label %308

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @SOUND_MIXER_SPEAKER, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %219

198:                                              ; preds = %194
  %199 = load i32, i32* %7, align 4
  %200 = sub i32 100, %199
  %201 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %202 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = mul i32 %200, %203
  %205 = udiv i32 %204, 100
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %208 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp uge i32 %206, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %198
  %212 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %213 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sub i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %211, %198
  %217 = load i32, i32* %7, align 4
  %218 = shl i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %307

219:                                              ; preds = %194
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @SOUND_MIXER_PHONEIN, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %243

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = sub i32 100, %224
  %226 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %227 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = mul i32 %225, %228
  %230 = udiv i32 %229, 100
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %233 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp uge i32 %231, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %223
  %237 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %238 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = sub i32 %239, 1
  store i32 %240, i32* %7, align 4
  br label %241

241:                                              ; preds = %236, %223
  %242 = load i32, i32* %7, align 4
  store i32 %242, i32* %9, align 4
  br label %306

243:                                              ; preds = %219
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @SOUND_MIXER_PHONEOUT, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %269

247:                                              ; preds = %243
  %248 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %249 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = shl i32 1, %250
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %7, align 4
  %253 = sub i32 100, %252
  %254 = load i32, i32* %10, align 4
  %255 = mul i32 %253, %254
  %256 = udiv i32 %255, 100
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %259 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp uge i32 %257, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %247
  %263 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %264 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = sub i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %267

267:                                              ; preds = %262, %247
  %268 = load i32, i32* %7, align 4
  store i32 %268, i32* %9, align 4
  br label %305

269:                                              ; preds = %243
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @SOUND_MIXER_MIC, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %304

273:                                              ; preds = %269
  %274 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %275 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %274, i32 0, i32 1
  %276 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %275, align 8
  %277 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %278 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %279 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 %276(%struct.ac97_codec* %277, i32 %280)
  %282 = and i32 %281, -32800
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %7, align 4
  %284 = sub i32 100, %283
  %285 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %286 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = mul i32 %284, %287
  %289 = udiv i32 %288, 100
  store i32 %289, i32* %7, align 4
  %290 = load i32, i32* %7, align 4
  %291 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %292 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp uge i32 %290, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %273
  %296 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %297 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = sub i32 %298, 1
  store i32 %299, i32* %7, align 4
  br label %300

300:                                              ; preds = %295, %273
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %9, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %9, align 4
  br label %304

304:                                              ; preds = %300, %269
  br label %305

305:                                              ; preds = %304, %267
  br label %306

306:                                              ; preds = %305, %241
  br label %307

307:                                              ; preds = %306, %216
  br label %308

308:                                              ; preds = %307, %192
  br label %309

309:                                              ; preds = %308, %184
  br label %310

310:                                              ; preds = %309, %147
  br label %311

311:                                              ; preds = %310, %115
  %312 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %313 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %312, i32 0, i32 2
  %314 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %313, align 8
  %315 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %316 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %11, align 8
  %317 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %9, align 4
  %320 = call i32 %314(%struct.ac97_codec* %315, i32 %318, i32 %319)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
