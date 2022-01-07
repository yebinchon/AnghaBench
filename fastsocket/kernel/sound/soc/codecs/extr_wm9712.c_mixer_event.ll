; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9712.c_mixer_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9712.c_mixer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }

@HPL_MIXER = common dso_local global i32 0, align 4
@HPR_MIXER = common dso_local global i32 0, align 4
@AC97_PC_BEEP = common dso_local global i32 0, align 4
@AC97_VIDEO = common dso_local global i32 0, align 4
@AC97_PHONE = common dso_local global i32 0, align 4
@AC97_LINE = common dso_local global i32 0, align 4
@AC97_PCM = common dso_local global i32 0, align 4
@AC97_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @mixer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HPL_MIXER, align 4
  %19 = call i32 @ac97_read(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HPR_MIXER, align 4
  %24 = call i32 @ac97_read(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AC97_PC_BEEP, align 4
  %29 = call i32 @ac97_read(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AC97_VIDEO, align 4
  %34 = call i32 @ac97_read(i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AC97_PHONE, align 4
  %39 = call i32 @ac97_read(i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AC97_LINE, align 4
  %44 = call i32 @ac97_read(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AC97_PCM, align 4
  %49 = call i32 @ac97_read(i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AC97_CD, align 4
  %54 = call i32 @ac97_read(i32 %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %3
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %3
  %63 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AC97_VIDEO, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, 32767
  %69 = call i32 @ac97_write(i32 %65, i32 %66, i32 %68)
  br label %78

70:                                               ; preds = %58
  %71 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %72 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AC97_VIDEO, align 4
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, 32768
  %77 = call i32 @ac97_write(i32 %73, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %70, %62
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82, %78
  %87 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AC97_PCM, align 4
  %91 = load i32, i32* %13, align 4
  %92 = and i32 %91, 32767
  %93 = call i32 @ac97_write(i32 %89, i32 %90, i32 %92)
  br label %102

94:                                               ; preds = %82
  %95 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %96 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AC97_PCM, align 4
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, 32768
  %101 = call i32 @ac97_write(i32 %97, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %94, %86
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %106, %102
  %111 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %112 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AC97_LINE, align 4
  %115 = load i32, i32* %10, align 4
  %116 = and i32 %115, 32767
  %117 = call i32 @ac97_write(i32 %113, i32 %114, i32 %116)
  br label %126

118:                                              ; preds = %106
  %119 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %120 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AC97_LINE, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, 32768
  %125 = call i32 @ac97_write(i32 %121, i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %118, %110
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %127, 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %130, %126
  %135 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %136 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @AC97_PHONE, align 4
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, 32767
  %141 = call i32 @ac97_write(i32 %137, i32 %138, i32 %140)
  br label %150

142:                                              ; preds = %130
  %143 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %144 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @AC97_PHONE, align 4
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, 32768
  %149 = call i32 @ac97_write(i32 %145, i32 %146, i32 %148)
  br label %150

150:                                              ; preds = %142, %134
  %151 = load i32, i32* %7, align 4
  %152 = and i32 %151, 16
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %8, align 4
  %156 = and i32 %155, 16
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %154, %150
  %159 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %160 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @AC97_CD, align 4
  %163 = load i32, i32* %14, align 4
  %164 = and i32 %163, 32767
  %165 = call i32 @ac97_write(i32 %161, i32 %162, i32 %164)
  br label %174

166:                                              ; preds = %154
  %167 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %168 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @AC97_CD, align 4
  %171 = load i32, i32* %14, align 4
  %172 = or i32 %171, 32768
  %173 = call i32 @ac97_write(i32 %169, i32 %170, i32 %172)
  br label %174

174:                                              ; preds = %166, %158
  %175 = load i32, i32* %7, align 4
  %176 = and i32 %175, 32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, 32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %178, %174
  %183 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %184 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @AC97_PC_BEEP, align 4
  %187 = load i32, i32* %9, align 4
  %188 = and i32 %187, 32767
  %189 = call i32 @ac97_write(i32 %185, i32 %186, i32 %188)
  br label %198

190:                                              ; preds = %178
  %191 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %192 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @AC97_PC_BEEP, align 4
  %195 = load i32, i32* %9, align 4
  %196 = or i32 %195, 32768
  %197 = call i32 @ac97_write(i32 %193, i32 %194, i32 %196)
  br label %198

198:                                              ; preds = %190, %182
  ret i32 0
}

declare dso_local i32 @ac97_read(i32, i32) #1

declare dso_local i32 @ac97_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
