; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_bypass_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_bypass_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, %struct.twl4030_priv* }
%struct.twl4030_priv = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.snd_kcontrol = type { i32 }
%struct.soc_mixer_control = type { i32, i32 }

@TWL4030_REG_VSTPGA = common dso_local global i32 0, align 4
@TWL4030_REG_ARXR2_APGA_CTL = common dso_local global i32 0, align 4
@TWL4030_REG_ARXL1_APGA_CTL = common dso_local global i32 0, align 4
@TWL4030_REG_VDL_APGA_CTL = common dso_local global i32 0, align 4
@TWL4030_REG_MISC_SET_1 = common dso_local global i32 0, align 4
@TWL4030_FMLOOP_EN = common dso_local global i8 0, align 1
@SND_SOC_BIAS_STANDBY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @bypass_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bypass_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca %struct.twl4030_priv*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %16, %struct.soc_mixer_control** %7, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.twl4030_priv*, %struct.twl4030_priv** %20, align 8
  store %struct.twl4030_priv* %21, %struct.twl4030_priv** %8, align 8
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %26 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call zeroext i8 @twl4030_read_reg_cache(%struct.TYPE_6__* %24, i32 %27)
  store i8 %28, i8* %9, align 1
  %29 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %30 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TWL4030_REG_VSTPGA, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %3
  %35 = load i8, i8* %9, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %39 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 32
  store i32 %41, i32* %39, align 4
  br label %47

42:                                               ; preds = %34
  %43 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %44 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -33
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %150

48:                                               ; preds = %3
  %49 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %50 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TWL4030_REG_ARXR2_APGA_CTL, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %48
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %58 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %56, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %65 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TWL4030_REG_ARXL1_APGA_CTL, align 4
  %68 = sub nsw i32 %66, %67
  %69 = shl i32 1, %68
  %70 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %71 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %86

74:                                               ; preds = %54
  %75 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %76 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TWL4030_REG_ARXL1_APGA_CTL, align 4
  %79 = sub nsw i32 %77, %78
  %80 = shl i32 1, %79
  %81 = xor i32 %80, -1
  %82 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %83 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %74, %63
  br label %149

87:                                               ; preds = %48
  %88 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %89 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TWL4030_REG_VDL_APGA_CTL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load i8, i8* %9, align 1
  %95 = zext i8 %94 to i32
  %96 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %97 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %95, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %104 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 16
  store i32 %106, i32* %104, align 4
  br label %112

107:                                              ; preds = %93
  %108 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %109 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, -17
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %107, %102
  br label %148

113:                                              ; preds = %87
  %114 = load i8, i8* %9, align 1
  %115 = zext i8 %114 to i32
  %116 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %117 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 7, %118
  %120 = and i32 %115, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %113
  %123 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %124 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 7, i32 6
  %129 = shl i32 1, %128
  %130 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %131 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %147

134:                                              ; preds = %113
  %135 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %136 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 7, i32 6
  %141 = shl i32 1, %140
  %142 = xor i32 %141, -1
  %143 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %144 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %134, %122
  br label %148

148:                                              ; preds = %147, %112
  br label %149

149:                                              ; preds = %148, %86
  br label %150

150:                                              ; preds = %149, %47
  %151 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %152 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* @TWL4030_REG_MISC_SET_1, align 4
  %155 = call zeroext i8 @twl4030_read_reg_cache(%struct.TYPE_6__* %153, i32 %154)
  store i8 %155, i8* %10, align 1
  %156 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %157 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 31
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %150
  %162 = load i8, i8* @TWL4030_FMLOOP_EN, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, i8* %10, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %165, %163
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %10, align 1
  br label %176

168:                                              ; preds = %150
  %169 = load i8, i8* @TWL4030_FMLOOP_EN, align 1
  %170 = zext i8 %169 to i32
  %171 = xor i32 %170, -1
  %172 = load i8, i8* %10, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, %171
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %10, align 1
  br label %176

176:                                              ; preds = %168, %161
  %177 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %178 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %177, i32 0, i32 0
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i32, i32* @TWL4030_REG_MISC_SET_1, align 4
  %181 = load i8, i8* %10, align 1
  %182 = call i32 @twl4030_write(%struct.TYPE_6__* %179, i32 %180, i8 zeroext %181)
  %183 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %184 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SND_SOC_BIAS_STANDBY, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %176
  %191 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %192 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %197 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %196, i32 0, i32 0
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = call i32 @twl4030_codec_mute(%struct.TYPE_6__* %198, i32 0)
  br label %205

200:                                              ; preds = %190
  %201 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %202 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = call i32 @twl4030_codec_mute(%struct.TYPE_6__* %203, i32 1)
  br label %205

205:                                              ; preds = %200, %195
  br label %206

206:                                              ; preds = %205, %176
  ret i32 0
}

declare dso_local zeroext i8 @twl4030_read_reg_cache(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @twl4030_write(%struct.TYPE_6__*, i32, i8 zeroext) #1

declare dso_local i32 @twl4030_codec_mute(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
