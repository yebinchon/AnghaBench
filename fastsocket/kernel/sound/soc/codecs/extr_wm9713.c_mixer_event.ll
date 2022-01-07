; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_mixer_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_mixer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }

@HPL_MIXER = common dso_local global i32 0, align 4
@HPR_MIXER = common dso_local global i32 0, align 4
@AC97_PC_BEEP = common dso_local global i32 0, align 4
@AC97_MASTER_TONE = common dso_local global i32 0, align 4
@AC97_PHONE = common dso_local global i32 0, align 4
@AC97_REC_SEL = common dso_local global i32 0, align 4
@AC97_PCM = common dso_local global i32 0, align 4
@AC97_AUX = common dso_local global i32 0, align 4
@SND_SOC_DAPM_PRE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @mixer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HPL_MIXER, align 4
  %20 = call i32 @ac97_read(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HPR_MIXER, align 4
  %25 = call i32 @ac97_read(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AC97_PC_BEEP, align 4
  %30 = call i32 @ac97_read(i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AC97_MASTER_TONE, align 4
  %35 = call i32 @ac97_read(i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AC97_PHONE, align 4
  %40 = call i32 @ac97_read(i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AC97_REC_SEL, align 4
  %45 = call i32 @ac97_read(i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AC97_PCM, align 4
  %50 = call i32 @ac97_read(i32 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AC97_AUX, align 4
  %55 = call i32 @ac97_read(i32 %53, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SND_SOC_DAPM_PRE_REG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %206

61:                                               ; preds = %3
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65, %61
  %70 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AC97_PC_BEEP, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 32767
  %76 = call i32 @ac97_write(i32 %72, i32 %73, i32 %75)
  br label %85

77:                                               ; preds = %65
  %78 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AC97_PC_BEEP, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, 32768
  %84 = call i32 @ac97_write(i32 %80, i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %77, %69
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89, %85
  %94 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AC97_MASTER_TONE, align 4
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, 32767
  %100 = call i32 @ac97_write(i32 %96, i32 %97, i32 %99)
  br label %109

101:                                              ; preds = %89
  %102 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %103 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AC97_MASTER_TONE, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, 32768
  %108 = call i32 @ac97_write(i32 %104, i32 %105, i32 %107)
  br label %109

109:                                              ; preds = %101, %93
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113, %109
  %118 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %119 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AC97_PHONE, align 4
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %122, 32767
  %124 = call i32 @ac97_write(i32 %120, i32 %121, i32 %123)
  br label %133

125:                                              ; preds = %113
  %126 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %127 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AC97_PHONE, align 4
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, 32768
  %132 = call i32 @ac97_write(i32 %128, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %125, %117
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137, %133
  %142 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %143 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AC97_REC_SEL, align 4
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, 32767
  %148 = call i32 @ac97_write(i32 %144, i32 %145, i32 %147)
  br label %157

149:                                              ; preds = %137
  %150 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %151 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @AC97_REC_SEL, align 4
  %154 = load i32, i32* %13, align 4
  %155 = or i32 %154, 32768
  %156 = call i32 @ac97_write(i32 %152, i32 %153, i32 %155)
  br label %157

157:                                              ; preds = %149, %141
  %158 = load i32, i32* %8, align 4
  %159 = and i32 %158, 16
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = and i32 %162, 16
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %161, %157
  %166 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %167 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AC97_PCM, align 4
  %170 = load i32, i32* %14, align 4
  %171 = and i32 %170, 32767
  %172 = call i32 @ac97_write(i32 %168, i32 %169, i32 %171)
  br label %181

173:                                              ; preds = %161
  %174 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %175 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @AC97_PCM, align 4
  %178 = load i32, i32* %14, align 4
  %179 = or i32 %178, 32768
  %180 = call i32 @ac97_write(i32 %176, i32 %177, i32 %179)
  br label %181

181:                                              ; preds = %173, %165
  %182 = load i32, i32* %8, align 4
  %183 = and i32 %182, 32
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = and i32 %186, 32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %185, %181
  %190 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %191 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @AC97_AUX, align 4
  %194 = load i32, i32* %15, align 4
  %195 = and i32 %194, 32767
  %196 = call i32 @ac97_write(i32 %192, i32 %193, i32 %195)
  br label %205

197:                                              ; preds = %185
  %198 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %199 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @AC97_AUX, align 4
  %202 = load i32, i32* %15, align 4
  %203 = or i32 %202, 32768
  %204 = call i32 @ac97_write(i32 %200, i32 %201, i32 %203)
  br label %205

205:                                              ; preds = %197, %189
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %60
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @ac97_read(i32, i32) #1

declare dso_local i32 @ac97_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
