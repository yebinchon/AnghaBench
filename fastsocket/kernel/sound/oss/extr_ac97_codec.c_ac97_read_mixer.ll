; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_read_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_read_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_mixer_hw = type { i32, i32 }
%struct.ac97_codec = type { {}*, i32, i64 }

@ac97_hw = common dso_local global %struct.ac97_mixer_hw* null, align 8
@AC97_MUTE = common dso_local global i32 0, align 4
@AC97_STEREO_MASK = common dso_local global i32 0, align 4
@SOUND_MIXER_IGAIN = common dso_local global i32 0, align 4
@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@SOUND_MIXER_ALTPCM = common dso_local global i32 0, align 4
@SOUND_MIXER_SPEAKER = common dso_local global i32 0, align 4
@SOUND_MIXER_PHONEIN = common dso_local global i32 0, align 4
@SOUND_MIXER_PHONEOUT = common dso_local global i32 0, align 4
@SOUND_MIXER_MIC = common dso_local global i32 0, align 4
@SOUND_MIXER_BASS = common dso_local global i32 0, align 4
@SOUND_MIXER_TREBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*, i32)* @ac97_read_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_read_mixer(%struct.ac97_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.ac97_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ac97_mixer_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** @ac97_hw, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %11, i64 %13
  store %struct.ac97_mixer_hw* %14, %struct.ac97_mixer_hw** %8, align 8
  %15 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %16 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.ac97_codec*, i32)**
  %18 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %17, align 8
  %19 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %20 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %21 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %18(%struct.ac97_codec* %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AC97_MUTE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %179

29:                                               ; preds = %2
  %30 = load i32, i32* @AC97_STEREO_MASK, align 4
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 127
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 127
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SOUND_MIXER_IGAIN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 100
  %47 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %48 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %51, 100
  %53 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %54 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %52, %55
  store i32 %56, i32* %9, align 4
  br label %85

57:                                               ; preds = %35
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SOUND_MIXER_ALTPCM, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %57
  %66 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %67 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 1, %68
  store i32 %69, i32* %7, align 4
  br label %74

70:                                               ; preds = %61
  %71 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %72 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %75, 100
  %77 = load i32, i32* %7, align 4
  %78 = sdiv i32 %76, %77
  %79 = sub nsw i32 100, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 100
  %82 = load i32, i32* %7, align 4
  %83 = sdiv i32 %81, %82
  %84 = sub nsw i32 100, %83
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %74, %44
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %86, %88
  store i32 %89, i32* %6, align 4
  br label %178

90:                                               ; preds = %29
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @SOUND_MIXER_SPEAKER, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, 30
  %97 = ashr i32 %96, 1
  %98 = mul nsw i32 %97, 100
  %99 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %100 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %98, %101
  %103 = sub nsw i32 100, %102
  store i32 %103, i32* %6, align 4
  br label %177

104:                                              ; preds = %90
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @SOUND_MIXER_PHONEIN, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, 31
  %111 = mul nsw i32 %110, 100
  %112 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %113 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %111, %114
  %116 = sub nsw i32 100, %115
  store i32 %116, i32* %6, align 4
  br label %176

117:                                              ; preds = %104
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @SOUND_MIXER_PHONEOUT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %123 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 1, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 31
  %128 = mul nsw i32 %127, 100
  %129 = load i32, i32* %7, align 4
  %130 = sdiv i32 %128, %129
  %131 = sub nsw i32 100, %130
  store i32 %131, i32* %6, align 4
  br label %175

132:                                              ; preds = %117
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @SOUND_MIXER_MIC, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 31
  %139 = mul nsw i32 %138, 100
  %140 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %141 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %139, %142
  %144 = sub nsw i32 100, %143
  store i32 %144, i32* %6, align 4
  br label %174

145:                                              ; preds = %132
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @SOUND_MIXER_BASS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load i32, i32* %5, align 4
  %151 = ashr i32 %150, 8
  %152 = and i32 %151, 14
  %153 = mul nsw i32 %152, 100
  %154 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %155 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %153, %156
  %158 = sub nsw i32 100, %157
  store i32 %158, i32* %6, align 4
  br label %173

159:                                              ; preds = %145
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @SOUND_MIXER_TREBLE, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load i32, i32* %5, align 4
  %165 = and i32 %164, 14
  %166 = mul nsw i32 %165, 100
  %167 = load %struct.ac97_mixer_hw*, %struct.ac97_mixer_hw** %8, align 8
  %168 = getelementptr inbounds %struct.ac97_mixer_hw, %struct.ac97_mixer_hw* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %166, %169
  %171 = sub nsw i32 100, %170
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %163, %159
  br label %173

173:                                              ; preds = %172, %149
  br label %174

174:                                              ; preds = %173, %136
  br label %175

175:                                              ; preds = %174, %121
  br label %176

176:                                              ; preds = %175, %108
  br label %177

177:                                              ; preds = %176, %94
  br label %178

178:                                              ; preds = %177, %85
  br label %179

179:                                              ; preds = %178, %28
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
