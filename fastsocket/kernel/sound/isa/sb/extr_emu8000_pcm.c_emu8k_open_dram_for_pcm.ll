; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_open_dram_for_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_open_dram_for_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@EMU8000_DRAM_VOICES = common dso_local global i32 0, align 4
@EMU8000_RAM_WRITE = common dso_local global i32 0, align 4
@EMU8000_RAM_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu8000*, i32)* @emu8k_open_dram_for_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu8k_open_dram_for_pcm(%struct.snd_emu8000* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu8000*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %8 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @snd_emux_lock_voice(i32 %9, i32 0)
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %15 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_emux_lock_voice(i32 %16, i32 1)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %47, %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EMU8000_DRAM_VOICES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load i32, i32* @EMU8000_RAM_WRITE, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @snd_emux_lock_voice(i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @EMU8000_RAM_RIGHT, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %34, %25
  %43 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @snd_emu8000_dma_chan(%struct.snd_emu8000* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %52 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %51, i32 30, i32 0)
  %53 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %54 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %53, i32 30, i32 472)
  %55 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %56 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %55, i32 30, i32 480)
  %57 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %58 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %57, i32 30, i32 472)
  %59 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %60 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %59, i32 31, i32 0)
  %61 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %62 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %61, i32 31, i32 472)
  %63 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %64 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %63, i32 31, i32 480)
  %65 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %66 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %65, i32 31, i32 472)
  ret i32 0
}

declare dso_local i32 @snd_emux_lock_voice(i32, i32) #1

declare dso_local i32 @snd_emu8000_dma_chan(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
