; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_autoload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_autoload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_SB_CSP_ST_RUNNING = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_ST_LOADED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_ST_AUTO = common dso_local global i32 0, align 4
@CSP_PROGRAM_MULAW = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_MU_LAW = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_MODE_DSP_READ = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_MODE_DSP_WRITE = common dso_local global i32 0, align 4
@CSP_PROGRAM_ALAW = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_A_LAW = common dso_local global i32 0, align 4
@CSP_PROGRAM_ADPCM_INIT = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_LOAD_INITBLOCK = common dso_local global i32 0, align 4
@CSP_PROGRAM_ADPCM_PLAYBACK = common dso_local global i32 0, align 4
@CSP_PROGRAM_ADPCM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_IMA_ADPCM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_SAMPLE_16BIT = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_MONO = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_STEREO = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_RATE_ALL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb_csp*, i32, i32)* @snd_sb_csp_autoload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb_csp_autoload(%struct.snd_sb_csp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sb_csp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %11 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SNDRV_SB_CSP_ST_RUNNING, align 4
  %14 = load i32, i32* @SNDRV_SB_CSP_ST_LOADED, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %175

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %25 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %32 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @SNDRV_SB_CSP_ST_AUTO, align 4
  %38 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %39 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %162

40:                                               ; preds = %29, %21
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %96 [
    i32 128, label %42
    i32 130, label %54
    i32 129, label %66
  ]

42:                                               ; preds = %40
  %43 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %44 = load i32, i32* @CSP_PROGRAM_MULAW, align 4
  %45 = call i32 @snd_sb_csp_firmware_load(%struct.snd_sb_csp* %43, i32 %44, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @SNDRV_PCM_FMTBIT_MU_LAW, align 4
  %47 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %48 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_READ, align 4
  %50 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_WRITE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %53 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %129

54:                                               ; preds = %40
  %55 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %56 = load i32, i32* @CSP_PROGRAM_ALAW, align 4
  %57 = call i32 @snd_sb_csp_firmware_load(%struct.snd_sb_csp* %55, i32 %56, i32 0)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @SNDRV_PCM_FMTBIT_A_LAW, align 4
  %59 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %60 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_READ, align 4
  %62 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_WRITE, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %65 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %129

66:                                               ; preds = %40
  %67 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %68 = load i32, i32* @CSP_PROGRAM_ADPCM_INIT, align 4
  %69 = load i32, i32* @SNDRV_SB_CSP_LOAD_INITBLOCK, align 4
  %70 = call i32 @snd_sb_csp_firmware_load(%struct.snd_sb_csp* %67, i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %129

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_WRITE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %80 = load i32, i32* @CSP_PROGRAM_ADPCM_PLAYBACK, align 4
  %81 = call i32 @snd_sb_csp_firmware_load(%struct.snd_sb_csp* %79, i32 %80, i32 0)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_WRITE, align 4
  %83 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %84 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %92

85:                                               ; preds = %74
  %86 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %87 = load i32, i32* @CSP_PROGRAM_ADPCM_CAPTURE, align 4
  %88 = call i32 @snd_sb_csp_firmware_load(%struct.snd_sb_csp* %86, i32 %87, i32 0)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_READ, align 4
  %90 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %91 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %85, %78
  %93 = load i32, i32* @SNDRV_PCM_FMTBIT_IMA_ADPCM, align 4
  %94 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %95 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %129

96:                                               ; preds = %40
  %97 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %98 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SNDRV_SB_CSP_ST_AUTO, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %96
  %104 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %105 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %104, i32 0, i32 6
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @spin_lock_irqsave(i32* %107, i64 %108)
  %110 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %111 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %110, i32 0, i32 6
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = call i32 @set_mode_register(%struct.TYPE_2__* %112, i32 252)
  %114 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %115 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %114, i32 0, i32 6
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = call i32 @set_mode_register(%struct.TYPE_2__* %116, i32 0)
  %118 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %119 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %118, i32 0, i32 6
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %125 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %103, %96
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %175

129:                                              ; preds = %92, %73, %54, %42
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %134 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %136 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %135, i32 0, i32 5
  store i32 0, i32* %136, align 4
  %137 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %138 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %137, i32 0, i32 4
  store i32 0, i32* %138, align 8
  %139 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %140 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %139, i32 0, i32 3
  store i32 0, i32* %140, align 4
  %141 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %142 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %144 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %175

146:                                              ; preds = %129
  %147 = load i32, i32* @SNDRV_SB_CSP_ST_AUTO, align 4
  %148 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %149 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @SNDRV_SB_CSP_SAMPLE_16BIT, align 4
  %151 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %152 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @SNDRV_SB_CSP_MONO, align 4
  %154 = load i32, i32* @SNDRV_SB_CSP_STEREO, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %157 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @SNDRV_SB_CSP_RATE_ALL, align 4
  %159 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %160 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161, %36
  %163 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %164 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @SNDRV_SB_CSP_ST_AUTO, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %173

170:                                              ; preds = %162
  %171 = load i32, i32* @ENXIO, align 4
  %172 = sub nsw i32 0, %171
  br label %173

173:                                              ; preds = %170, %169
  %174 = phi i32 [ 0, %169 ], [ %172, %170 ]
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %173, %132, %126, %18
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @snd_sb_csp_firmware_load(%struct.snd_sb_csp*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_mode_register(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
