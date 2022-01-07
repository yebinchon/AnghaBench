; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_dai_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.fsi_priv = type { i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@master = common dso_local global %struct.TYPE_2__* null, align 8
@CKG1 = common dso_local global i32 0, align 4
@SH_FSI_INVERSION_MASK = common dso_local global i32 0, align 4
@CKG2 = common dso_local global i32 0, align 4
@DO_FMT = common dso_local global i32 0, align 4
@DI_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MONO\00", align 1
@CR_MONO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"MONO Delay\00", align 1
@CR_MONO_D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@CR_PCM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"I2S\00", align 1
@CR_I2S = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"TDM\00", align 1
@CR_TDM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"TDM Delay\00", align 1
@CR_TDM_D = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"unknown format.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"channel size error.\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"use %s format (%d channel) use %d DMAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @fsi_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.fsi_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = call %struct.fsi_priv* @fsi_get(%struct.snd_pcm_substream* %15)
  store %struct.fsi_priv* %16, %struct.fsi_priv** %6, align 8
  %17 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %18 = call i32 @fsi_get_info_flags(%struct.fsi_priv* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_enable(i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 16
  store i32 %32, i32* %11, align 4
  %33 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @fsi_is_master_mode(%struct.fsi_priv* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %40 = load i32, i32* @CKG1, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %39, i32 %40, i32 %41, i32 %42)
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %46 = load i32, i32* @CKG1, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %45, i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %44, %38
  store i32 0, i32* %11, align 4
  %50 = load i32, i32* @SH_FSI_INVERSION_MASK, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %57 [
    i32 129, label %53
    i32 137, label %54
    i32 128, label %55
    i32 136, label %56
  ]

53:                                               ; preds = %49
  store i32 4096, i32* %11, align 4
  br label %57

54:                                               ; preds = %49
  store i32 256, i32* %11, align 4
  br label %57

55:                                               ; preds = %49
  store i32 16, i32* %11, align 4
  br label %57

56:                                               ; preds = %49
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %49, %56, %55, %54, %53
  %58 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %59 = load i32, i32* @CKG2, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @fsi_reg_write(%struct.fsi_priv* %58, i32 %59, i32 %60)
  store i32 0, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @DO_FMT, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @DI_FMT, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @SH_FSI_GET_OFMT(i32 %73)
  br label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @SH_FSI_GET_IFMT(i32 %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %74, %72 ], [ %77, %75 ]
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %143 [
    i32 134, label %81
    i32 133, label %86
    i32 132, label %91
    i32 135, label %96
    i32 131, label %101
    i32 130, label %122
  ]

81:                                               ; preds = %78
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %82 = load i32, i32* @CR_MONO, align 4
  %83 = call i32 @CR_FMT(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %85 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %150

86:                                               ; preds = %78
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %87 = load i32, i32* @CR_MONO_D, align 4
  %88 = call i32 @CR_FMT(i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %90 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  br label %150

91:                                               ; preds = %78
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %92 = load i32, i32* @CR_PCM, align 4
  %93 = call i32 @CR_FMT(i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %95 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %94, i32 0, i32 0
  store i32 2, i32* %95, align 4
  br label %150

96:                                               ; preds = %78
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %97 = load i32, i32* @CR_I2S, align 4
  %98 = call i32 @CR_FMT(i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %100 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %99, i32 0, i32 0
  store i32 2, i32* %100, align 4
  br label %150

101:                                              ; preds = %78
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %102 = load i32, i32* @CR_TDM, align 4
  %103 = call i32 @CR_FMT(i32 %102)
  %104 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %105 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  %108 = or i32 %103, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* %8, align 4
  %113 = call i8* @SH_FSI_GET_CH_O(i32 %112)
  br label %117

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  %116 = call i8* @SH_FSI_GET_CH_I(i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i8* [ %113, %111 ], [ %116, %114 ]
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %121 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %150

122:                                              ; preds = %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %123 = load i32, i32* @CR_TDM_D, align 4
  %124 = call i32 @CR_FMT(i32 %123)
  %125 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %126 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  %129 = or i32 %124, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load i32, i32* %8, align 4
  %134 = call i8* @SH_FSI_GET_CH_O(i32 %133)
  br label %138

135:                                              ; preds = %122
  %136 = load i32, i32* %8, align 4
  %137 = call i8* @SH_FSI_GET_CH_I(i32 %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = phi i8* [ %134, %132 ], [ %137, %135 ]
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %142 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %150

143:                                              ; preds = %78
  %144 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %145 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %199

150:                                              ; preds = %138, %117, %96, %91, %86, %81
  %151 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %152 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %166 [
    i32 1, label %154
    i32 2, label %157
    i32 3, label %160
    i32 4, label %160
    i32 5, label %163
    i32 6, label %163
    i32 7, label %163
    i32 8, label %163
  ]

154:                                              ; preds = %150
  %155 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %156 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %155, i32 0, i32 1
  store i32 256, i32* %156, align 4
  br label %173

157:                                              ; preds = %150
  %158 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %159 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %158, i32 0, i32 1
  store i32 128, i32* %159, align 4
  br label %173

160:                                              ; preds = %150, %150
  %161 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %162 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %161, i32 0, i32 1
  store i32 64, i32* %162, align 4
  br label %173

163:                                              ; preds = %150, %150, %150, %150
  %164 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %165 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %164, i32 0, i32 1
  store i32 32, i32* %165, align 4
  br label %173

166:                                              ; preds = %150
  %167 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %168 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %199

173:                                              ; preds = %163, %160, %157, %154
  %174 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @fsi_reg_write(%struct.fsi_priv* %174, i32 %175, i32 %176)
  %178 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %179 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** %7, align 8
  %182 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %183 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %186 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dev_dbg(i32 %180, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %181, i32 %184, i32 %187)
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %173
  %192 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %193 = call i32 @fsi_clk_ctrl(%struct.fsi_priv* %192, i32 1)
  br label %194

194:                                              ; preds = %191, %173
  %195 = load %struct.fsi_priv*, %struct.fsi_priv** %6, align 8
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @fsi_irq_init(%struct.fsi_priv* %195, i32 %196)
  %198 = load i32, i32* %14, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %194, %166, %143
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.fsi_priv* @fsi_get(%struct.snd_pcm_substream*) #1

declare dso_local i32 @fsi_get_info_flags(%struct.fsi_priv*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @fsi_is_master_mode(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_reg_mask_set(%struct.fsi_priv*, i32, i32, i32) #1

declare dso_local i32 @fsi_reg_write(%struct.fsi_priv*, i32, i32) #1

declare dso_local i32 @SH_FSI_GET_OFMT(i32) #1

declare dso_local i32 @SH_FSI_GET_IFMT(i32) #1

declare dso_local i32 @CR_FMT(i32) #1

declare dso_local i8* @SH_FSI_GET_CH_O(i32) #1

declare dso_local i8* @SH_FSI_GET_CH_I(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @fsi_clk_ctrl(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_irq_init(%struct.fsi_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
