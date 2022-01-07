; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_timer.c_snd_gf1_timer1_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_timer.c_snd_gf1_timer1_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SNDRV_GF1_GB_ADLIB_TIMER_1 = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_SOUND_BLASTER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_gf1_timer1_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_timer1_start(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_gus_card*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %7 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %8 = call %struct.snd_gus_card* @snd_timer_chip(%struct.snd_timer* %7)
  store %struct.snd_gus_card* %8, %struct.snd_gus_card** %6, align 8
  %9 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %10 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %14 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %17 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, 4
  store i32 %20, i32* %18, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %4, align 1
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %23 = load i32, i32* @SNDRV_GF1_GB_ADLIB_TIMER_1, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 256, %24
  %26 = trunc i32 %25 to i8
  %27 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %22, i32 %23, i8 zeroext %26)
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %29 = load i32, i32* @SNDRV_GF1_GB_SOUND_BLASTER_CONTROL, align 4
  %30 = load i8, i8* %4, align 1
  %31 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %28, i32 %29, i8 zeroext %30)
  %32 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 2
  %36 = trunc i32 %35 to i8
  %37 = call i32 @snd_gf1_adlib_write(%struct.snd_gus_card* %32, i32 4, i8 zeroext %36)
  %38 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %39 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %38, i32 0, i32 0
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret i32 0
}

declare dso_local %struct.snd_gus_card* @snd_timer_chip(%struct.snd_timer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_gf1_write8(%struct.snd_gus_card*, i32, i8 zeroext) #1

declare dso_local i32 @snd_gf1_adlib_write(%struct.snd_gus_card*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
