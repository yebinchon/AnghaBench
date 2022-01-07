; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.loopback_pcm* }
%struct.loopback_pcm = type { i8*, i32, i32, %struct.loopback_cable* }
%struct.loopback_cable = type { i32, i32, i32 }

@jiffies = common dso_local global i8* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @loopback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.loopback_pcm*, align 8
  %8 = alloca %struct.loopback_cable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.loopback_pcm*, %struct.loopback_pcm** %15, align 8
  store %struct.loopback_pcm* %16, %struct.loopback_pcm** %7, align 8
  %17 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %18 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %17, i32 0, i32 3
  %19 = load %struct.loopback_cable*, %struct.loopback_cable** %18, align 8
  store %struct.loopback_cable* %19, %struct.loopback_cable** %8, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %133 [
    i32 129, label %25
    i32 128, label %71
    i32 131, label %101
    i32 130, label %115
  ]

25:                                               ; preds = %2
  %26 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @loopback_check_format(%struct.loopback_cable* %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %137

35:                                               ; preds = %25
  %36 = load i8*, i8** @jiffies, align 8
  %37 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %38 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %40 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %39, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %42 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  %43 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %44 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %43, i32 0, i32 2
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %48 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %10, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %54 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %58 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %61 = call i32 @loopback_timer_start(%struct.loopback_pcm* %60)
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %35
  %68 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %69 = call i32 @loopback_active_notify(%struct.loopback_pcm* %68)
  br label %70

70:                                               ; preds = %67, %35
  br label %136

71:                                               ; preds = %2
  %72 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %73 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %72, i32 0, i32 2
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load i32, i32* %10, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %78 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %10, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %84 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %88 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %87, i32 0, i32 2
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %91 = call i32 @loopback_timer_stop(%struct.loopback_pcm* %90)
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %71
  %98 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %99 = call i32 @loopback_active_notify(%struct.loopback_pcm* %98)
  br label %100

100:                                              ; preds = %97, %71
  br label %136

101:                                              ; preds = %2
  %102 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %103 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %102, i32 0, i32 2
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %107 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %111 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %110, i32 0, i32 2
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %114 = call i32 @loopback_timer_stop(%struct.loopback_pcm* %113)
  br label %136

115:                                              ; preds = %2
  %116 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %117 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %116, i32 0, i32 2
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load i8*, i8** @jiffies, align 8
  %120 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %121 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %10, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %125 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.loopback_cable*, %struct.loopback_cable** %8, align 8
  %129 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %128, i32 0, i32 2
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load %struct.loopback_pcm*, %struct.loopback_pcm** %7, align 8
  %132 = call i32 @loopback_timer_start(%struct.loopback_pcm* %131)
  br label %136

133:                                              ; preds = %2
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %137

136:                                              ; preds = %115, %101, %100, %70
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %133, %33
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @loopback_check_format(%struct.loopback_cable*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @loopback_timer_start(%struct.loopback_pcm*) #1

declare dso_local i32 @loopback_active_notify(%struct.loopback_pcm*) #1

declare dso_local i32 @loopback_timer_stop(%struct.loopback_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
