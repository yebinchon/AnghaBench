; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_spdif_default_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_spdif_default_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ac97 = type { i32, i32, i64, i32 }

@IEC958_AES0_PROFESSIONAL = common dso_local global i32 0, align 4
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_FS = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_EMPHASIS_5015 = common dso_local global i32 0, align 4
@IEC958_AES0_PRO_EMPHASIS = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS_5015 = common dso_local global i32 0, align 4
@IEC958_AES0_CON_NOT_COPYRIGHT = common dso_local global i32 0, align 4
@IEC958_AES1_CON_CATEGORY = common dso_local global i32 0, align 4
@IEC958_AES1_CON_ORIGINAL = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS = common dso_local global i32 0, align 4
@IEC958_AES0_CON_EMPHASIS = common dso_local global i32 0, align 4
@AC97_CS_SPDIF = common dso_local global i32 0, align 4
@AC97_CSR_SPDIF = common dso_local global i32 0, align 4
@AC97_CX_SPDIF = common dso_local global i32 0, align 4
@AC97_CXR_COPYRGT = common dso_local global i16 0, align 2
@AC97_CXR_SPDIF_AC3 = common dso_local global i32 0, align 4
@AC97_CXR_SPDIF_PCM = common dso_local global i32 0, align 4
@AC97_CXR_AUDIO_MISC = common dso_local global i32 0, align 4
@AC97_CXR_SPDIF_MASK = common dso_local global i16 0, align 2
@AC97_ID_YMF743 = common dso_local global i64 0, align 8
@AC97_YMF7X3_DIT_CTRL = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EA_SPDIF = common dso_local global i16 0, align 2
@AC97_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_spdif_default_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_spdif_default_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_ac97* %13, %struct.snd_ac97** %5, align 8
  store i32 0, i32* %6, align 4
  store i16 0, i16* %7, align 2
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %22 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %7, align 2
  %26 = zext i16 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEC958_AES0_PROFESSIONAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %85

37:                                               ; preds = %2
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IEC958_AES0_PRO_FS, align 4
  %46 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IEC958_AES0_PRO_FS, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %68 [
    i32 132, label %54
    i32 131, label %58
    i32 133, label %63
  ]

54:                                               ; preds = %37
  %55 = load i16, i16* %7, align 2
  %56 = zext i16 %55 to i32
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %7, align 2
  br label %73

58:                                               ; preds = %37
  %59 = load i16, i16* %7, align 2
  %60 = zext i16 %59 to i32
  %61 = or i32 %60, 8192
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %7, align 2
  br label %73

63:                                               ; preds = %37
  %64 = load i16, i16* %7, align 2
  %65 = zext i16 %64 to i32
  %66 = or i32 %65, 12288
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %7, align 2
  br label %73

68:                                               ; preds = %37
  %69 = load i16, i16* %7, align 2
  %70 = zext i16 %69 to i32
  %71 = or i32 %70, 4096
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %7, align 2
  br label %73

73:                                               ; preds = %68, %63, %58, %54
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @IEC958_AES0_PRO_EMPHASIS_5015, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i16, i16* %7, align 2
  %81 = zext i16 %80 to i32
  %82 = or i32 %81, 8
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %7, align 2
  br label %84

84:                                               ; preds = %79, %73
  br label %177

85:                                               ; preds = %2
  %86 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %87 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %94 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %100 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IEC958_AES1_CON_CATEGORY, align 4
  %107 = load i32, i32* @IEC958_AES1_CON_ORIGINAL, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = shl i32 %109, 8
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %114 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IEC958_AES3_CON_FS, align 4
  %121 = and i32 %119, %120
  %122 = shl i32 %121, 24
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @IEC958_AES0_CON_EMPHASIS, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %85
  %131 = load i16, i16* %7, align 2
  %132 = zext i16 %131 to i32
  %133 = or i32 %132, 8
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %7, align 2
  br label %135

135:                                              ; preds = %130, %85
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load i16, i16* %7, align 2
  %142 = zext i16 %141 to i32
  %143 = or i32 %142, 4
  %144 = trunc i32 %143 to i16
  store i16 %144, i16* %7, align 2
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i32, i32* %6, align 4
  %147 = lshr i32 %146, 8
  %148 = and i32 %147, 255
  %149 = shl i32 %148, 4
  %150 = load i16, i16* %7, align 2
  %151 = zext i16 %150 to i32
  %152 = or i32 %151, %149
  %153 = trunc i32 %152 to i16
  store i16 %153, i16* %7, align 2
  %154 = load i32, i32* %6, align 4
  %155 = lshr i32 %154, 24
  %156 = and i32 %155, 255
  switch i32 %156, label %171 [
    i32 129, label %157
    i32 128, label %161
    i32 130, label %166
  ]

157:                                              ; preds = %145
  %158 = load i16, i16* %7, align 2
  %159 = zext i16 %158 to i32
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %7, align 2
  br label %176

161:                                              ; preds = %145
  %162 = load i16, i16* %7, align 2
  %163 = zext i16 %162 to i32
  %164 = or i32 %163, 8192
  %165 = trunc i32 %164 to i16
  store i16 %165, i16* %7, align 2
  br label %176

166:                                              ; preds = %145
  %167 = load i16, i16* %7, align 2
  %168 = zext i16 %167 to i32
  %169 = or i32 %168, 12288
  %170 = trunc i32 %169 to i16
  store i16 %170, i16* %7, align 2
  br label %176

171:                                              ; preds = %145
  %172 = load i16, i16* %7, align 2
  %173 = zext i16 %172 to i32
  %174 = or i32 %173, 4096
  %175 = trunc i32 %174 to i16
  store i16 %175, i16* %7, align 2
  br label %176

176:                                              ; preds = %171, %166, %161, %157
  br label %177

177:                                              ; preds = %176, %84
  %178 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %179 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %178, i32 0, i32 3
  %180 = call i32 @mutex_lock(i32* %179)
  %181 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %182 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %183, %184
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %189 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %191 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @AC97_CS_SPDIF, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %218

196:                                              ; preds = %177
  %197 = load i16, i16* %7, align 2
  %198 = zext i16 %197 to i32
  %199 = ashr i32 %198, 12
  %200 = and i32 %199, 3
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  switch i32 %201, label %204 [
    i32 0, label %202
    i32 2, label %203
  ]

202:                                              ; preds = %196
  store i32 1, i32* %9, align 4
  br label %205

203:                                              ; preds = %196
  store i32 0, i32* %9, align 4
  br label %205

204:                                              ; preds = %196
  store i32 0, i32* %9, align 4
  br label %205

205:                                              ; preds = %204, %203, %202
  %206 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %207 = load i32, i32* @AC97_CSR_SPDIF, align 4
  %208 = load i16, i16* %7, align 2
  %209 = zext i16 %208 to i32
  %210 = and i32 %209, 53247
  %211 = load i32, i32* %9, align 4
  %212 = shl i32 %211, 12
  %213 = or i32 %210, %212
  %214 = trunc i32 %213 to i16
  %215 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %206, i32 %207, i16 zeroext 16383, i16 zeroext %214)
  %216 = load i32, i32* %8, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %8, align 4
  br label %314

218:                                              ; preds = %177
  %219 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %220 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @AC97_CX_SPDIF, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %263

225:                                              ; preds = %218
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @IEC958_AES0_CON_EMPHASIS_5015, align 4
  %228 = load i32, i32* @IEC958_AES0_CON_NOT_COPYRIGHT, align 4
  %229 = or i32 %227, %228
  %230 = and i32 %226, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  br label %236

233:                                              ; preds = %225
  %234 = load i16, i16* @AC97_CXR_COPYRGT, align 2
  %235 = zext i16 %234 to i32
  br label %236

236:                                              ; preds = %233, %232
  %237 = phi i32 [ 0, %232 ], [ %235, %233 ]
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = load i32, i32* @AC97_CXR_SPDIF_AC3, align 4
  br label %246

244:                                              ; preds = %236
  %245 = load i32, i32* @AC97_CXR_SPDIF_PCM, align 4
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi i32 [ %243, %242 ], [ %245, %244 ]
  %248 = load i32, i32* %10, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %10, align 4
  %250 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %251 = load i32, i32* @AC97_CXR_AUDIO_MISC, align 4
  %252 = load i16, i16* @AC97_CXR_SPDIF_MASK, align 2
  %253 = zext i16 %252 to i32
  %254 = load i16, i16* @AC97_CXR_COPYRGT, align 2
  %255 = zext i16 %254 to i32
  %256 = or i32 %253, %255
  %257 = trunc i32 %256 to i16
  %258 = load i32, i32* %10, align 4
  %259 = trunc i32 %258 to i16
  %260 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %250, i32 %251, i16 zeroext %257, i16 zeroext %259)
  %261 = load i32, i32* %8, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %8, align 4
  br label %313

263:                                              ; preds = %218
  %264 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %265 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @AC97_ID_YMF743, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %285

269:                                              ; preds = %263
  %270 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %271 = load i32, i32* @AC97_YMF7X3_DIT_CTRL, align 4
  %272 = load i16, i16* %7, align 2
  %273 = zext i16 %272 to i32
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 65280
  %276 = load i16, i16* %7, align 2
  %277 = zext i16 %276 to i32
  %278 = shl i32 %277, 2
  %279 = and i32 %278, 56
  %280 = or i32 %275, %279
  %281 = trunc i32 %280 to i16
  %282 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %270, i32 %271, i16 zeroext -200, i16 zeroext %281)
  %283 = load i32, i32* %8, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %8, align 4
  br label %312

285:                                              ; preds = %263
  %286 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %287 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %288 = call zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97* %286, i32 %287)
  store i16 %288, i16* %11, align 2
  %289 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %290 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %291 = load i16, i16* @AC97_EA_SPDIF, align 2
  %292 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %289, i32 %290, i16 zeroext %291, i16 zeroext 0)
  %293 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %294 = load i32, i32* @AC97_SPDIF, align 4
  %295 = load i16, i16* %7, align 2
  %296 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %293, i32 %294, i16 zeroext 16383, i16 zeroext %295)
  %297 = load i32, i32* %8, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %8, align 4
  %299 = load i16, i16* %11, align 2
  %300 = zext i16 %299 to i32
  %301 = load i16, i16* @AC97_EA_SPDIF, align 2
  %302 = zext i16 %301 to i32
  %303 = and i32 %300, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %285
  %306 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %307 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %308 = load i16, i16* @AC97_EA_SPDIF, align 2
  %309 = load i16, i16* @AC97_EA_SPDIF, align 2
  %310 = call i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %306, i32 %307, i16 zeroext %308, i16 zeroext %309)
  br label %311

311:                                              ; preds = %305, %285
  br label %312

312:                                              ; preds = %311, %269
  br label %313

313:                                              ; preds = %312, %246
  br label %314

314:                                              ; preds = %313, %205
  %315 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %316 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %315, i32 0, i32 3
  %317 = call i32 @mutex_unlock(i32* %316)
  %318 = load i32, i32* %8, align 4
  ret i32 %318
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
