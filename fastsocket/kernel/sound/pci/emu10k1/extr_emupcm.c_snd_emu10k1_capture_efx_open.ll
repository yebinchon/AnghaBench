; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_efx_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_efx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i8* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_6__, i32, %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32, i32, i32, i32, i32, i32, %struct.snd_pcm_substream*, i32, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32*, %struct.snd_pcm_substream*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAPTURE_EFX = common dso_local global i32 0, align 4
@IPR_EFXBUFFULL = common dso_local global i32 0, align 4
@IPR_EFXBUFHALFFULL = common dso_local global i32 0, align 4
@INTE_EFXBUFENABLE = common dso_local global i32 0, align 4
@FXBA = common dso_local global i32 0, align 4
@FXBS = common dso_local global i32 0, align 4
@FXIDX = common dso_local global i32 0, align 4
@snd_emu10k1_pcm_free_substream = common dso_local global i32 0, align 4
@snd_emu10k1_capture_efx = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SNDRV_PCM_RATE_48000 = common dso_local global i8* null, align 8
@SNDRV_PCM_RATE_44100 = common dso_local global i8* null, align 8
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@snd_emu10k1_pcm_efx_interrupt = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@hw_constraints_capture_period_sizes = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_192000 = common dso_local global i8* null, align 8
@SNDRV_PCM_RATE_96000 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_capture_efx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_capture_efx_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_pcm*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_emu10k1* %10, %struct.snd_emu10k1** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %15 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 64, i32 32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_emu10k1_pcm* @kzalloc(i32 56, i32 %20)
  store %struct.snd_emu10k1_pcm* %21, %struct.snd_emu10k1_pcm** %5, align 8
  %22 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %23 = icmp eq %struct.snd_emu10k1_pcm* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %198

27:                                               ; preds = %1
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %29 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %29, i32 0, i32 9
  store %struct.snd_emu10k1* %28, %struct.snd_emu10k1** %30, align 8
  %31 = load i32, i32* @CAPTURE_EFX, align 4
  %32 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %35, i32 0, i32 7
  store %struct.snd_pcm_substream* %34, %struct.snd_pcm_substream** %36, align 8
  %37 = load i32, i32* @IPR_EFXBUFFULL, align 4
  %38 = load i32, i32* @IPR_EFXBUFHALFFULL, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %41 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @INTE_EFXBUFENABLE, align 4
  %43 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %44 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @FXBA, align 4
  %46 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %47 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @FXBS, align 4
  %49 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %50 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @FXIDX, align 4
  %52 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %56, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 2
  store %struct.snd_emu10k1_pcm* %54, %struct.snd_emu10k1_pcm** %58, align 8
  %59 = load i32, i32* @snd_emu10k1_pcm_free_substream, align 4
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %61, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 8
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 0
  %66 = bitcast %struct.TYPE_6__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 bitcast (%struct.TYPE_6__* @snd_emu10k1_capture_efx to i8*), i64 32, i1 false)
  %67 = load i8*, i8** @SNDRV_PCM_RATE_48000, align 8
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  store i8* %67, i8** %70, align 8
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 48000, i32* %73, align 4
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 48000, i32* %76, align 8
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %78 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %77, i32 0, i32 3
  %79 = call i32 @spin_lock_irq(i32* %78)
  %80 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %81 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %130

86:                                               ; preds = %27
  %87 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %88 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %125 [
    i32 0, label %91
    i32 1, label %108
  ]

91:                                               ; preds = %86
  %92 = load i8*, i8** @SNDRV_PCM_RATE_44100, align 8
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 5
  store i8* %92, i8** %95, align 8
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 44100, i32* %98, align 4
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 44100, i32* %101, align 8
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i32 16, i32* %104, align 4
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i32 16, i32* %107, align 8
  br label %125

108:                                              ; preds = %86
  %109 = load i8*, i8** @SNDRV_PCM_RATE_48000, align 8
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  store i8* %109, i8** %112, align 8
  %113 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 48000, i32* %115, align 4
  %116 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 48000, i32* %118, align 8
  %119 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  store i32 16, i32* %121, align 4
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  store i32 16, i32* %124, align 8
  br label %125

125:                                              ; preds = %86, %108, %91
  %126 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %127 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 8
  br label %171

130:                                              ; preds = %27
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  store i32 0, i32* %133, align 4
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  store i32 0, i32* %136, align 8
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %167, %130
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %137
  %142 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %143 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sdiv i32 %145, 32
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %8, align 4
  %151 = srem i32 %150, 32
  %152 = shl i32 1, %151
  %153 = and i32 %149, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %141
  %156 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %157 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %162 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %155, %141
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %137

170:                                              ; preds = %137
  br label %171

171:                                              ; preds = %170, %125
  %172 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %173 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %178 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %180 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %185 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %187 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %186, i32 0, i32 3
  %188 = call i32 @spin_unlock_irq(i32* %187)
  %189 = load i32, i32* @snd_emu10k1_pcm_efx_interrupt, align 4
  %190 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %191 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %193 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %194 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %193, i32 0, i32 1
  store %struct.snd_pcm_substream* %192, %struct.snd_pcm_substream** %194, align 8
  %195 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %196 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %197 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %195, i32 0, i32 %196, i32* @hw_constraints_capture_period_sizes)
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %171, %24
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_emu10k1_pcm* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
