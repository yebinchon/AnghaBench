; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_mixer_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_mixer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32* }

@ad1848_mix_devices = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@nr_ad1848_devs = common dso_local global i32 0, align 4
@MODE1_REC_DEVICES = common dso_local global i32 0, align 4
@MODE2_MIXER_DEVICES = common dso_local global i32 0, align 4
@C930_MIXER_DEVICES = common dso_local global i32 0, align 4
@c930_mix_devices = common dso_local global i32* null, align 8
@MODE3_MIXER_DEVICES = common dso_local global i8* null, align 8
@iwave_mix_devices = common dso_local global i32* null, align 8
@cs42xb_mix_devices = common dso_local global i32* null, align 8
@soundpro = common dso_local global i64 0, align 8
@SPRO_MIXER_DEVICES = common dso_local global i32 0, align 4
@SPRO_REC_DEVICES = common dso_local global i32 0, align 4
@spro_mix_devices = common dso_local global i32* null, align 8
@MODE1_MIXER_DEVICES = common dso_local global i32 0, align 4
@default_mixer_levels = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@AUDIO_HEADPHONE = common dso_local global i32 0, align 4
@AUDIO_LINE_OUT = common dso_local global i32 0, align 4
@AUDIO_SPEAKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ad1848_mixer_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1848_mixer_reset(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load i32*, i32** @ad1848_mix_devices, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 10
  store i32* %7, i32** %9, align 8
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* @nr_ad1848_devs, align 4
  %15 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %27, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* @MODE1_REC_DEVICES, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %87 [
    i32 136, label %37
    i32 135, label %37
    i32 139, label %37
    i32 138, label %37
    i32 129, label %41
    i32 128, label %49
    i32 130, label %58
    i32 131, label %58
    i32 134, label %67
    i32 133, label %67
    i32 132, label %67
    i32 137, label %72
  ]

37:                                               ; preds = %30, %30, %30, %30
  %38 = load i32, i32* @MODE2_MIXER_DEVICES, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %91

41:                                               ; preds = %30
  %42 = load i32, i32* @C930_MIXER_DEVICES, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** @c930_mix_devices, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 10
  store i32* %46, i32** %48, align 8
  br label %91

49:                                               ; preds = %30
  %50 = load i8*, i8** @MODE3_MIXER_DEVICES, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** @iwave_mix_devices, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 10
  store i32* %55, i32** %57, align 8
  br label %91

58:                                               ; preds = %30, %30
  %59 = load i32*, i32** @cs42xb_mix_devices, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 10
  store i32* %60, i32** %62, align 8
  %63 = load i8*, i8** @MODE3_MIXER_DEVICES, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %91

67:                                               ; preds = %30, %30, %30
  %68 = load i8*, i8** @MODE3_MIXER_DEVICES, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %91

72:                                               ; preds = %30
  %73 = load i64, i64* @soundpro, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* @SPRO_MIXER_DEVICES, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @SPRO_REC_DEVICES, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load i32*, i32** @spro_mix_devices, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 10
  store i32* %83, i32** %85, align 8
  br label %91

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %30, %86
  %88 = load i32, i32* @MODE1_MIXER_DEVICES, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %75, %67, %58, %49, %41, %37
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %103 = load i32, i32* @default_mixer_levels, align 4
  %104 = call i32* @load_mixer_volumes(i8* %102, i32 %103, i32 1)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  store i32* %104, i32** %106, align 8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %131, %91
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %107
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %3, align 4
  %116 = shl i32 1, %115
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ad1848_mixer_set(%struct.TYPE_7__* %120, i32 %121, i32 %128)
  br label %130

130:                                              ; preds = %119, %111
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %107

134:                                              ; preds = %107
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = load i32, i32* @SOUND_MASK_MIC, align 4
  %137 = call i32 @ad1848_set_recmask(%struct.TYPE_7__* %135, i32 %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 31
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @AUDIO_HEADPHONE, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @AUDIO_LINE_OUT, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 7
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @spin_lock_irqsave(i32* %150, i64 %151)
  %153 = load i64, i64* @soundpro, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %175, label %155

155:                                              ; preds = %134
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @AUDIO_SPEAKER, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = call i32 @ad_read(%struct.TYPE_7__* %164, i32 26)
  %166 = and i32 %165, -65
  %167 = call i32 @ad_write(%struct.TYPE_7__* %163, i32 26, i32 %166)
  br label %174

168:                                              ; preds = %155
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %171 = call i32 @ad_read(%struct.TYPE_7__* %170, i32 26)
  %172 = or i32 %171, 64
  %173 = call i32 @ad_write(%struct.TYPE_7__* %169, i32 26, i32 %172)
  br label %174

174:                                              ; preds = %168, %162
  br label %178

175:                                              ; preds = %134
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %177 = call i32 @ad_write(%struct.TYPE_7__* %176, i32 16, i32 96)
  br label %178

178:                                              ; preds = %175, %174
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 7
  %181 = load i64, i64* %5, align 8
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i64 %181)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32* @load_mixer_volumes(i8*, i32, i32) #1

declare dso_local i32 @ad1848_mixer_set(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ad1848_set_recmask(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ad_write(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ad_read(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
