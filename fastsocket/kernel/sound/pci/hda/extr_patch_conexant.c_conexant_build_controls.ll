; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_conexant_build_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_conexant_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i64, i64, i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@HDA_OUTPUT = common dso_local global i32 0, align 4
@slave_pfxs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Playback Switch\00", align 1
@cxt_capture_mixers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @conexant_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conexant_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.conexant_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.conexant_spec*, %struct.conexant_spec** %9, align 8
  store %struct.conexant_spec* %10, %struct.conexant_spec** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %32, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %14 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %20 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %18, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %151

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %37 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %44 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %48 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snd_hda_create_spdif_out_ctls(%struct.hda_codec* %42, i64 %46, i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %151

56:                                               ; preds = %41
  %57 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %58 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %59 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %58, i32 0, i32 4
  %60 = call i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec* %57, %struct.TYPE_2__* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %151

65:                                               ; preds = %56
  %66 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %67 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %35
  %70 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %71 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %76 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %77 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec* %75, i64 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %151

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %69
  %86 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %87 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %92 = call i32 @snd_hda_find_mixer_ctl(%struct.hda_codec* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %96 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %97 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @HDA_OUTPUT, align 4
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %101 = call i32 @snd_hda_set_vmaster_tlv(%struct.hda_codec* %95, i64 %98, i32 %99, i32* %100)
  %102 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %104 = load i32, i32* @slave_pfxs, align 4
  %105 = call i32 @snd_hda_add_vmaster(%struct.hda_codec* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %103, i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %151

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %90, %85
  %112 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %113 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %118 = call i32 @snd_hda_find_mixer_ctl(%struct.hda_codec* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %116
  %121 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %122 = load i32, i32* @slave_pfxs, align 4
  %123 = call i32 @snd_hda_add_vmaster(%struct.hda_codec* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %151

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %116, %111
  %130 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %131 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %136 = load i32, i32* @cxt_capture_mixers, align 4
  %137 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %135, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %151

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %129
  %144 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %145 = call i32 @add_beep_ctls(%struct.hda_codec* %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %151

150:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %148, %140, %126, %108, %82, %63, %54, %29
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @snd_hda_add_new_ctls(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_create_spdif_out_ctls(%struct.hda_codec*, i64, i64) #1

declare dso_local i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec*, %struct.TYPE_2__*) #1

declare dso_local i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_find_mixer_ctl(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_set_vmaster_tlv(%struct.hda_codec*, i64, i32, i32*) #1

declare dso_local i32 @snd_hda_add_vmaster(%struct.hda_codec*, i8*, i32*, i32, i8*) #1

declare dso_local i32 @add_beep_ctls(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
