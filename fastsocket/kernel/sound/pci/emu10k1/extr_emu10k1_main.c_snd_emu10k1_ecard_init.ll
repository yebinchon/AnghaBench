; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_ecard_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_ecard_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64 }

@EC_RAW_RUN_MODE = common dso_local global i32 0, align 4
@EC_DEFAULT_SPDIF0_SEL = common dso_local global i32 0, align 4
@EC_DEFAULT_SPDIF1_SEL = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@HCFG_AUDIOENABLE = common dso_local global i32 0, align 4
@HCFG_CODECFORMAT_I2S = common dso_local global i32 0, align 4
@EC_ADCCAL = common dso_local global i32 0, align 4
@EC_LEDN = common dso_local global i32 0, align 4
@EC_TRIM_CSN = common dso_local global i32 0, align 4
@EC_DACCAL = common dso_local global i32 0, align 4
@EC_DEFAULT_ADC_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*)* @snd_emu10k1_ecard_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_ecard_init(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %4 = load i32, i32* @EC_RAW_RUN_MODE, align 4
  %5 = load i32, i32* @EC_DEFAULT_SPDIF0_SEL, align 4
  %6 = call i32 @EC_SPDIF0_SELECT(i32 %5)
  %7 = or i32 %4, %6
  %8 = load i32, i32* @EC_DEFAULT_SPDIF1_SEL, align 4
  %9 = call i32 @EC_SPDIF1_SELECT(i32 %8)
  %10 = or i32 %7, %9
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %12 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HCFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inl(i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @HCFG_AUDIOENABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HCFG_CODECFORMAT_I2S, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HCFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outl(i32 %23, i64 %28)
  %30 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HCFG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inl(i64 %34)
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %37 = load i32, i32* @EC_ADCCAL, align 4
  %38 = load i32, i32* @EC_LEDN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @EC_TRIM_CSN, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %36, i32 %41)
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %44 = load i32, i32* @EC_DACCAL, align 4
  %45 = load i32, i32* @EC_LEDN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @EC_TRIM_CSN, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %43, i32 %48)
  %50 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %51 = call i32 @snd_emu10k1_wait(%struct.snd_emu10k1* %50, i32 48000)
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %53 = load i32, i32* @EC_ADCCAL, align 4
  %54 = load i32, i32* @EC_LEDN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @EC_TRIM_CSN, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %52, i32 %57)
  %59 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1* %59, i32 %62)
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %65 = load i32, i32* @EC_DEFAULT_ADC_GAIN, align 4
  %66 = call i32 @snd_emu10k1_ecard_setadcgain(%struct.snd_emu10k1* %64, i32 %65)
  ret i32 0
}

declare dso_local i32 @EC_SPDIF0_SELECT(i32) #1

declare dso_local i32 @EC_SPDIF1_SELECT(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_emu10k1_ecard_write(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_wait(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_ecard_setadcgain(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
