; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_set_default_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_set_default_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.snd_gus_voice*, i32, i32, i32, i32 }
%struct.snd_gus_voice = type { i32*, i32*, i32, i32 }

@SNDRV_GF1_HANDLER_MIDI_OUT = common dso_local global i32 0, align 4
@snd_gf1_default_interrupt_handler_midi_out = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_MIDI_IN = common dso_local global i32 0, align 4
@snd_gf1_default_interrupt_handler_midi_in = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_TIMER1 = common dso_local global i32 0, align 4
@snd_gf1_default_interrupt_handler_timer1 = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_TIMER2 = common dso_local global i32 0, align 4
@snd_gf1_default_interrupt_handler_timer2 = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_VOICE = common dso_local global i32 0, align 4
@snd_gf1_default_interrupt_handler_wave_and_volume = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_DMA_WRITE = common dso_local global i32 0, align 4
@snd_gf1_default_interrupt_handler_dma_write = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_DMA_READ = common dso_local global i32 0, align 4
@snd_gf1_default_interrupt_handler_dma_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_gf1_set_default_handlers(%struct.snd_gus_card* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_gus_voice*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SNDRV_GF1_HANDLER_MIDI_OUT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @snd_gf1_default_interrupt_handler_midi_out, align 4
  %12 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %13 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  store i32 %11, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SNDRV_GF1_HANDLER_MIDI_IN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @snd_gf1_default_interrupt_handler_midi_in, align 4
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %23 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SNDRV_GF1_HANDLER_TIMER1, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @snd_gf1_default_interrupt_handler_timer1, align 4
  %32 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %33 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SNDRV_GF1_HANDLER_TIMER2, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @snd_gf1_default_interrupt_handler_timer2, align 4
  %42 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %43 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SNDRV_GF1_HANDLER_VOICE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %52 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 65535
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %54, i64 %57
  store %struct.snd_gus_voice* %58, %struct.snd_gus_voice** %5, align 8
  %59 = load i32, i32* @snd_gf1_default_interrupt_handler_wave_and_volume, align 4
  %60 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %5, align 8
  %61 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %5, align 8
  %63 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 4
  %64 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %5, align 8
  %65 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %5, align 8
  %67 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %50, %45
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SNDRV_GF1_HANDLER_DMA_WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @snd_gf1_default_interrupt_handler_dma_write, align 4
  %75 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %76 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SNDRV_GF1_HANDLER_DMA_READ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @snd_gf1_default_interrupt_handler_dma_read, align 4
  %85 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %86 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %78
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
