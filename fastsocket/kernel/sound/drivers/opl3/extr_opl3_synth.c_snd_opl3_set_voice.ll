; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_synth.c_snd_opl3_set_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i32 (%struct.snd_opl3*, i16, i8)* }
%struct.snd_dm_fm_voice = type { i32, i8, i8, i32, i8, i32, i8, i32, i8, i32, i8, i64, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_DM_FM_MODE_OPL3 = common dso_local global i64 0, align 8
@MAX_OPL3_VOICES = common dso_local global i8 0, align 1
@MAX_OPL2_VOICES = common dso_local global i8 0, align 1
@OPL3_LEFT = common dso_local global i16 0, align 2
@OPL3_RIGHT = common dso_local global i16 0, align 2
@snd_opl3_regmap = common dso_local global i8** null, align 8
@OPL3_TREMOLO_ON = common dso_local global i8 0, align 1
@OPL3_VIBRATO_ON = common dso_local global i8 0, align 1
@OPL3_SUSTAIN_ON = common dso_local global i8 0, align 1
@OPL3_KSR = common dso_local global i8 0, align 1
@OPL3_MULTIPLE_MASK = common dso_local global i8 0, align 1
@OPL3_REG_AM_VIB = common dso_local global i8 0, align 1
@OPL3_KSL_MASK = common dso_local global i32 0, align 4
@OPL3_TOTAL_LEVEL_MASK = common dso_local global i8 0, align 1
@OPL3_REG_KSL_LEVEL = common dso_local global i8 0, align 1
@OPL3_ATTACK_MASK = common dso_local global i32 0, align 4
@OPL3_DECAY_MASK = common dso_local global i8 0, align 1
@OPL3_REG_ATTACK_DECAY = common dso_local global i8 0, align 1
@OPL3_SUSTAIN_MASK = common dso_local global i32 0, align 4
@OPL3_RELEASE_MASK = common dso_local global i8 0, align 1
@OPL3_REG_SUSTAIN_RELEASE = common dso_local global i8 0, align 1
@OPL3_FEEDBACK_MASK = common dso_local global i32 0, align 4
@OPL3_CONNECTION_BIT = common dso_local global i8 0, align 1
@OPL3_VOICE_TO_LEFT = common dso_local global i8 0, align 1
@OPL3_VOICE_TO_RIGHT = common dso_local global i8 0, align 1
@OPL3_REG_FEEDBACK_CONNECTION = common dso_local global i8 0, align 1
@OPL3_WAVE_SELECT_MASK = common dso_local global i8 0, align 1
@OPL3_REG_WAVE_SELECT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*, %struct.snd_dm_fm_voice*)* @snd_opl3_set_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_set_voice(%struct.snd_opl3* %0, %struct.snd_dm_fm_voice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_opl3*, align 8
  %5 = alloca %struct.snd_dm_fm_voice*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  store %struct.snd_opl3* %0, %struct.snd_opl3** %4, align 8
  store %struct.snd_dm_fm_voice* %1, %struct.snd_dm_fm_voice** %5, align 8
  %11 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %12 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %343

18:                                               ; preds = %2
  %19 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %20 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 4
  %22 = zext i8 %21 to i32
  %23 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %24 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_DM_FM_MODE_OPL3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i8, i8* @MAX_OPL3_VOICES, align 1
  %30 = zext i8 %29 to i32
  br label %34

31:                                               ; preds = %18
  %32 = load i8, i8* @MAX_OPL2_VOICES, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  %36 = icmp sge i32 %22, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %343

40:                                               ; preds = %34
  %41 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %42 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 4
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @MAX_OPL2_VOICES, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i16, i16* @OPL3_LEFT, align 2
  store i16 %49, i16* %6, align 2
  %50 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %51 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 4
  store i8 %52, i8* %8, align 1
  br label %63

53:                                               ; preds = %40
  %54 = load i16, i16* @OPL3_RIGHT, align 2
  store i16 %54, i16* %6, align 2
  %55 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %56 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %55, i32 0, i32 1
  %57 = load i8, i8* %56, align 4
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @MAX_OPL2_VOICES, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %58, %60
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %8, align 1
  br label %63

63:                                               ; preds = %53, %48
  %64 = load i8**, i8*** @snd_opl3_regmap, align 8
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %70 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %7, align 1
  store i8 0, i8* %10, align 1
  %75 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %76 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %75, i32 0, i32 17
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %63
  %80 = load i8, i8* @OPL3_TREMOLO_ON, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %10, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %83, %81
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %10, align 1
  br label %86

86:                                               ; preds = %79, %63
  %87 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %88 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %87, i32 0, i32 16
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i8, i8* @OPL3_VIBRATO_ON, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* %10, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %95, %93
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %10, align 1
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %100 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %99, i32 0, i32 15
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i8, i8* @OPL3_SUSTAIN_ON, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %10, align 1
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %112 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %111, i32 0, i32 14
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i8, i8* @OPL3_KSR, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* %10, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 %119, %117
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %10, align 1
  br label %122

122:                                              ; preds = %115, %110
  %123 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %124 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %123, i32 0, i32 2
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* @OPL3_MULTIPLE_MASK, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %126, %128
  %130 = load i8, i8* %10, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %131, %129
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %10, align 1
  %134 = load i16, i16* %6, align 2
  %135 = zext i16 %134 to i32
  %136 = load i8, i8* @OPL3_REG_AM_VIB, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* %7, align 1
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 %137, %139
  %141 = or i32 %135, %140
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %9, align 2
  %143 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %144 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %143, i32 0, i32 1
  %145 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %144, align 8
  %146 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %147 = load i16, i16* %9, align 2
  %148 = load i8, i8* %10, align 1
  %149 = call i32 %145(%struct.snd_opl3* %146, i16 zeroext %147, i8 zeroext %148)
  %150 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %151 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = shl i32 %152, 6
  %154 = load i32, i32* @OPL3_KSL_MASK, align 4
  %155 = and i32 %153, %154
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %10, align 1
  %157 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %158 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %157, i32 0, i32 4
  %159 = load i8, i8* %158, align 4
  %160 = zext i8 %159 to i32
  %161 = xor i32 %160, -1
  %162 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %161, %163
  %165 = load i8, i8* %10, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %166, %164
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %10, align 1
  %169 = load i16, i16* %6, align 2
  %170 = zext i16 %169 to i32
  %171 = load i8, i8* @OPL3_REG_KSL_LEVEL, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8, i8* %7, align 1
  %174 = zext i8 %173 to i32
  %175 = add nsw i32 %172, %174
  %176 = or i32 %170, %175
  %177 = trunc i32 %176 to i16
  store i16 %177, i16* %9, align 2
  %178 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %179 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %178, i32 0, i32 1
  %180 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %179, align 8
  %181 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %182 = load i16, i16* %9, align 2
  %183 = load i8, i8* %10, align 1
  %184 = call i32 %180(%struct.snd_opl3* %181, i16 zeroext %182, i8 zeroext %183)
  %185 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %186 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = shl i32 %187, 4
  %189 = load i32, i32* @OPL3_ATTACK_MASK, align 4
  %190 = and i32 %188, %189
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %10, align 1
  %192 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %193 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %192, i32 0, i32 6
  %194 = load i8, i8* %193, align 4
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @OPL3_DECAY_MASK, align 1
  %197 = zext i8 %196 to i32
  %198 = and i32 %195, %197
  %199 = load i8, i8* %10, align 1
  %200 = zext i8 %199 to i32
  %201 = or i32 %200, %198
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %10, align 1
  %203 = load i16, i16* %6, align 2
  %204 = zext i16 %203 to i32
  %205 = load i8, i8* @OPL3_REG_ATTACK_DECAY, align 1
  %206 = zext i8 %205 to i32
  %207 = load i8, i8* %7, align 1
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %206, %208
  %210 = or i32 %204, %209
  %211 = trunc i32 %210 to i16
  store i16 %211, i16* %9, align 2
  %212 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %213 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %212, i32 0, i32 1
  %214 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %213, align 8
  %215 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %216 = load i16, i16* %9, align 2
  %217 = load i8, i8* %10, align 1
  %218 = call i32 %214(%struct.snd_opl3* %215, i16 zeroext %216, i8 zeroext %217)
  %219 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %220 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = shl i32 %221, 4
  %223 = load i32, i32* @OPL3_SUSTAIN_MASK, align 4
  %224 = and i32 %222, %223
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %10, align 1
  %226 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %227 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %226, i32 0, i32 8
  %228 = load i8, i8* %227, align 4
  %229 = zext i8 %228 to i32
  %230 = load i8, i8* @OPL3_RELEASE_MASK, align 1
  %231 = zext i8 %230 to i32
  %232 = and i32 %229, %231
  %233 = load i8, i8* %10, align 1
  %234 = zext i8 %233 to i32
  %235 = or i32 %234, %232
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %10, align 1
  %237 = load i16, i16* %6, align 2
  %238 = zext i16 %237 to i32
  %239 = load i8, i8* @OPL3_REG_SUSTAIN_RELEASE, align 1
  %240 = zext i8 %239 to i32
  %241 = load i8, i8* %7, align 1
  %242 = zext i8 %241 to i32
  %243 = add nsw i32 %240, %242
  %244 = or i32 %238, %243
  %245 = trunc i32 %244 to i16
  store i16 %245, i16* %9, align 2
  %246 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %247 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %246, i32 0, i32 1
  %248 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %247, align 8
  %249 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %250 = load i16, i16* %9, align 2
  %251 = load i8, i8* %10, align 1
  %252 = call i32 %248(%struct.snd_opl3* %249, i16 zeroext %250, i8 zeroext %251)
  %253 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %254 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 8
  %256 = shl i32 %255, 1
  %257 = load i32, i32* @OPL3_FEEDBACK_MASK, align 4
  %258 = and i32 %256, %257
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %10, align 1
  %260 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %261 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %260, i32 0, i32 13
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %122
  %265 = load i8, i8* @OPL3_CONNECTION_BIT, align 1
  %266 = zext i8 %265 to i32
  %267 = load i8, i8* %10, align 1
  %268 = zext i8 %267 to i32
  %269 = or i32 %268, %266
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %10, align 1
  br label %271

271:                                              ; preds = %264, %122
  %272 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %273 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @SNDRV_DM_FM_MODE_OPL3, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %302

277:                                              ; preds = %271
  %278 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %279 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %278, i32 0, i32 12
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %277
  %283 = load i8, i8* @OPL3_VOICE_TO_LEFT, align 1
  %284 = zext i8 %283 to i32
  %285 = load i8, i8* %10, align 1
  %286 = zext i8 %285 to i32
  %287 = or i32 %286, %284
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %10, align 1
  br label %289

289:                                              ; preds = %282, %277
  %290 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %291 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %290, i32 0, i32 11
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %289
  %295 = load i8, i8* @OPL3_VOICE_TO_RIGHT, align 1
  %296 = zext i8 %295 to i32
  %297 = load i8, i8* %10, align 1
  %298 = zext i8 %297 to i32
  %299 = or i32 %298, %296
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %10, align 1
  br label %301

301:                                              ; preds = %294, %289
  br label %302

302:                                              ; preds = %301, %271
  %303 = load i16, i16* %6, align 2
  %304 = zext i16 %303 to i32
  %305 = load i8, i8* @OPL3_REG_FEEDBACK_CONNECTION, align 1
  %306 = zext i8 %305 to i32
  %307 = load i8, i8* %8, align 1
  %308 = zext i8 %307 to i32
  %309 = add nsw i32 %306, %308
  %310 = or i32 %304, %309
  %311 = trunc i32 %310 to i16
  store i16 %311, i16* %9, align 2
  %312 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %313 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %312, i32 0, i32 1
  %314 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %313, align 8
  %315 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %316 = load i16, i16* %9, align 2
  %317 = load i8, i8* %10, align 1
  %318 = call i32 %314(%struct.snd_opl3* %315, i16 zeroext %316, i8 zeroext %317)
  %319 = load %struct.snd_dm_fm_voice*, %struct.snd_dm_fm_voice** %5, align 8
  %320 = getelementptr inbounds %struct.snd_dm_fm_voice, %struct.snd_dm_fm_voice* %319, i32 0, i32 10
  %321 = load i8, i8* %320, align 4
  %322 = zext i8 %321 to i32
  %323 = load i8, i8* @OPL3_WAVE_SELECT_MASK, align 1
  %324 = zext i8 %323 to i32
  %325 = and i32 %322, %324
  %326 = trunc i32 %325 to i8
  store i8 %326, i8* %10, align 1
  %327 = load i16, i16* %6, align 2
  %328 = zext i16 %327 to i32
  %329 = load i8, i8* @OPL3_REG_WAVE_SELECT, align 1
  %330 = zext i8 %329 to i32
  %331 = load i8, i8* %7, align 1
  %332 = zext i8 %331 to i32
  %333 = add nsw i32 %330, %332
  %334 = or i32 %328, %333
  %335 = trunc i32 %334 to i16
  store i16 %335, i16* %9, align 2
  %336 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %337 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %336, i32 0, i32 1
  %338 = load i32 (%struct.snd_opl3*, i16, i8)*, i32 (%struct.snd_opl3*, i16, i8)** %337, align 8
  %339 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %340 = load i16, i16* %9, align 2
  %341 = load i8, i8* %10, align 1
  %342 = call i32 %338(%struct.snd_opl3* %339, i16 zeroext %340, i8 zeroext %341)
  store i32 0, i32* %3, align 4
  br label %343

343:                                              ; preds = %302, %37, %15
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
