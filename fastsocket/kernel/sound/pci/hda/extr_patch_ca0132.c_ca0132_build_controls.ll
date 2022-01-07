; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_build_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i64, i32, i64, i32, i32* }

@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_2__* null, align 8
@PLAY_ENHANCEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PlayEnhancement\00", align 1
@CRYSTAL_VOICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"CrystalVoice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ca0132_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %14 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %20 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %18, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %144

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %37 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %69, %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @add_fx_switch(%struct.hda_codec* %44, i32 %50, i8* %56, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %43
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %144

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %39

72:                                               ; preds = %39
  %73 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %74 = load i32, i32* @PLAY_ENHANCEMENT, align 4
  %75 = call i32 @add_fx_switch(%struct.hda_codec* %73, i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %144

80:                                               ; preds = %72
  %81 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %82 = load i32, i32* @CRYSTAL_VOICE, align 4
  %83 = call i32 @add_fx_switch(%struct.hda_codec* %81, i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %144

88:                                               ; preds = %80
  %89 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %90 = call i32 @add_voicefx(%struct.hda_codec* %89)
  %91 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %92 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %93 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %92, i32 0, i32 4
  %94 = call i32 @snd_hda_jack_add_kctls(%struct.hda_codec* %91, i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %144

99:                                               ; preds = %88
  %100 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %101 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  %105 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %106 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %107 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %110 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @snd_hda_create_spdif_out_ctls(%struct.hda_codec* %105, i64 %108, i64 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %144

117:                                              ; preds = %104
  %118 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %119 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %120 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %119, i32 0, i32 2
  %121 = call i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec* %118, i32* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %144

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %99
  %128 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %129 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %134 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %135 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec* %133, i64 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %144

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %127
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %140, %124, %115, %97, %86, %78, %66, %29
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @snd_hda_add_new_ctls(%struct.hda_codec*, i32) #1

declare dso_local i32 @add_fx_switch(%struct.hda_codec*, i32, i8*, i32) #1

declare dso_local i32 @add_voicefx(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_add_kctls(%struct.hda_codec*, i32*) #1

declare dso_local i32 @snd_hda_create_spdif_out_ctls(%struct.hda_codec*, i64, i64) #1

declare dso_local i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec*, i32*) #1

declare dso_local i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
