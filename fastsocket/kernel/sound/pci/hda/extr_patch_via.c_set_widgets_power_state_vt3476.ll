; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt3476.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt3476.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@VT1705CF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @set_widgets_power_state_vt3476 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_widgets_power_state_vt3476(%struct.hda_codec* %0) #0 {
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
  %13 = icmp eq i32 %12, 4
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
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %1
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @update_power_state(%struct.hda_codec* %27, i32 30, i32 %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @update_power_state(%struct.hda_codec* %30, i32 31, i32 %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @update_power_state(%struct.hda_codec* %33, i32 16, i32 %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @update_power_state(%struct.hda_codec* %36, i32 17, i32 %37)
  %39 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %40 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VT1705CF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %26
  %45 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @update_power_state(%struct.hda_codec* %46, i32 39, i32 %47)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @update_power_state(%struct.hda_codec* %49, i32 55, i32 %50)
  br label %59

52:                                               ; preds = %26
  %53 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %53, i32* %5, align 4
  %54 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %55 = call i32 @set_pin_power_state(%struct.hda_codec* %54, i32 39, i32* %5)
  %56 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @update_power_state(%struct.hda_codec* %56, i32 55, i32 %57)
  br label %59

59:                                               ; preds = %52, %44
  %60 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %62 = call i32 @set_pin_power_state(%struct.hda_codec* %61, i32 38, i32* %5)
  %63 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @update_power_state(%struct.hda_codec* %63, i32 54, i32 %64)
  %66 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %67 = call i64 @smart51_enabled(%struct.hda_codec* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %71 = call i32 @set_pin_power_state(%struct.hda_codec* %70, i32 43, i32* %5)
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @update_power_state(%struct.hda_codec* %72, i32 59, i32 %73)
  %75 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @update_power_state(%struct.hda_codec* %75, i32 27, i32 %76)
  br label %78

78:                                               ; preds = %69, %59
  %79 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @update_conv_power_state(%struct.hda_codec* %79, i32 10, i32 %80, i32 2)
  %82 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %82, i32* %5, align 4
  %83 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %84 = call i32 @set_pin_power_state(%struct.hda_codec* %83, i32 37, i32* %5)
  %85 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @update_power_state(%struct.hda_codec* %85, i32 53, i32 %86)
  %88 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %89 = call i64 @smart51_enabled(%struct.hda_codec* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %78
  %92 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %93 = call i32 @set_pin_power_state(%struct.hda_codec* %92, i32 42, i32* %5)
  %94 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @update_power_state(%struct.hda_codec* %94, i32 58, i32 %95)
  %97 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @update_power_state(%struct.hda_codec* %97, i32 26, i32 %98)
  br label %100

100:                                              ; preds = %91, %78
  %101 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @update_conv_power_state(%struct.hda_codec* %101, i32 9, i32 %102, i32 1)
  %104 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %104, i32* %5, align 4
  %105 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %106 = call i32 @set_pin_power_state(%struct.hda_codec* %105, i32 40, i32* %5)
  %107 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @update_power_state(%struct.hda_codec* %107, i32 56, i32 %108)
  %110 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @update_power_state(%struct.hda_codec* %110, i32 24, i32 %111)
  %113 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %114 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %100
  %119 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @update_conv_power_state(%struct.hda_codec* %119, i32 11, i32 %120, i32 3)
  br label %122

122:                                              ; preds = %118, %100
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %124, i32* %5, align 4
  %125 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %126 = call i32 @set_pin_power_state(%struct.hda_codec* %125, i32 36, i32* %5)
  %127 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @update_power_state(%struct.hda_codec* %127, i32 52, i32 %128)
  %130 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %131 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @AC_PWRST_D3, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %135, %122
  %142 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @update_conv_power_state(%struct.hda_codec* %142, i32 8, i32 %143, i32 0)
  %145 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @AC_PWRST_D0, align 4
  br label %152

150:                                              ; preds = %141
  %151 = load i32, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = call i32 @update_power_state(%struct.hda_codec* %145, i32 63, i32 %153)
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @set_pin_power_state(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @update_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @smart51_enabled(%struct.hda_codec*) #1

declare dso_local i32 @update_conv_power_state(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
