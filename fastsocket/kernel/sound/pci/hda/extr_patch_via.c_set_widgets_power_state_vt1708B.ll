; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt1708B.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt1708B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.via_spec* }
%struct.via_spec = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VT1708B_4CH = common dso_local global i64 0, align 8
@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@VT1708S = common dso_local global i64 0, align 8
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @set_widgets_power_state_vt1708B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_widgets_power_state_vt1708B(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.via_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 1
  %9 = load %struct.via_spec*, %struct.via_spec** %8, align 8
  store %struct.via_spec* %9, %struct.via_spec** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %11 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VT1708B_4CH, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 285623191
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %15, %1
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = load i32, i32* @AC_VERB_GET_CONNECT_SEL, align 4
  %24 = call i32 @snd_hda_codec_read(%struct.hda_codec* %22, i32 23, i32 0, i32 %23, i32 0)
  %25 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %26 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VT1708S, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 5, i32 0
  %32 = icmp eq i32 %24, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @set_pin_power_state(%struct.hda_codec* %35, i32 26, i32* %5)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @set_pin_power_state(%struct.hda_codec* %37, i32 27, i32* %5)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @set_pin_power_state(%struct.hda_codec* %39, i32 30, i32* %5)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %21
  %44 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %21
  %46 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @update_power_state(%struct.hda_codec* %46, i32 23, i32 %47)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @update_power_state(%struct.hda_codec* %49, i32 19, i32 %50)
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

61:                                               ; preds = %45
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = call i32 @set_pin_power_state(%struct.hda_codec* %62, i32 27, i32* %5)
  br label %64

64:                                               ; preds = %61, %45
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @update_power_state(%struct.hda_codec* %65, i32 24, i32 %66)
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @update_power_state(%struct.hda_codec* %68, i32 17, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %64
  %74 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %74, i32* %5, align 4
  %75 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %76 = call i32 @set_pin_power_state(%struct.hda_codec* %75, i32 34, i32* %5)
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = call i64 @smart51_enabled(%struct.hda_codec* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = call i32 @set_pin_power_state(%struct.hda_codec* %81, i32 26, i32* %5)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @update_power_state(%struct.hda_codec* %84, i32 38, i32 %85)
  %87 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @update_power_state(%struct.hda_codec* %87, i32 36, i32 %88)
  br label %113

90:                                               ; preds = %64
  %91 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %92 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 285623191
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %96, i32* %5, align 4
  %97 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %98 = call i32 @set_pin_power_state(%struct.hda_codec* %97, i32 35, i32* %5)
  %99 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %100 = call i64 @smart51_enabled(%struct.hda_codec* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %104 = call i32 @set_pin_power_state(%struct.hda_codec* %103, i32 26, i32* %5)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @update_power_state(%struct.hda_codec* %106, i32 39, i32 %107)
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @update_power_state(%struct.hda_codec* %109, i32 37, i32 %110)
  br label %112

112:                                              ; preds = %105, %90
  br label %113

113:                                              ; preds = %112, %83
  %114 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %114, i32* %5, align 4
  %115 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %116 = call i32 @set_pin_power_state(%struct.hda_codec* %115, i32 28, i32* %5)
  %117 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %118 = call i32 @set_pin_power_state(%struct.hda_codec* %117, i32 29, i32* %5)
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %123 = call i32 @set_pin_power_state(%struct.hda_codec* %122, i32 35, i32* %5)
  br label %124

124:                                              ; preds = %121, %113
  %125 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @AC_PWRST_D0, align 4
  br label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = call i32 @update_power_state(%struct.hda_codec* %125, i32 22, i32 %133)
  %135 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @update_power_state(%struct.hda_codec* %135, i32 16, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @update_power_state(%struct.hda_codec* %141, i32 37, i32 %142)
  %144 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @update_power_state(%struct.hda_codec* %144, i32 39, i32 %145)
  br label %163

147:                                              ; preds = %132
  %148 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %149 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 285623191
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %154 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @update_power_state(%struct.hda_codec* %159, i32 37, i32 %160)
  br label %162

162:                                              ; preds = %158, %152, %147
  br label %163

163:                                              ; preds = %162, %140
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @set_pin_power_state(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @update_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @smart51_enabled(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
