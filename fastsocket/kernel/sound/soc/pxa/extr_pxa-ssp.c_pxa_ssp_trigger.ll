; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.ssp_priv* }
%struct.ssp_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@SSCR1 = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SSCR1_TSRE = common dso_local global i32 0, align 4
@SSCR1_RSRE = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @pxa_ssp_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssp_priv*, align 8
  %11 = alloca %struct.ssp_device*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %7, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %19, align 8
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load %struct.ssp_priv*, %struct.ssp_priv** %22, align 8
  store %struct.ssp_priv* %23, %struct.ssp_priv** %10, align 8
  %24 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %25 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.ssp_device*, %struct.ssp_device** %26, align 8
  store %struct.ssp_device* %27, %struct.ssp_device** %11, align 8
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %139 [
    i32 131, label %29
    i32 132, label %33
    i32 130, label %62
    i32 129, label %87
    i32 128, label %111
    i32 133, label %115
  ]

29:                                               ; preds = %3
  %30 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %31 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %30, i32 0, i32 0
  %32 = call i32 @ssp_enable(%struct.TYPE_5__* %31)
  br label %142

33:                                               ; preds = %3
  %34 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %35 = load i32, i32* @SSCR1, align 4
  %36 = call i32 @ssp_read_reg(%struct.ssp_device* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @SSCR1_TSRE, align 4
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load i32, i32* @SSCR1_RSRE, align 4
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %52 = load i32, i32* @SSCR1, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ssp_write_reg(%struct.ssp_device* %51, i32 %52, i32 %53)
  %55 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %56 = load i32, i32* @SSSR, align 4
  %57 = call i32 @ssp_read_reg(%struct.ssp_device* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %59 = load i32, i32* @SSSR, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ssp_write_reg(%struct.ssp_device* %58, i32 %59, i32 %60)
  br label %142

62:                                               ; preds = %3
  %63 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %64 = load i32, i32* @SSCR1, align 4
  %65 = call i32 @ssp_read_reg(%struct.ssp_device* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @SSCR1_TSRE, align 4
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %79

75:                                               ; preds = %62
  %76 = load i32, i32* @SSCR1_RSRE, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %81 = load i32, i32* @SSCR1, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @ssp_write_reg(%struct.ssp_device* %80, i32 %81, i32 %82)
  %84 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %85 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %84, i32 0, i32 0
  %86 = call i32 @ssp_enable(%struct.TYPE_5__* %85)
  br label %142

87:                                               ; preds = %3
  %88 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %89 = load i32, i32* @SSCR1, align 4
  %90 = call i32 @ssp_read_reg(%struct.ssp_device* %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load i32, i32* @SSCR1_TSRE, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %12, align 4
  br label %106

101:                                              ; preds = %87
  %102 = load i32, i32* @SSCR1_RSRE, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %108 = load i32, i32* @SSCR1, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @ssp_write_reg(%struct.ssp_device* %107, i32 %108, i32 %109)
  br label %142

111:                                              ; preds = %3
  %112 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %113 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %112, i32 0, i32 0
  %114 = call i32 @ssp_disable(%struct.TYPE_5__* %113)
  br label %142

115:                                              ; preds = %3
  %116 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %117 = load i32, i32* @SSCR1, align 4
  %118 = call i32 @ssp_read_reg(%struct.ssp_device* %116, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load i32, i32* @SSCR1_TSRE, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %12, align 4
  br label %134

129:                                              ; preds = %115
  %130 = load i32, i32* @SSCR1_RSRE, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %136 = load i32, i32* @SSCR1, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @ssp_write_reg(%struct.ssp_device* %135, i32 %136, i32 %137)
  br label %142

139:                                              ; preds = %3
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %139, %134, %111, %106, %79, %50, %29
  %143 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %144 = call i32 @dump_registers(%struct.ssp_device* %143)
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i32 @ssp_enable(%struct.TYPE_5__*) #1

declare dso_local i32 @ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @ssp_disable(%struct.TYPE_5__*) #1

declare dso_local i32 @dump_registers(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
