; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt1718S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt1718S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @set_widgets_power_state_vt1718S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_widgets_power_state_vt1718S(%struct.hda_codec* %0) #0 {
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
  %13 = icmp eq i32 %12, 5
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
  %39 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %39, i32* %5, align 4
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = call i32 @set_pin_power_state(%struct.hda_codec* %40, i32 39, i32* %5)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @update_power_state(%struct.hda_codec* %42, i32 26, i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %46, i32* %5, align 4
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = call i32 @set_pin_power_state(%struct.hda_codec* %47, i32 38, i32* %5)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = call i64 @smart51_enabled(%struct.hda_codec* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %26
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = call i32 @set_pin_power_state(%struct.hda_codec* %53, i32 43, i32* %5)
  br label %55

55:                                               ; preds = %52, %26
  %56 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @update_power_state(%struct.hda_codec* %56, i32 10, i32 %57)
  %59 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %59, i32* %5, align 4
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = call i32 @set_pin_power_state(%struct.hda_codec* %60, i32 36, i32* %5)
  %62 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %63 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = call i32 @set_pin_power_state(%struct.hda_codec* %68, i32 40, i32* %5)
  br label %70

70:                                               ; preds = %67, %55
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @update_power_state(%struct.hda_codec* %71, i32 8, i32 %72)
  %74 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %75 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @AC_PWRST_D3, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %79, %70
  %86 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @update_power_state(%struct.hda_codec* %86, i32 11, i32 %87)
  %89 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @AC_PWRST_D0, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 @update_power_state(%struct.hda_codec* %89, i32 33, i32 %97)
  %99 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %99, i32* %5, align 4
  %100 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %101 = call i32 @set_pin_power_state(%struct.hda_codec* %100, i32 37, i32* %5)
  %102 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %103 = call i64 @smart51_enabled(%struct.hda_codec* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %107 = call i32 @set_pin_power_state(%struct.hda_codec* %106, i32 42, i32* %5)
  br label %108

108:                                              ; preds = %105, %96
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @update_power_state(%struct.hda_codec* %109, i32 9, i32 %110)
  %112 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %113 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %108
  %118 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %118, i32* %5, align 4
  %119 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %120 = call i32 @set_pin_power_state(%struct.hda_codec* %119, i32 40, i32* %5)
  %121 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @update_power_state(%struct.hda_codec* %121, i32 27, i32 %122)
  %124 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @update_power_state(%struct.hda_codec* %124, i32 52, i32 %125)
  %127 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @update_power_state(%struct.hda_codec* %127, i32 12, i32 %128)
  br label %130

130:                                              ; preds = %117, %108
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
