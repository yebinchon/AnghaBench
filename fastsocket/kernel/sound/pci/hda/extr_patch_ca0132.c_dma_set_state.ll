; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dma_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dma_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_engine = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"dma_set_state state=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_engine*, i32)* @dma_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_set_state(%struct.dma_engine* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_engine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dma_engine* %0, %struct.dma_engine** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @snd_printdd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %12 [
    i32 128, label %10
    i32 129, label %11
  ]

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

11:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

13:                                               ; preds = %11, %10
  %14 = load %struct.dma_engine*, %struct.dma_engine** %4, align 8
  %15 = getelementptr inbounds %struct.dma_engine, %struct.dma_engine* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @snd_hda_codec_load_dsp_trigger(i32 %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @snd_printdd(i8*, i32) #1

declare dso_local i32 @snd_hda_codec_load_dsp_trigger(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
