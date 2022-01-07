; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt2002P.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt2002P.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@VT1802 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @set_widgets_power_state_vt2002P to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_widgets_power_state_vt2002P(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.via_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.via_spec*, %struct.via_spec** %8, align 8
  store %struct.via_spec* %9, %struct.via_spec** %3, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = load i32, i32* @AC_VERB_GET_CONNECT_SEL, align 4
  %12 = call i32 @snd_hda_codec_read(%struct.hda_codec* %10, i32 30, i32 0, i32 %11, i32 0)
  %13 = icmp eq i32 %12, 3
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @set_pin_power_state(%struct.hda_codec* %16, i32 41, i32* %5)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @set_pin_power_state(%struct.hda_codec* %18, i32 42, i32* %5)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @set_pin_power_state(%struct.hda_codec* %20, i32 43, i32* %5)
  %22 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @update_power_state(%struct.hda_codec* %23, i32 30, i32 %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @update_power_state(%struct.hda_codec* %26, i32 31, i32 %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @update_power_state(%struct.hda_codec* %29, i32 16, i32 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @update_power_state(%struct.hda_codec* %32, i32 17, i32 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @update_power_state(%struct.hda_codec* %35, i32 8, i32 %36)
  %38 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %39 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VT1802, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %1
  %44 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %44, i32* %5, align 4
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i32 @set_pin_power_state(%struct.hda_codec* %45, i32 40, i32* %5)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @update_power_state(%struct.hda_codec* %47, i32 24, i32 %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @update_power_state(%struct.hda_codec* %50, i32 56, i32 %51)
  br label %63

53:                                               ; preds = %1
  %54 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %54, i32* %5, align 4
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = call i32 @set_pin_power_state(%struct.hda_codec* %55, i32 38, i32* %5)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @update_power_state(%struct.hda_codec* %57, i32 28, i32 %58)
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @update_power_state(%struct.hda_codec* %60, i32 55, i32 %61)
  br label %63

63:                                               ; preds = %53, %43
  %64 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %65 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VT1802, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %70, i32* %5, align 4
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = call i32 @set_pin_power_state(%struct.hda_codec* %71, i32 37, i32* %5)
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @update_power_state(%struct.hda_codec* %73, i32 21, i32 %74)
  %76 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @update_power_state(%struct.hda_codec* %76, i32 53, i32 %77)
  br label %89

79:                                               ; preds = %63
  %80 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %80, i32* %5, align 4
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = call i32 @set_pin_power_state(%struct.hda_codec* %81, i32 37, i32* %5)
  %83 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @update_power_state(%struct.hda_codec* %83, i32 25, i32 %84)
  %86 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @update_power_state(%struct.hda_codec* %86, i32 53, i32 %87)
  br label %89

89:                                               ; preds = %79, %69
  %90 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %91 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %97 = load i32, i32* @AC_PWRST_D0, align 4
  %98 = call i32 @update_power_state(%struct.hda_codec* %96, i32 9, i32 %97)
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %101 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %100, i32 37)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %102, i32* %5, align 4
  %103 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %104 = call i32 @set_pin_power_state(%struct.hda_codec* %103, i32 36, i32* %5)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @AC_PWRST_D3, align 4
  br label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @AC_PWRST_D0, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %5, align 4
  %113 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %114 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @VT1802, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @update_power_state(%struct.hda_codec* %119, i32 20, i32 %120)
  br label %126

122:                                              ; preds = %111
  %123 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @update_power_state(%struct.hda_codec* %123, i32 24, i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @update_power_state(%struct.hda_codec* %127, i32 52, i32 %128)
  %130 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %131 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %130, i32 38)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @AC_PWRST_D3, align 4
  br label %138

136:                                              ; preds = %126
  %137 = load i32, i32* @AC_PWRST_D0, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %5, align 4
  %140 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %141 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @VT1802, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %138
  %146 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @update_power_state(%struct.hda_codec* %146, i32 51, i32 %147)
  %149 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @update_power_state(%struct.hda_codec* %149, i32 28, i32 %150)
  %152 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @update_power_state(%struct.hda_codec* %152, i32 60, i32 %153)
  br label %165

155:                                              ; preds = %138
  %156 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @update_power_state(%struct.hda_codec* %156, i32 49, i32 %157)
  %159 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @update_power_state(%struct.hda_codec* %159, i32 23, i32 %160)
  %162 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @update_power_state(%struct.hda_codec* %162, i32 59, i32 %163)
  br label %165

165:                                              ; preds = %155, %145
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %170 = call i32 @is_aa_path_mute(%struct.hda_codec* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168, %165
  %173 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %174 = load i32, i32* @AC_PWRST_D0, align 4
  %175 = call i32 @update_power_state(%struct.hda_codec* %173, i32 33, i32 %174)
  br label %180

176:                                              ; preds = %168
  %177 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %178 = load i32, i32* @AC_PWRST_D3, align 4
  %179 = call i32 @update_power_state(%struct.hda_codec* %177, i32 33, i32 %178)
  br label %180

180:                                              ; preds = %176, %172
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @set_pin_power_state(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @update_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @is_aa_path_mute(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
