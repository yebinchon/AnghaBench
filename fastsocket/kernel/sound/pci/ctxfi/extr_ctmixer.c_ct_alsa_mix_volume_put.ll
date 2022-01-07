; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_alsa_mix_volume_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_alsa_mix_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ct_atc = type { %struct.ct_mixer* }
%struct.ct_mixer = type { %struct.amixer** }
%struct.amixer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.amixer*)*, i32 (%struct.amixer*)*, i32 (%struct.amixer*, i32)* }

@VOL_MAX = common dso_local global i32 0, align 4
@VOL_SCALE = common dso_local global i32 0, align 4
@CHN_NUM = common dso_local global i32 0, align 4
@AMIXER_MASTER_F = common dso_local global i32 0, align 4
@AMIXER_PCM_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ct_alsa_mix_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_alsa_mix_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca %struct.ct_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amixer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.ct_atc* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.ct_atc* %15, %struct.ct_atc** %5, align 8
  %16 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %17 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %16, i32 0, i32 0
  %18 = load %struct.ct_mixer*, %struct.ct_mixer** %17, align 8
  store %struct.ct_mixer* %18, %struct.ct_mixer** %6, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_amixer_index(i32 %21)
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %133, %2
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %136

26:                                               ; preds = %23
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @VOL_MAX, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @VOL_MAX, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i32, i32* @VOL_SCALE, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %51 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %50, i32 0, i32 0
  %52 = load %struct.amixer**, %struct.amixer*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @CHN_NUM, align 4
  %55 = mul i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.amixer*, %struct.amixer** %52, i64 %58
  %60 = load %struct.amixer*, %struct.amixer** %59, align 8
  store %struct.amixer* %60, %struct.amixer** %8, align 8
  %61 = load %struct.amixer*, %struct.amixer** %8, align 8
  %62 = getelementptr inbounds %struct.amixer, %struct.amixer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (%struct.amixer*)*, i32 (%struct.amixer*)** %64, align 8
  %66 = load %struct.amixer*, %struct.amixer** %8, align 8
  %67 = call i32 %65(%struct.amixer* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %132

71:                                               ; preds = %46
  %72 = load %struct.amixer*, %struct.amixer** %8, align 8
  %73 = getelementptr inbounds %struct.amixer, %struct.amixer* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32 (%struct.amixer*, i32)*, i32 (%struct.amixer*, i32)** %75, align 8
  %77 = load %struct.amixer*, %struct.amixer** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 %76(%struct.amixer* %77, i32 %78)
  %80 = load %struct.amixer*, %struct.amixer** %8, align 8
  %81 = getelementptr inbounds %struct.amixer, %struct.amixer* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32 (%struct.amixer*)*, i32 (%struct.amixer*)** %83, align 8
  %85 = load %struct.amixer*, %struct.amixer** %8, align 8
  %86 = call i32 %84(%struct.amixer* %85)
  store i32 1, i32* %13, align 4
  %87 = load i32, i32* @AMIXER_MASTER_F, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %71
  %91 = load i32, i32* @AMIXER_PCM_F, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %131

94:                                               ; preds = %90, %71
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %127, %94
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %130

98:                                               ; preds = %95
  %99 = load %struct.ct_mixer*, %struct.ct_mixer** %6, align 8
  %100 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %99, i32 0, i32 0
  %101 = load %struct.amixer**, %struct.amixer*** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %102, %103
  %105 = load i32, i32* @CHN_NUM, align 4
  %106 = mul i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %106, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.amixer*, %struct.amixer** %101, i64 %109
  %111 = load %struct.amixer*, %struct.amixer** %110, align 8
  store %struct.amixer* %111, %struct.amixer** %8, align 8
  %112 = load %struct.amixer*, %struct.amixer** %8, align 8
  %113 = getelementptr inbounds %struct.amixer, %struct.amixer* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32 (%struct.amixer*, i32)*, i32 (%struct.amixer*, i32)** %115, align 8
  %117 = load %struct.amixer*, %struct.amixer** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 %116(%struct.amixer* %117, i32 %118)
  %120 = load %struct.amixer*, %struct.amixer** %8, align 8
  %121 = getelementptr inbounds %struct.amixer, %struct.amixer* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32 (%struct.amixer*)*, i32 (%struct.amixer*)** %123, align 8
  %125 = load %struct.amixer*, %struct.amixer** %8, align 8
  %126 = call i32 %124(%struct.amixer* %125)
  br label %127

127:                                              ; preds = %98
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %95

130:                                              ; preds = %95
  br label %131

131:                                              ; preds = %130, %90
  br label %132

132:                                              ; preds = %131, %46
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %23

136:                                              ; preds = %23
  %137 = load i32, i32* %13, align 4
  ret i32 %137
}

declare dso_local %struct.ct_atc* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amixer_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
