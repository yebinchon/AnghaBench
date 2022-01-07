; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.via82xx = type { %struct.TYPE_3__*, i64, i64, i64, %struct.via_rate_lock* }
%struct.TYPE_3__ = type { i32* }
%struct.via_rate_lock = type { i32, i32, i32 }
%struct.viadev = type { i64, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.viadev*, %struct.TYPE_4__ }

@snd_via82xx_hw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AC97_RATES_SPDIF = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_8000_48000 = common dso_local global i32 0, align 4
@AC97_RATES_ADC = common dso_local global i32 0, align 4
@AC97_RATES_FRONT_DAC = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*, %struct.viadev*, %struct.snd_pcm_substream*)* @snd_via82xx_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_pcm_open(%struct.via82xx* %0, %struct.viadev* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.via82xx*, align 8
  %6 = alloca %struct.viadev*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.via_rate_lock*, align 8
  %11 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %5, align 8
  store %struct.viadev* %1, %struct.viadev** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %8, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 1
  %17 = bitcast %struct.TYPE_4__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 4 bitcast (%struct.TYPE_4__* @snd_via82xx_hw to i8*), i64 12, i1 false)
  %18 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %19 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %18, i32 0, i32 4
  %20 = load %struct.via_rate_lock*, %struct.via_rate_lock** %19, align 8
  %21 = load %struct.viadev*, %struct.viadev** %6, align 8
  %22 = getelementptr inbounds %struct.viadev, %struct.viadev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %20, i64 %23
  store %struct.via_rate_lock* %24, %struct.via_rate_lock** %10, align 8
  %25 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %26 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %29 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %33 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %3
  %37 = load %struct.viadev*, %struct.viadev** %6, align 8
  %38 = getelementptr inbounds %struct.viadev, %struct.viadev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %43 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @AC97_RATES_SPDIF, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %54 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %53)
  br label %146

55:                                               ; preds = %36, %3
  %56 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %57 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.viadev*, %struct.viadev** %6, align 8
  %62 = getelementptr inbounds %struct.viadev, %struct.viadev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 48000, i32* %72, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 48000, i32* %75, align 4
  br label %145

76:                                               ; preds = %60, %55
  %77 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %78 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load %struct.viadev*, %struct.viadev** %6, align 8
  %83 = getelementptr inbounds %struct.viadev, %struct.viadev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 64
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %88 = load i32, i32* @SNDRV_PCM_RATE_8000_48000, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 8000, i32* %95, align 4
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 48000, i32* %98, align 8
  br label %144

99:                                               ; preds = %81, %76
  %100 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %101 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %129, label %104

104:                                              ; preds = %99
  %105 = load %struct.viadev*, %struct.viadev** %6, align 8
  %106 = getelementptr inbounds %struct.viadev, %struct.viadev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @AC97_RATES_ADC, align 4
  br label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @AC97_RATES_FRONT_DAC, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %11, align 4
  %115 = load %struct.via82xx*, %struct.via82xx** %5, align 8
  %116 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %128 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %127)
  br label %143

129:                                              ; preds = %99
  %130 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %135 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %138 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  store i32 %136, i32* %142, align 8
  br label %143

143:                                              ; preds = %129, %113
  br label %144

144:                                              ; preds = %143, %86
  br label %145

145:                                              ; preds = %144, %65
  br label %146

146:                                              ; preds = %145, %41
  %147 = load %struct.via_rate_lock*, %struct.via_rate_lock** %10, align 8
  %148 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %147, i32 0, i32 1
  %149 = call i32 @spin_unlock_irq(i32* %148)
  %150 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %151 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %152 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %150, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %4, align 4
  br label %163

156:                                              ; preds = %146
  %157 = load %struct.viadev*, %struct.viadev** %6, align 8
  %158 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %159 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %158, i32 0, i32 0
  store %struct.viadev* %157, %struct.viadev** %159, align 8
  %160 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %161 = load %struct.viadev*, %struct.viadev** %6, align 8
  %162 = getelementptr inbounds %struct.viadev, %struct.viadev* %161, i32 0, i32 2
  store %struct.snd_pcm_substream* %160, %struct.snd_pcm_substream** %162, align 8
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %156, %154
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
