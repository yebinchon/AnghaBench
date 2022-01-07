; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt1716S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt1716S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @set_widgets_power_state_vt1716S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_widgets_power_state_vt1716S(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.via_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.via_spec*, %struct.via_spec** %9, align 8
  store %struct.via_spec* %10, %struct.via_spec** %3, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = load i32, i32* @AC_VERB_GET_CONNECT_SEL, align 4
  %13 = call i32 @snd_hda_codec_read(%struct.hda_codec* %11, i32 23, i32 0, i32 %12, i32 0)
  %14 = icmp eq i32 %13, 5
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = call i32 @set_pin_power_state(%struct.hda_codec* %17, i32 26, i32* %5)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = call i32 @set_pin_power_state(%struct.hda_codec* %19, i32 27, i32* %5)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @set_pin_power_state(%struct.hda_codec* %21, i32 30, i32* %5)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @update_power_state(%struct.hda_codec* %28, i32 23, i32 %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @update_power_state(%struct.hda_codec* %31, i32 19, i32 %32)
  %34 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @set_pin_power_state(%struct.hda_codec* %35, i32 30, i32* %5)
  %37 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %38 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = call i32 @set_pin_power_state(%struct.hda_codec* %42, i32 34, i32* %5)
  br label %48

44:                                               ; preds = %27
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = load i32, i32* @AC_PWRST_D3, align 4
  %47 = call i32 @update_power_state(%struct.hda_codec* %45, i32 34, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @update_power_state(%struct.hda_codec* %49, i32 38, i32 %50)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @update_power_state(%struct.hda_codec* %52, i32 20, i32 %53)
  %55 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %55, i32* %5, align 4
  %56 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %57 = call i32 @set_pin_power_state(%struct.hda_codec* %56, i32 25, i32* %5)
  %58 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %59 = call i64 @smart51_enabled(%struct.hda_codec* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = call i32 @set_pin_power_state(%struct.hda_codec* %62, i32 27, i32* %5)
  br label %64

64:                                               ; preds = %61, %48
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @update_power_state(%struct.hda_codec* %65, i32 24, i32 %66)
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @update_power_state(%struct.hda_codec* %68, i32 17, i32 %69)
  %71 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %71, i32* %5, align 4
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = call i32 @set_pin_power_state(%struct.hda_codec* %72, i32 35, i32* %5)
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = call i64 @smart51_enabled(%struct.hda_codec* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %79 = call i32 @set_pin_power_state(%struct.hda_codec* %78, i32 26, i32* %5)
  br label %80

80:                                               ; preds = %77, %64
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @update_power_state(%struct.hda_codec* %81, i32 39, i32 %82)
  %84 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %85 = call i64 @smart51_enabled(%struct.hda_codec* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %89 = call i32 @set_pin_power_state(%struct.hda_codec* %88, i32 30, i32* %5)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @update_power_state(%struct.hda_codec* %91, i32 37, i32 %92)
  %94 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %95 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %94, i32 28)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i32 0, i32* %6, align 4
  br label %113

99:                                               ; preds = %90
  %100 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %101 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %100, i32 29)
  store i32 %101, i32* %7, align 4
  %102 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %103 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %112

111:                                              ; preds = %107, %99
  store i32 1, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %110
  br label %113

113:                                              ; preds = %112, %98
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @AC_PWRST_D0, align 4
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @AC_PWRST_D3, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  store i32 %121, i32* %5, align 4
  %122 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @update_power_state(%struct.hda_codec* %122, i32 40, i32 %123)
  %125 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @update_power_state(%struct.hda_codec* %125, i32 41, i32 %126)
  %128 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @update_power_state(%struct.hda_codec* %128, i32 42, i32 %129)
  %131 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %131, i32* %5, align 4
  %132 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %133 = call i32 @set_pin_power_state(%struct.hda_codec* %132, i32 28, i32* %5)
  %134 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %135 = call i32 @set_pin_power_state(%struct.hda_codec* %134, i32 29, i32* %5)
  %136 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %137 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %120
  %142 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @update_power_state(%struct.hda_codec* %142, i32 37, i32 %143)
  br label %145

145:                                              ; preds = %141, %120
  %146 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @AC_PWRST_D0, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = call i32 @update_power_state(%struct.hda_codec* %146, i32 22, i32 %154)
  %156 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* @AC_PWRST_D0, align 4
  br label %163

161:                                              ; preds = %153
  %162 = load i32, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = call i32 @update_power_state(%struct.hda_codec* %156, i32 16, i32 %164)
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @set_pin_power_state(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @update_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @smart51_enabled(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
