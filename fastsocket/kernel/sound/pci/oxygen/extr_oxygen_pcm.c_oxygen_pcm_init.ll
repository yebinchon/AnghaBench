; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_pcm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_pcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm = type { i32, i8*, %struct.oxygen*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PLAYBACK_0_TO_I2S = common dso_local global i32 0, align 4
@CAPTURE_0_FROM_I2S_1 = common dso_local global i32 0, align 4
@CAPTURE_0_FROM_I2S_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Multichannel\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@oxygen_multich_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@oxygen_rec_a_ops = common dso_local global i32 0, align 4
@oxygen_rec_b_ops = common dso_local global i32 0, align 4
@oxygen_pcm_free = common dso_local global i8* null, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@DEFAULT_BUFFER_BYTES_MULTICH = common dso_local global i32 0, align 4
@BUFFER_BYTES_MAX_MULTICH = common dso_local global i32 0, align 4
@DEFAULT_BUFFER_BYTES = common dso_local global i32 0, align 4
@BUFFER_BYTES_MAX = common dso_local global i32 0, align 4
@PLAYBACK_1_TO_SPDIF = common dso_local global i32 0, align 4
@CAPTURE_1_FROM_SPDIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Digital\00", align 1
@oxygen_spdif_ops = common dso_local global i32 0, align 4
@oxygen_rec_c_ops = common dso_local global i32 0, align 4
@PLAYBACK_2_TO_AC97_1 = common dso_local global i32 0, align 4
@CAPTURE_2_FROM_AC97_1 = common dso_local global i32 0, align 4
@CAPTURE_2_FROM_I2S_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"AC97\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Analog2\00", align 1
@oxygen_ac97_ops = common dso_local global i32 0, align 4
@OXYGEN_REC_ROUTING = common dso_local global i32 0, align 4
@OXYGEN_REC_B_ROUTE_AC97_1 = common dso_local global i32 0, align 4
@OXYGEN_REC_B_ROUTE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Front Panel\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Analog 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oxygen_pcm_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PLAYBACK_0_TO_I2S, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %19 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CAPTURE_0_FROM_I2S_1, align 4
  %23 = load i32, i32* @CAPTURE_0_FROM_I2S_2, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %126

34:                                               ; preds = %1
  %35 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %36 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @snd_pcm_new(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 %38, i32 %39, %struct.snd_pcm** %4)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %297

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %50 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %51 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %49, i64 %50, i32* @oxygen_multich_ops)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %54 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CAPTURE_0_FROM_I2S_1, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %63 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %61, i64 %62, i32* @oxygen_rec_a_ops)
  br label %77

64:                                               ; preds = %52
  %65 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %66 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CAPTURE_0_FROM_I2S_2, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %74 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %75 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %73, i64 %74, i32* @oxygen_rec_b_ops)
  br label %76

76:                                               ; preds = %72, %64
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %79 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %80 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %79, i32 0, i32 2
  store %struct.oxygen* %78, %struct.oxygen** %80, align 8
  %81 = load i8*, i8** @oxygen_pcm_free, align 8
  %82 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %83 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %85 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @strcpy(i32 %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %77
  %91 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %92 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %99 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %100 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @snd_dma_pci_data(i32 %101)
  %103 = load i32, i32* @DEFAULT_BUFFER_BYTES_MULTICH, align 4
  %104 = load i32, i32* @BUFFER_BYTES_MAX_MULTICH, align 4
  %105 = call i32 @snd_pcm_lib_preallocate_pages(i32 %97, i32 %98, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %90, %77
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %106
  %110 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %111 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %118 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %119 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @snd_dma_pci_data(i32 %120)
  %122 = load i32, i32* @DEFAULT_BUFFER_BYTES, align 4
  %123 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %124 = call i32 @snd_pcm_lib_preallocate_pages(i32 %116, i32 %117, i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %109, %106
  br label %126

126:                                              ; preds = %125, %1
  %127 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %128 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PLAYBACK_1_TO_SPDIF, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %5, align 4
  %137 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %138 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CAPTURE_1_FROM_SPDIF, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %196

151:                                              ; preds = %126
  %152 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %153 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @snd_pcm_new(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %155, i32 %156, %struct.snd_pcm** %4)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %2, align 4
  br label %297

162:                                              ; preds = %151
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %167 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %168 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %166, i64 %167, i32* @oxygen_spdif_ops)
  br label %169

169:                                              ; preds = %165, %162
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %174 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %175 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %173, i64 %174, i32* @oxygen_rec_c_ops)
  br label %176

176:                                              ; preds = %172, %169
  %177 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %178 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %179 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %178, i32 0, i32 2
  store %struct.oxygen* %177, %struct.oxygen** %179, align 8
  %180 = load i8*, i8** @oxygen_pcm_free, align 8
  %181 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %182 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  %183 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %184 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @strcpy(i32 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %187 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %188 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %189 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %190 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @snd_dma_pci_data(i32 %191)
  %193 = load i32, i32* @DEFAULT_BUFFER_BYTES, align 4
  %194 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %195 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %187, i32 %188, i32 %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %176, %126
  %197 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %198 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %196
  %202 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %203 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @PLAYBACK_2_TO_AC97_1, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %5, align 4
  %212 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %213 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @CAPTURE_2_FROM_AC97_1, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  store i32 %221, i32* %6, align 4
  br label %233

222:                                              ; preds = %196
  store i32 0, i32* %5, align 4
  %223 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %224 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @CAPTURE_2_FROM_I2S_2, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  store i32 %232, i32* %6, align 4
  br label %233

233:                                              ; preds = %222, %201
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* %6, align 4
  %236 = or i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %296

238:                                              ; preds = %233
  %239 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %240 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %5, align 4
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @snd_pcm_new(i32 %241, i8* %245, i32 2, i32 %246, i32 %247, %struct.snd_pcm** %4)
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %7, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %238
  %252 = load i32, i32* %7, align 4
  store i32 %252, i32* %2, align 4
  br label %297

253:                                              ; preds = %238
  %254 = load i32, i32* %5, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %253
  %257 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %258 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %259 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %257, i64 %258, i32* @oxygen_ac97_ops)
  %260 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %261 = load i32, i32* @OXYGEN_REC_ROUTING, align 4
  %262 = load i32, i32* @OXYGEN_REC_B_ROUTE_AC97_1, align 4
  %263 = load i32, i32* @OXYGEN_REC_B_ROUTE_MASK, align 4
  %264 = call i32 @oxygen_write8_masked(%struct.oxygen* %260, i32 %261, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %256, %253
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %270 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %271 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %269, i64 %270, i32* @oxygen_rec_b_ops)
  br label %272

272:                                              ; preds = %268, %265
  %273 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %274 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %275 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %274, i32 0, i32 2
  store %struct.oxygen* %273, %struct.oxygen** %275, align 8
  %276 = load i8*, i8** @oxygen_pcm_free, align 8
  %277 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %278 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %277, i32 0, i32 1
  store i8* %276, i8** %278, align 8
  %279 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %280 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %5, align 4
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %286 = call i32 @strcpy(i32 %281, i8* %285)
  %287 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %288 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %289 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %290 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @snd_dma_pci_data(i32 %291)
  %293 = load i32, i32* @DEFAULT_BUFFER_BYTES, align 4
  %294 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %295 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %287, i32 %288, i32 %292, i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %272, %233
  store i32 0, i32* %2, align 4
  br label %297

297:                                              ; preds = %296, %251, %160, %43
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @oxygen_write8_masked(%struct.oxygen*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
