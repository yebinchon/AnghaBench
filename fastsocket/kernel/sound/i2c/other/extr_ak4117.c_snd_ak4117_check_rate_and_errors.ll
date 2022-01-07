; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4117.c_snd_ak4117_check_rate_and_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4117.c_snd_ak4117_check_rate_and_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i8, i32, i8, %struct.TYPE_7__*, i32 (%struct.ak4117*, i8, i8)*, %struct.TYPE_6__**, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AK4117_REG_RCS1 = common dso_local global i32 0, align 4
@AK4117_CHECK_NO_STAT = common dso_local global i32 0, align 4
@AK4117_REG_RCS0 = common dso_local global i32 0, align 4
@AK4117_REG_RCS2 = common dso_local global i32 0, align 4
@AK4117_PAR = common dso_local global i8 0, align 1
@AK4117_V = common dso_local global i8 0, align 1
@AK4117_CCRC = common dso_local global i8 0, align 1
@AK4117_QCRC = common dso_local global i8 0, align 1
@AK4117_QINT = common dso_local global i8 0, align 1
@AK4117_CINT = common dso_local global i8 0, align 1
@AK4117_STC = common dso_local global i8 0, align 1
@AK4117_AUDION = common dso_local global i8 0, align 1
@AK4117_AUTO = common dso_local global i8 0, align 1
@AK4117_UNLCK = common dso_local global i8 0, align 1
@AK4117_DTSCD = common dso_local global i32 0, align 4
@AK4117_NPCM = common dso_local global i32 0, align 4
@AK4117_PEM = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@AK4117_CHECK_NO_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ak4117_check_rate_and_errors(%struct.ak4117* %0, i32 %1) #0 {
  %3 = alloca %struct.ak4117*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.ak4117* %0, %struct.ak4117** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %14 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %19 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi %struct.snd_pcm_runtime* [ %22, %17 ], [ null, %23 ]
  store %struct.snd_pcm_runtime* %25, %struct.snd_pcm_runtime** %5, align 8
  store i32 0, i32* %7, align 4
  %26 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %27 = load i32, i32* @AK4117_REG_RCS1, align 4
  %28 = call zeroext i8 @reg_read(%struct.ak4117* %26, i32 %27)
  store i8 %28, i8* %9, align 1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AK4117_CHECK_NO_STAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %395

34:                                               ; preds = %24
  %35 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %36 = load i32, i32* @AK4117_REG_RCS0, align 4
  %37 = call zeroext i8 @reg_read(%struct.ak4117* %35, i32 %36)
  store i8 %37, i8* %8, align 1
  %38 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %39 = load i32, i32* @AK4117_REG_RCS2, align 4
  %40 = call zeroext i8 @reg_read(%struct.ak4117* %38, i32 %39)
  store i8 %40, i8* %10, align 1
  %41 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %42 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %41, i32 0, i32 7
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @AK4117_PAR, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %53 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %34
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @AK4117_V, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %65 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %56
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* @AK4117_CCRC, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %77 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i8, i8* %10, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* @AK4117_QCRC, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %89 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %80
  %93 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %94 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %93, i32 0, i32 0
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @AK4117_QINT, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @AK4117_CINT, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %98, %100
  %102 = load i8, i8* @AK4117_STC, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %101, %103
  %105 = load i8, i8* @AK4117_AUDION, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %104, %106
  %108 = load i8, i8* @AK4117_AUTO, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %107, %109
  %111 = load i8, i8* @AK4117_UNLCK, align 1
  %112 = zext i8 %111 to i32
  %113 = or i32 %110, %112
  %114 = and i32 %96, %113
  %115 = load i8, i8* %8, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @AK4117_QINT, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @AK4117_CINT, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %118, %120
  %122 = load i8, i8* @AK4117_STC, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %121, %123
  %125 = load i8, i8* @AK4117_AUDION, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %124, %126
  %128 = load i8, i8* @AK4117_AUTO, align 1
  %129 = zext i8 %128 to i32
  %130 = or i32 %127, %129
  %131 = load i8, i8* @AK4117_UNLCK, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = and i32 %116, %133
  %135 = xor i32 %114, %134
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %11, align 1
  %137 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %138 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AK4117_DTSCD, align 4
  %141 = load i32, i32* @AK4117_NPCM, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @AK4117_PEM, align 4
  %144 = or i32 %142, %143
  %145 = or i32 %144, 15
  %146 = and i32 %139, %145
  %147 = load i8, i8* %9, align 1
  %148 = zext i8 %147 to i32
  %149 = load i32, i32* @AK4117_DTSCD, align 4
  %150 = load i32, i32* @AK4117_NPCM, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @AK4117_PEM, align 4
  %153 = or i32 %151, %152
  %154 = or i32 %153, 15
  %155 = and i32 %148, %154
  %156 = xor i32 %146, %155
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %12, align 1
  %158 = load i8, i8* %8, align 1
  %159 = zext i8 %158 to i32
  %160 = load i8, i8* @AK4117_QINT, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* @AK4117_CINT, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %161, %163
  %165 = load i8, i8* @AK4117_STC, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %164, %166
  %168 = xor i32 %167, -1
  %169 = and i32 %159, %168
  %170 = trunc i32 %169 to i8
  %171 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %172 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %171, i32 0, i32 0
  store i8 %170, i8* %172, align 8
  %173 = load i8, i8* %9, align 1
  %174 = zext i8 %173 to i32
  %175 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %176 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i8, i8* %10, align 1
  %178 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %179 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %178, i32 0, i32 2
  store i8 %177, i8* %179, align 8
  %180 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %181 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %180, i32 0, i32 7
  %182 = load i64, i64* %6, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  %184 = load i8, i8* %8, align 1
  %185 = zext i8 %184 to i32
  %186 = load i8, i8* @AK4117_PAR, align 1
  %187 = zext i8 %186 to i32
  %188 = and i32 %185, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %92
  %191 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %192 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %195 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %196 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %195, i32 0, i32 5
  %197 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %197, i64 0
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = call i32 @snd_ctl_notify(i32 %193, i32 %194, i32* %200)
  br label %202

202:                                              ; preds = %190, %92
  %203 = load i8, i8* %8, align 1
  %204 = zext i8 %203 to i32
  %205 = load i8, i8* @AK4117_V, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %204, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %202
  %210 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %211 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %214 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %215 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %214, i32 0, i32 5
  %216 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %216, i64 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = call i32 @snd_ctl_notify(i32 %212, i32 %213, i32* %219)
  br label %221

221:                                              ; preds = %209, %202
  %222 = load i8, i8* %10, align 1
  %223 = zext i8 %222 to i32
  %224 = load i8, i8* @AK4117_CCRC, align 1
  %225 = zext i8 %224 to i32
  %226 = and i32 %223, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %221
  %229 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %230 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %233 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %234 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %233, i32 0, i32 5
  %235 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %235, i64 2
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = call i32 @snd_ctl_notify(i32 %231, i32 %232, i32* %238)
  br label %240

240:                                              ; preds = %228, %221
  %241 = load i8, i8* %10, align 1
  %242 = zext i8 %241 to i32
  %243 = load i8, i8* @AK4117_QCRC, align 1
  %244 = zext i8 %243 to i32
  %245 = and i32 %242, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %240
  %248 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %249 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %252 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %253 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %252, i32 0, i32 5
  %254 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %254, i64 3
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = call i32 @snd_ctl_notify(i32 %250, i32 %251, i32* %257)
  br label %259

259:                                              ; preds = %247, %240
  %260 = load i8, i8* %12, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %261, 15
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %276

264:                                              ; preds = %259
  %265 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %266 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %269 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %270 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %269, i32 0, i32 5
  %271 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %271, i64 4
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = call i32 @snd_ctl_notify(i32 %267, i32 %268, i32* %274)
  br label %276

276:                                              ; preds = %264, %259
  %277 = load i8, i8* %12, align 1
  %278 = zext i8 %277 to i32
  %279 = load i32, i32* @AK4117_PEM, align 4
  %280 = and i32 %278, %279
  %281 = load i8, i8* %11, align 1
  %282 = zext i8 %281 to i32
  %283 = load i8, i8* @AK4117_CINT, align 1
  %284 = zext i8 %283 to i32
  %285 = and i32 %282, %284
  %286 = or i32 %280, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %276
  %289 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %290 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %293 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %294 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %293, i32 0, i32 5
  %295 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %295, i64 6
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = call i32 @snd_ctl_notify(i32 %291, i32 %292, i32* %298)
  br label %300

300:                                              ; preds = %288, %276
  %301 = load i8, i8* %11, align 1
  %302 = zext i8 %301 to i32
  %303 = load i8, i8* @AK4117_QINT, align 1
  %304 = zext i8 %303 to i32
  %305 = and i32 %302, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %300
  %308 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %309 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %312 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %313 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %312, i32 0, i32 5
  %314 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %314, i64 8
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = call i32 @snd_ctl_notify(i32 %310, i32 %311, i32* %317)
  br label %319

319:                                              ; preds = %307, %300
  %320 = load i8, i8* %11, align 1
  %321 = zext i8 %320 to i32
  %322 = load i8, i8* @AK4117_AUDION, align 1
  %323 = zext i8 %322 to i32
  %324 = and i32 %321, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %338

326:                                              ; preds = %319
  %327 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %328 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %331 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %332 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %331, i32 0, i32 5
  %333 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %333, i64 9
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 0
  %337 = call i32 @snd_ctl_notify(i32 %329, i32 %330, i32* %336)
  br label %338

338:                                              ; preds = %326, %319
  %339 = load i8, i8* %12, align 1
  %340 = zext i8 %339 to i32
  %341 = load i32, i32* @AK4117_NPCM, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %356

344:                                              ; preds = %338
  %345 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %346 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %349 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %350 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %349, i32 0, i32 5
  %351 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %351, i64 10
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = call i32 @snd_ctl_notify(i32 %347, i32 %348, i32* %354)
  br label %356

356:                                              ; preds = %344, %338
  %357 = load i8, i8* %12, align 1
  %358 = zext i8 %357 to i32
  %359 = load i32, i32* @AK4117_DTSCD, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %374

362:                                              ; preds = %356
  %363 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %364 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %363, i32 0, i32 6
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %367 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %368 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %367, i32 0, i32 5
  %369 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %369, i64 11
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = call i32 @snd_ctl_notify(i32 %365, i32 %366, i32* %372)
  br label %374

374:                                              ; preds = %362, %356
  %375 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %376 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %375, i32 0, i32 4
  %377 = load i32 (%struct.ak4117*, i8, i8)*, i32 (%struct.ak4117*, i8, i8)** %376, align 8
  %378 = icmp ne i32 (%struct.ak4117*, i8, i8)* %377, null
  br i1 %378, label %379, label %394

379:                                              ; preds = %374
  %380 = load i8, i8* %11, align 1
  %381 = zext i8 %380 to i32
  %382 = load i8, i8* %12, align 1
  %383 = zext i8 %382 to i32
  %384 = or i32 %381, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %379
  %387 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %388 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %387, i32 0, i32 4
  %389 = load i32 (%struct.ak4117*, i8, i8)*, i32 (%struct.ak4117*, i8, i8)** %388, align 8
  %390 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %391 = load i8, i8* %11, align 1
  %392 = load i8, i8* %12, align 1
  %393 = call i32 %389(%struct.ak4117* %390, i8 zeroext %391, i8 zeroext %392)
  br label %394

394:                                              ; preds = %386, %379, %374
  br label %395

395:                                              ; preds = %394, %33
  %396 = load i8, i8* %9, align 1
  %397 = call i32 @external_rate(i8 zeroext %396)
  store i32 %397, i32* %7, align 4
  %398 = load i32, i32* %4, align 4
  %399 = load i32, i32* @AK4117_CHECK_NO_RATE, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %437, label %402

402:                                              ; preds = %395
  %403 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %404 = icmp ne %struct.snd_pcm_runtime* %403, null
  br i1 %404, label %405, label %437

405:                                              ; preds = %402
  %406 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %407 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %7, align 4
  %410 = icmp ne i32 %408, %409
  br i1 %410, label %411, label %437

411:                                              ; preds = %405
  %412 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %413 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %412, i32 0, i32 3
  %414 = load %struct.TYPE_7__*, %struct.TYPE_7__** %413, align 8
  %415 = load i64, i64* %6, align 8
  %416 = call i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_7__* %414, i64 %415)
  %417 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %418 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %417, i32 0, i32 3
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %418, align 8
  %420 = call i64 @snd_pcm_running(%struct.TYPE_7__* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %431

422:                                              ; preds = %411
  %423 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %424 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %423, i32 0, i32 3
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %424, align 8
  %426 = load i32, i32* @SNDRV_PCM_STATE_DRAINING, align 4
  %427 = call i32 @snd_pcm_stop(%struct.TYPE_7__* %425, i32 %426)
  %428 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %429 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %428, i32 0, i32 1
  %430 = call i32 @wake_up(i32* %429)
  store i32 1, i32* %7, align 4
  br label %431

431:                                              ; preds = %422, %411
  %432 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %433 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %432, i32 0, i32 3
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %433, align 8
  %435 = load i64, i64* %6, align 8
  %436 = call i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_7__* %434, i64 %435)
  br label %437

437:                                              ; preds = %431, %405, %402, %395
  %438 = load i32, i32* %7, align 4
  ret i32 %438
}

declare dso_local zeroext i8 @reg_read(%struct.ak4117*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @external_rate(i8 zeroext) #1

declare dso_local i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @snd_pcm_running(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_pcm_stop(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
