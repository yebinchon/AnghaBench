; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_pcm_ostream_set_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_pcm_ostream_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }

@WRITEBACK_SCB_ADDR = common dso_local global i32 0, align 4
@DMA_RQ_C1_DEST_SIZE_MASK = common dso_local global i32 0, align 4
@DMA_RQ_C1_DEST_MOD1024 = common dso_local global i32 0, align 4
@DMA_RQ_C1_DEST_MOD512 = common dso_local global i32 0, align 4
@DMA_RQ_C1_DEST_MOD256 = common dso_local global i32 0, align 4
@DMA_RQ_C1_DEST_MOD128 = common dso_local global i32 0, align 4
@DMA_RQ_C1_DEST_MOD64 = common dso_local global i32 0, align 4
@DMA_RQ_C1_DEST_MOD32 = common dso_local global i32 0, align 4
@DMA_RQ_C1_DEST_MOD16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"period size (%d) not supported by HW\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_pcm_ostream_set_period(%struct.snd_cs46xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %8 = load i32, i32* @WRITEBACK_SCB_ADDR, align 4
  %9 = shl i32 %8, 2
  %10 = call i32 @snd_cs46xx_peek(%struct.snd_cs46xx* %7, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @DMA_RQ_C1_DEST_SIZE_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %44 [
    i32 2048, label %16
    i32 1024, label %20
    i32 512, label %24
    i32 256, label %28
    i32 128, label %32
    i32 64, label %36
    i32 32, label %40
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @DMA_RQ_C1_DEST_MOD1024, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* @DMA_RQ_C1_DEST_MOD512, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load i32, i32* @DMA_RQ_C1_DEST_MOD256, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load i32, i32* @DMA_RQ_C1_DEST_MOD128, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load i32, i32* @DMA_RQ_C1_DEST_MOD64, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %2
  %37 = load i32, i32* @DMA_RQ_C1_DEST_MOD32, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %2
  %41 = load i32, i32* @DMA_RQ_C1_DEST_MOD16, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @snd_printdd(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %40, %36, %32, %28, %24, %20, %16
  %50 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %51 = load i32, i32* @WRITEBACK_SCB_ADDR, align 4
  %52 = shl i32 %51, 2
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %50, i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
