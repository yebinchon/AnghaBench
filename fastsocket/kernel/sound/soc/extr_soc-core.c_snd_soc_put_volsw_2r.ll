; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_put_volsw_2r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_put_volsw_2r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32 }
%struct.snd_soc_codec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_volsw_2r(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_mixer_control*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %21, %struct.soc_mixer_control** %6, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %23 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %22)
  store %struct.snd_soc_codec* %23, %struct.snd_soc_codec** %7, align 8
  %24 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %25 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %28 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %31 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %34 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @fls(i32 %36)
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %6, align 8
  %41 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %43, %44
  store i32 %45, i32* %17, align 4
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %15, align 4
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %2
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sub i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %16, align 4
  %72 = sub i32 %70, %71
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %66, %2
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %10, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %16, align 4
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %3, align 4
  br label %96

89:                                               ; preds = %73
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %89, %87
  %97 = load i32, i32* %3, align 4
  ret i32 %97
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
