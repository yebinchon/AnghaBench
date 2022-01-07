; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_pcm_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_pcm_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ml403_ac97cr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WORK_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"trigger(playback): START\0A\00", align 1
@RESETFIFO = common dso_local global i32 0, align 4
@CR_PLAYRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"trigger(playback): STOP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"trigger(playback): (done)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ml403_ac97cr_pcm_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ml403_ac97cr_pcm_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ml403_ac97cr*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_ml403_ac97cr* %8, %struct.snd_ml403_ac97cr** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %39 [
    i32 129, label %10
    i32 128, label %27
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @WORK_INFO, align 4
  %12 = call i32 @PDEBUG(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %17 = load i32, i32* @RESETFIFO, align 4
  %18 = call i32 @CR_REG(%struct.snd_ml403_ac97cr* %16, i32 %17)
  %19 = load i32, i32* @CR_PLAYRESET, align 4
  %20 = call i32 @out_be32(i32 %18, i32 %19)
  %21 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @enable_irq(i32 %25)
  br label %42

27:                                               ; preds = %2
  %28 = load i32, i32* @WORK_INFO, align 4
  %29 = call i32 @PDEBUG(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @disable_irq_nosync(i32 %35)
  %37 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %27, %10
  %43 = load i32, i32* @WORK_INFO, align 4
  %44 = call i32 @PDEBUG(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.snd_ml403_ac97cr* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i32 @CR_REG(%struct.snd_ml403_ac97cr*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
