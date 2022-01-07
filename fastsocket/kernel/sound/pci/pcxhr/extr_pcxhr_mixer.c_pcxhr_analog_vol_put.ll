; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_analog_vol_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_analog_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_pcxhr = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }

@HR222_LINE_CAPTURE_LEVEL_MIN = common dso_local global i32 0, align 4
@HR222_LINE_CAPTURE_LEVEL_MAX = common dso_local global i32 0, align 4
@PCXHR_LINE_CAPTURE_LEVEL_MIN = common dso_local global i32 0, align 4
@PCXHR_LINE_CAPTURE_LEVEL_MAX = common dso_local global i32 0, align 4
@HR222_LINE_PLAYBACK_LEVEL_MIN = common dso_local global i32 0, align 4
@HR222_LINE_PLAYBACK_LEVEL_MAX = common dso_local global i32 0, align 4
@PCXHR_LINE_PLAYBACK_LEVEL_MIN = common dso_local global i32 0, align 4
@PCXHR_LINE_PLAYBACK_LEVEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @pcxhr_analog_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_analog_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_pcxhr* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_pcxhr* %12, %struct.snd_pcxhr** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %138, %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %141

26:                                               ; preds = %23
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  br label %52

45:                                               ; preds = %26
  %46 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %47 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  br label %52

52:                                               ; preds = %45, %38
  %53 = phi i32* [ %44, %38 ], [ %51, %45 ]
  store i32* %53, i32** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %58 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @HR222_LINE_CAPTURE_LEVEL_MIN, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @HR222_LINE_CAPTURE_LEVEL_MAX, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  br label %138

72:                                               ; preds = %67
  br label %83

73:                                               ; preds = %56
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @PCXHR_LINE_CAPTURE_LEVEL_MIN, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @PCXHR_LINE_CAPTURE_LEVEL_MAX, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %73
  br label %138

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %72
  br label %112

84:                                               ; preds = %52
  %85 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %86 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @HR222_LINE_PLAYBACK_LEVEL_MIN, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @HR222_LINE_PLAYBACK_LEVEL_MAX, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %91
  br label %138

100:                                              ; preds = %95
  br label %111

101:                                              ; preds = %84
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @PCXHR_LINE_PLAYBACK_LEVEL_MIN, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @PCXHR_LINE_PLAYBACK_LEVEL_MAX, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %101
  br label %138

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %100
  br label %112

112:                                              ; preds = %111, %83
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  store i32 1, i32* %6, align 4
  %120 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %121 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %120, i32 0, i32 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %117
  %127 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @hr222_update_analog_audio_level(%struct.snd_pcxhr* %127, i32 %128, i32 %129)
  br label %136

131:                                              ; preds = %117
  %132 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @pcxhr_update_analog_audio_level(%struct.snd_pcxhr* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %126
  br label %137

137:                                              ; preds = %136, %112
  br label %138

138:                                              ; preds = %137, %109, %99, %81, %71
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %23

141:                                              ; preds = %23
  %142 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %143 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %142, i32 0, i32 2
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local %struct.snd_pcxhr* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hr222_update_analog_audio_level(%struct.snd_pcxhr*, i32, i32) #1

declare dso_local i32 @pcxhr_update_analog_audio_level(%struct.snd_pcxhr*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
