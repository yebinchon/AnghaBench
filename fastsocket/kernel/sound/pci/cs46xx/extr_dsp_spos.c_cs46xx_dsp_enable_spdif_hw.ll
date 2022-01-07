; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_enable_spdif_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_enable_spdif_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, i32 }

@BA0_ASER_FADDR = common dso_local global i32 0, align 4
@SP_SPDOUT_FIFO = common dso_local global i32 0, align 4
@SP_SPDOUT_CONTROL = common dso_local global i32 0, align 4
@SP_SPDOUT_CSUV = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_HW_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_enable_spdif_hw(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  %3 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  %4 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %5 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %4, i32 0, i32 0
  %6 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  store %struct.dsp_spos_instance* %6, %struct.dsp_spos_instance** %3, align 8
  %7 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %8 = call i32 @cs46xx_dsp_disable_spdif_hw(%struct.snd_cs46xx* %7)
  %9 = call i32 @udelay(i32 50)
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %11 = load i32, i32* @BA0_ASER_FADDR, align 4
  %12 = load i32, i32* @SP_SPDOUT_FIFO, align 4
  %13 = ashr i32 %12, 4
  %14 = shl i32 %13, 4
  %15 = or i32 32768, %14
  %16 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %10, i32 %11, i32 %15)
  %17 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %18 = load i32, i32* @SP_SPDOUT_CONTROL, align 4
  %19 = call i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx* %17, i32 %18, i32 -2147483648)
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %21 = load i32, i32* @SP_SPDOUT_CSUV, align 4
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %23 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx* %20, i32 %21, i32 %24)
  %26 = load i32, i32* @DSP_SPDIF_STATUS_HW_ENABLED, align 4
  %27 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %28 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @cs46xx_dsp_disable_spdif_hw(%struct.snd_cs46xx*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
