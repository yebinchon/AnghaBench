; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_interrupt_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_interrupt_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i16 }
%struct.snd_gus_voice = type { i32, %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i32, i32, i32*, %struct.snd_gus_voice** }

@SNDRV_GF1_VB_VOLUME_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_PCM_PFLG_ACTIVE = common dso_local global i32 0, align 4
@SNDRV_GF1_VW_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*, %struct.snd_gus_voice*)* @snd_gf1_pcm_interrupt_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_pcm_interrupt_volume(%struct.snd_gus_card* %0, %struct.snd_gus_voice* %1) #0 {
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca %struct.snd_gus_voice*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.gus_pcm_private*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  store %struct.snd_gus_voice* %1, %struct.snd_gus_voice** %4, align 8
  %8 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %9 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %8, i32 0, i32 1
  %10 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %9, align 8
  store %struct.gus_pcm_private* %10, %struct.gus_pcm_private** %7, align 8
  %11 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %12 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %15 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %16 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snd_gf1_select_voice(%struct.snd_gus_card* %14, i32 %17)
  %19 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %20 = load i32, i32* @SNDRV_GF1_VB_VOLUME_CONTROL, align 4
  %21 = call i32 @snd_gf1_ctrl_stop(%struct.snd_gus_card* %19, i32 %20)
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %23 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %7, align 8
  %26 = icmp eq %struct.gus_pcm_private* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %86

28:                                               ; preds = %2
  %29 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %7, align 8
  %30 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SNDRV_GF1_PCM_PFLG_ACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %86

36:                                               ; preds = %28
  %37 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %7, align 8
  %38 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %37, i32 0, i32 3
  %39 = load %struct.snd_gus_voice**, %struct.snd_gus_voice*** %38, align 8
  %40 = getelementptr inbounds %struct.snd_gus_voice*, %struct.snd_gus_voice** %39, i64 0
  %41 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %40, align 8
  %42 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %43 = icmp eq %struct.snd_gus_voice* %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  store i32 %45, i32* %6, align 4
  %46 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %7, align 8
  %47 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %86

51:                                               ; preds = %36
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %56 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 4
  %59 = zext i16 %58 to i32
  br label %66

60:                                               ; preds = %51
  %61 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %62 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  br label %66

66:                                               ; preds = %60, %54
  %67 = phi i32 [ %59, %54 ], [ %65, %60 ]
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %5, align 2
  %69 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %70 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %73 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %74 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @snd_gf1_select_voice(%struct.snd_gus_card* %72, i32 %75)
  %77 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %78 = load i32, i32* @SNDRV_GF1_VW_VOLUME, align 4
  %79 = load i16, i16* %5, align 2
  %80 = call i32 @snd_gf1_write16(%struct.snd_gus_card* %77, i32 %78, i16 zeroext %79)
  %81 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %7, align 8
  %82 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %84 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  br label %86

86:                                               ; preds = %66, %50, %35, %27
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_gf1_select_voice(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_ctrl_stop(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_gf1_write16(%struct.snd_gus_card*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
