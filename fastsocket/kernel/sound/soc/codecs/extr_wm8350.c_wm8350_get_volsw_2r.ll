; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_get_volsw_2r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_get_volsw_2r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_codec = type { %struct.wm8350_data* }
%struct.wm8350_data = type { %struct.wm8350_output, %struct.wm8350_output }
%struct.wm8350_output = type { i32, i32 }
%struct.soc_mixer_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8350_get_volsw_2r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_get_volsw_2r(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.wm8350_data*, align 8
  %8 = alloca %struct.wm8350_output*, align 8
  %9 = alloca %struct.wm8350_output*, align 8
  %10 = alloca %struct.soc_mixer_control*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_codec* %13, %struct.snd_soc_codec** %6, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 0
  %16 = load %struct.wm8350_data*, %struct.wm8350_data** %15, align 8
  store %struct.wm8350_data* %16, %struct.wm8350_data** %7, align 8
  %17 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %18 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %17, i32 0, i32 1
  store %struct.wm8350_output* %18, %struct.wm8350_output** %8, align 8
  %19 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %20 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %19, i32 0, i32 0
  store %struct.wm8350_output* %20, %struct.wm8350_output** %9, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %24, %struct.soc_mixer_control** %10, align 8
  %25 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %10, align 8
  %26 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %67 [
    i32 129, label %29
    i32 128, label %48
  ]

29:                                               ; preds = %2
  %30 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %31 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %32, i32* %38, align 4
  %39 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %40 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %41, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %72

48:                                               ; preds = %2
  %49 = load %struct.wm8350_output*, %struct.wm8350_output** %9, align 8
  %50 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %51, i32* %57, align 4
  %58 = load %struct.wm8350_output*, %struct.wm8350_output** %9, align 8
  %59 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %62 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %60, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %72

67:                                               ; preds = %2
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %70 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %71 = call i32 @snd_soc_get_volsw_2r(%struct.snd_kcontrol* %69, %struct.snd_ctl_elem_value* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %48, %29
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_get_volsw_2r(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
