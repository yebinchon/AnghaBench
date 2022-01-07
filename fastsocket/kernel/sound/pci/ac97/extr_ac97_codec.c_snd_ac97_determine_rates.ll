; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_determine_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_determine_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@AC97_DOUBLE_RATE = common dso_local global i32 0, align 4
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@AC97_EI_DRA = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EA_DRA = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_8000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_11025 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_16000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_22050 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_32000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_64000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i32, i32, i32*)* @snd_ac97_determine_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ac97_determine_rates(%struct.snd_ac97* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %4
  %18 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AC97_DOUBLE_RATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %26, %17
  br label %212

36:                                               ; preds = %4
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %37, i32 %38)
  store i16 %39, i16* %10, align 2
  %40 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AC97_EI_DRA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %52 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %53 = load i32, i32* @AC97_EA_DRA, align 4
  %54 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %51, i32 %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %50, %46, %36
  %56 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %56, i32 %57, i32 %58, i32 11000)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %66, i32 %67, i32 %68, i32 8000)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @SNDRV_PCM_RATE_8000, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %76, i32 %77, i32 %78, i32 11025)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @SNDRV_PCM_RATE_11025, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %86, i32 %87, i32 %88, i32 16000)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* @SNDRV_PCM_RATE_16000, align 4
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %96, i32 %97, i32 %98, i32 22050)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @SNDRV_PCM_RATE_22050, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %106, i32 %107, i32 %108, i32 32000)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* @SNDRV_PCM_RATE_32000, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %116, i32 %117, i32 %118, i32 44100)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %121, %115
  %126 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %126, i32 %127, i32 %128, i32 48000)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %131, %125
  %136 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %137 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @AC97_DOUBLE_RATE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %197

142:                                              ; preds = %135
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %197

146:                                              ; preds = %142
  %147 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %148 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %149 = load i32, i32* @AC97_EA_DRA, align 4
  %150 = load i32, i32* @AC97_EA_DRA, align 4
  %151 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %152, i32 %153, i32 %154, i32 32000)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load i32, i32* @SNDRV_PCM_RATE_64000, align 4
  %159 = load i32, i32* %9, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %157, %146
  %162 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %162, i32 %163, i32 %164, i32 44100)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %167, %161
  %172 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %172, i32 %173, i32 %174, i32 48000)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %179 = load i32, i32* %9, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %177, %171
  %182 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i64 @snd_ac97_test_rate(%struct.snd_ac97* %182, i32 %183, i32 %184, i32 38050)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %9, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %187, %181
  %193 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %194 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %195 = load i32, i32* @AC97_EA_DRA, align 4
  %196 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %193, i32 %194, i32 %195, i32 0)
  br label %197

197:                                              ; preds = %192, %142, %135
  %198 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = load i16, i16* %10, align 2
  %201 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %198, i32 %199, i16 zeroext %200)
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %206 = load i32, i32* %7, align 4
  %207 = load i16, i16* %10, align 2
  %208 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %205, i32 %206, i16 zeroext %207)
  br label %209

209:                                              ; preds = %204, %197
  %210 = load i32, i32* %9, align 4
  %211 = load i32*, i32** %8, align 8
  store i32 %210, i32* %211, align 4
  br label %212

212:                                              ; preds = %209, %35
  ret void
}

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i64 @snd_ac97_test_rate(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
