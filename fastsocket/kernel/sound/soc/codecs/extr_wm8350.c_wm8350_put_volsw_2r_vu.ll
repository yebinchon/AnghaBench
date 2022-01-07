; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_put_volsw_2r_vu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_put_volsw_2r_vu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_codec = type { %struct.wm8350_data* }
%struct.wm8350_data = type { %struct.wm8350_output, %struct.wm8350_output }
%struct.wm8350_output = type { i32, i32, i32 }
%struct.soc_mixer_control = type { i32 }

@WM8350_OUT1_VU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8350_put_volsw_2r_vu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_put_volsw_2r_vu(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.wm8350_data*, align 8
  %8 = alloca %struct.wm8350_output*, align 8
  %9 = alloca %struct.soc_mixer_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_soc_codec* %14, %struct.snd_soc_codec** %6, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %15, i32 0, i32 0
  %17 = load %struct.wm8350_data*, %struct.wm8350_data** %16, align 8
  store %struct.wm8350_data* %17, %struct.wm8350_data** %7, align 8
  store %struct.wm8350_output* null, %struct.wm8350_output** %8, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %21, %struct.soc_mixer_control** %9, align 8
  %22 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %9, align 8
  %23 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %32 [
    i32 129, label %26
    i32 128, label %29
  ]

26:                                               ; preds = %2
  %27 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %28 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %27, i32 0, i32 1
  store %struct.wm8350_output* %28, %struct.wm8350_output** %8, align 8
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.wm8350_data*, %struct.wm8350_data** %7, align 8
  %31 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %30, i32 0, i32 0
  store %struct.wm8350_output* %31, %struct.wm8350_output** %8, align 8
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %29, %26
  %34 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %35 = icmp ne %struct.wm8350_output* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %45 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %54 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.wm8350_output*, %struct.wm8350_output** %8, align 8
  %56 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %79

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60, %33
  %62 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %63 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %64 = call i32 @snd_soc_put_volsw_2r(%struct.snd_kcontrol* %62, %struct.snd_ctl_elem_value* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %61
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @WM8350_OUT1_VU, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %73, i32 %74, i32 %77)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %69, %67, %59
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_put_volsw_2r(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @wm8350_codec_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8350_codec_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
