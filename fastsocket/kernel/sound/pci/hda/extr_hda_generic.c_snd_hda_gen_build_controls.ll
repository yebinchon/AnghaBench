; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_build_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, %struct.TYPE_8__, i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@slave_pfxs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Playback Switch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_gen_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  store %struct.hda_gen_spec* %8, %struct.hda_gen_spec** %4, align 8
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %15, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %156

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %28 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %26
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %39 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %43 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %42, i32 0, i32 7
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec* %33, i64 %37, i64 %41, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %156

53:                                               ; preds = %32
  %54 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %55 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %61 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %60, i32 0, i32 6
  %62 = call i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec* %59, %struct.TYPE_7__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %156

67:                                               ; preds = %58
  %68 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %69 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %53
  br label %72

72:                                               ; preds = %71, %26
  %73 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %74 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %79 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %80 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec* %78, i64 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %156

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %72
  %89 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %90 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %88
  %94 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %95 = call i32 @snd_hda_find_mixer_ctl(%struct.hda_codec* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %99 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %100 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @slave_pfxs, align 4
  %103 = call i32 @snd_hda_add_vmaster(%struct.hda_codec* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %156

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %93, %88
  %110 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %111 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %109
  %115 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %116 = call i32 @snd_hda_find_mixer_ctl(%struct.hda_codec* %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %144, label %118

118:                                              ; preds = %114
  %119 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %120 = load i32, i32* @slave_pfxs, align 4
  %121 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %122 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = call i32 @__snd_hda_add_vmaster(%struct.hda_codec* %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %156

129:                                              ; preds = %118
  %130 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %131 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %137 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %138 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %137, i32 0, i32 2
  %139 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %140 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @snd_hda_add_vmaster_hook(%struct.hda_codec* %136, %struct.TYPE_8__* %138, i32 %141)
  br label %143

143:                                              ; preds = %135, %129
  br label %144

144:                                              ; preds = %143, %114, %109
  %145 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %146 = call i32 @free_kctls(%struct.hda_gen_spec* %145)
  %147 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %148 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %149 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %148, i32 0, i32 0
  %150 = call i32 @snd_hda_jack_add_kctls(%struct.hda_codec* %147, i32* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %156

155:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %153, %127, %106, %85, %65, %51, %23
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @snd_hda_add_new_ctls(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec*, %struct.TYPE_7__*) #1

declare dso_local i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_find_mixer_ctl(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_add_vmaster(%struct.hda_codec*, i8*, i32, i32, i8*) #1

declare dso_local i32 @__snd_hda_add_vmaster(%struct.hda_codec*, i8*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @snd_hda_add_vmaster_hook(%struct.hda_codec*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @free_kctls(%struct.hda_gen_spec*) #1

declare dso_local i32 @snd_hda_jack_add_kctls(%struct.hda_codec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
