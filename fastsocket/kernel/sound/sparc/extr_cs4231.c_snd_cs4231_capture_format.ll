; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_capture_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_capture_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32*, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@CS4231_PLAYBK_FORMAT = common dso_local global i64 0, align 8
@CS4231_REC_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs4231*, %struct.snd_pcm_hw_params*, i8)* @snd_cs4231_capture_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4231_capture_format(%struct.snd_cs4231* %0, %struct.snd_pcm_hw_params* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i8 %2, i8* %6, align 1
  %8 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %9 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %12 = call i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231* %11, i32 1)
  %13 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %14 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %13)
  %15 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %16 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %15, i32 0, i32 2
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %20 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %3
  %29 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %30 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %31 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %32 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 240
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 15
  %41 = or i32 %37, %40
  %42 = trunc i32 %41 to i8
  %43 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %29, i64 %30, i8 zeroext %42)
  %44 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %45 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %44, i32 0, i32 2
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %49 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %48)
  %50 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %51 = call i32 @snd_cs4231_mce_up(%struct.snd_cs4231* %50)
  %52 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %53 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %52, i32 0, i32 2
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %28, %3
  %57 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %58 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %59 = load i8, i8* %6, align 1
  %60 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %57, i64 %58, i8 zeroext %59)
  %61 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %62 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %61, i32 0, i32 2
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %66 = call i32 @snd_cs4231_mce_down(%struct.snd_cs4231* %65)
  %67 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %68 = call i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231* %67, i32 0)
  %69 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %70 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_cs4231_calibrate_mute(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @snd_cs4231_mce_up(%struct.snd_cs4231*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs4231_out(%struct.snd_cs4231*, i64, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_cs4231_mce_down(%struct.snd_cs4231*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
