; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_audio_gain_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_audio_gain_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.vx_core = type { i32**, i32 }

@CVAL_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @vx_audio_gain_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_audio_gain_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.vx_core* %11, %struct.vx_core** %6, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %7, align 4
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CVAL_MAX, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %2
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CVAL_MAX, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %104

49:                                               ; preds = %41
  %50 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %51 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %56 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %54, %65
  br i1 %66, label %83, label %67

67:                                               ; preds = %49
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %71 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %69, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %67, %49
  %84 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @vx_set_audio_gain(%struct.vx_core* %84, i32 %85, i32 %86, i32 %88)
  %90 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %8, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @vx_set_audio_gain(%struct.vx_core* %90, i32 %92, i32 %93, i32 %95)
  %97 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %98 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %97, i32 0, i32 1
  %99 = call i32 @mutex_unlock(i32* %98)
  store i32 1, i32* %3, align 4
  br label %104

100:                                              ; preds = %67
  %101 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %102 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %83, %46
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vx_set_audio_gain(%struct.vx_core*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
