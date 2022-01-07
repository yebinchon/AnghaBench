; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_ams_delta_set_audio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_ams_delta_set_audio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_codec = type { i32, i32 }
%struct.soc_enum = type { i64 }

@EUNATCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ams_delta_audio_mode_pins = common dso_local global i16* null, align 8
@AMS_DELTA_MOUTHPIECE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Mouthpiece\00", align 1
@AMS_DELTA_EARPIECE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Earpiece\00", align 1
@AMS_DELTA_MICROPHONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Microphone\00", align 1
@AMS_DELTA_SPEAKER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@AMS_DELTA_AGC = common dso_local global i32 0, align 4
@ams_delta_audio_agc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"AGCIN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ams_delta_set_audio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_set_audio_mode(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.soc_enum*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.soc_enum*
  store %struct.soc_enum* %16, %struct.soc_enum** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EUNATCH, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %183

24:                                               ; preds = %2
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %33 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %183

39:                                               ; preds = %24
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i16*, i16** @ams_delta_audio_mode_pins, align 8
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i16, i16* %43, i64 %50
  %52 = load i16, i16* %51, align 2
  store i16 %52, i16* %8, align 2
  %53 = load i16, i16* %8, align 2
  %54 = zext i16 %53 to i32
  %55 = load i32, i32* @AMS_DELTA_MOUTHPIECE, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %64 = call i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %71 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %75

72:                                               ; preds = %66
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %74 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %39
  %77 = load i16, i16* %8, align 2
  %78 = zext i16 %77 to i32
  %79 = load i32, i32* @AMS_DELTA_EARPIECE, align 4
  %80 = shl i32 1, %79
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %88 = call i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %95 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %99

96:                                               ; preds = %90
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %98 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %76
  %101 = load i16, i16* %8, align 2
  %102 = zext i16 %101 to i32
  %103 = load i32, i32* @AMS_DELTA_MICROPHONE, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %112 = call i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %100
  store i32 1, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %119 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %123

120:                                              ; preds = %114
  %121 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %122 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %100
  %125 = load i16, i16* %8, align 2
  %126 = zext i16 %125 to i32
  %127 = load i32, i32* @AMS_DELTA_SPEAKER, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %136 = call i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %124
  store i32 1, i32* %10, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %143 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %147

144:                                              ; preds = %138
  %145 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %146 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %124
  %149 = load i16, i16* %8, align 2
  %150 = zext i16 %149 to i32
  %151 = load i32, i32* @AMS_DELTA_AGC, align 4
  %152 = shl i32 1, %151
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @ams_delta_audio_agc, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %148
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* @ams_delta_audio_agc, align 4
  store i32 1, i32* %10, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %167 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %171

168:                                              ; preds = %161
  %169 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %170 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %148
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %177 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %180 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %179, i32 0, i32 0
  %181 = call i32 @mutex_unlock(i32* %180)
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %178, %36, %21
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
