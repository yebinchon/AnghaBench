; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_mixer.c_mixart_analog_vol_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_mixer.c_mixart_analog_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_mixart = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MIXART_ANALOG_CAPTURE_LEVEL_MIN = common dso_local global i32 0, align 4
@MIXART_ANALOG_CAPTURE_LEVEL_MAX = common dso_local global i32 0, align 4
@MIXART_ANALOG_PLAYBACK_LEVEL_MIN = common dso_local global i32 0, align 4
@MIXART_ANALOG_PLAYBACK_LEVEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mixart_analog_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_analog_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_mixart*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_mixart* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_mixart* %12, %struct.snd_mixart** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %14 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %85, %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %88

26:                                               ; preds = %23
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %40 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  br label %52

45:                                               ; preds = %26
  %46 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %47 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  br label %52

52:                                               ; preds = %45, %38
  %53 = phi i32* [ %44, %38 ], [ %51, %45 ]
  store i32* %53, i32** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MIXART_ANALOG_CAPTURE_LEVEL_MIN, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @MIXART_ANALOG_CAPTURE_LEVEL_MAX, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  br label %85

65:                                               ; preds = %60
  br label %76

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @MIXART_ANALOG_PLAYBACK_LEVEL_MIN, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @MIXART_ANALOG_PLAYBACK_LEVEL_MAX, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %66
  br label %85

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %74, %64
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %23

88:                                               ; preds = %23
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @mixart_update_analog_audio_level(%struct.snd_mixart* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %97 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.snd_mixart* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mixart_update_analog_audio_level(%struct.snd_mixart*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
