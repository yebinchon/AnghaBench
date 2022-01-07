; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_put_volsw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_put_volsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32 }
%struct.snd_soc_codec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.soc_mixer_control*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %19, %struct.soc_mixer_control** %5, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %20)
  store %struct.snd_soc_codec* %21, %struct.snd_soc_codec** %6, align 8
  %22 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %23 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %26 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @fls(i32 %34)
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %5, align 8
  %39 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sub i32 %53, %54
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %2
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %60, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %56
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub i32 %79, %80
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %78, %66
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %9, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %82, %56
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %94, i32 %95, i32 %96, i32 %97)
  ret i32 %98
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
