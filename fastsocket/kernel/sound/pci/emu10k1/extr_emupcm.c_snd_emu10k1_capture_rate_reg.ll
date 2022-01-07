; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_rate_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_rate_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADCCR_SAMPLERATE_8 = common dso_local global i32 0, align 4
@ADCCR_SAMPLERATE_11 = common dso_local global i32 0, align 4
@ADCCR_SAMPLERATE_16 = common dso_local global i32 0, align 4
@ADCCR_SAMPLERATE_22 = common dso_local global i32 0, align 4
@ADCCR_SAMPLERATE_24 = common dso_local global i32 0, align 4
@ADCCR_SAMPLERATE_32 = common dso_local global i32 0, align 4
@ADCCR_SAMPLERATE_44 = common dso_local global i32 0, align 4
@ADCCR_SAMPLERATE_48 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @snd_emu10k1_capture_rate_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_capture_rate_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 8000, label %5
    i32 11025, label %7
    i32 16000, label %9
    i32 22050, label %11
    i32 24000, label %13
    i32 32000, label %15
    i32 44100, label %17
    i32 48000, label %19
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ADCCR_SAMPLERATE_8, align 4
  store i32 %6, i32* %2, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load i32, i32* @ADCCR_SAMPLERATE_11, align 4
  store i32 %8, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @ADCCR_SAMPLERATE_16, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @ADCCR_SAMPLERATE_22, align 4
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @ADCCR_SAMPLERATE_24, align 4
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @ADCCR_SAMPLERATE_32, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @ADCCR_SAMPLERATE_44, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @ADCCR_SAMPLERATE_48, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %1
  %22 = call i32 (...) @snd_BUG()
  %23 = load i32, i32* @ADCCR_SAMPLERATE_8, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7, %5
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
