; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_audio_monitor_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_audio_monitor_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.vx_core = type { i32*, i32, i32* }

@CVAL_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @vx_audio_monitor_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_audio_monitor_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.vx_core* %10, %struct.vx_core** %6, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %7, align 4
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CVAL_MAX, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CVAL_MAX, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %103

43:                                               ; preds = %35
  %44 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %45 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %50 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %48, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %43
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %61 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %59, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %57, %43
  %70 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %75 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @vx_set_monitor_level(%struct.vx_core* %70, i32 %71, i32 %73, i32 %80)
  %82 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %88 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @vx_set_monitor_level(%struct.vx_core* %82, i32 %84, i32 %86, i32 %94)
  %96 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %97 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  store i32 1, i32* %3, align 4
  br label %103

99:                                               ; preds = %57
  %100 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %101 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %69, %40
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vx_set_monitor_level(%struct.vx_core*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
