; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sh_dac_audio.c_sh_dac_audio_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sh_dac_audio.c_sh_dac_audio_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }

@empty = common dso_local global i32 0, align 4
@buffer_begin = common dso_local global i32* null, align 8
@CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL = common dso_local global i32 0, align 4
@data_buffer = common dso_local global i32* null, align 8
@BUFFER_SIZE = common dso_local global i32 0, align 4
@buffer_end = common dso_local global i32* null, align 8
@hrtimer = common dso_local global i32 0, align 4
@wakeups_per_second = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@HRTIMER_NORESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*)* @sh_dac_audio_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dac_audio_timer(%struct.hrtimer* %0) #0 {
  %2 = alloca %struct.hrtimer*, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %2, align 8
  %3 = load i32, i32* @empty, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load i32*, i32** @buffer_begin, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL, align 4
  %9 = call i32 @sh_dac_output(i32 %7, i32 %8)
  %10 = load i32*, i32** @buffer_begin, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** @buffer_begin, align 8
  %12 = load i32*, i32** @buffer_begin, align 8
  %13 = load i32*, i32** @data_buffer, align 8
  %14 = load i32, i32* @BUFFER_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = icmp eq i32* %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32*, i32** @data_buffer, align 8
  store i32* %19, i32** @buffer_begin, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i32*, i32** @buffer_begin, align 8
  %22 = load i32*, i32** @buffer_end, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* @empty, align 4
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* @empty, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @wakeups_per_second, align 4
  %31 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %32 = call i32 @hrtimer_start(i32* @hrtimer, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @HRTIMER_NORESTART, align 4
  ret i32 %34
}

declare dso_local i32 @sh_dac_output(i32, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
