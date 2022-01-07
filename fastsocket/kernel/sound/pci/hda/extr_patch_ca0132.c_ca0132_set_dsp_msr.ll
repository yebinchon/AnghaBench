; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_set_dsp_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_set_dsp_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@CONTROL_FLAG_DSP_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_DAC_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_SRC_RATE_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_SRC_CLOCK_196MHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_ADC_B_96KHZ = common dso_local global i32 0, align 4
@CONTROL_FLAG_ADC_C_96KHZ = common dso_local global i32 0, align 4
@MEM_CONNID_MICIN1 = common dso_local global i32 0, align 4
@SR_96_000 = common dso_local global i32 0, align 4
@MEM_CONNID_MICOUT1 = common dso_local global i32 0, align 4
@MEM_CONNID_WUH = common dso_local global i32 0, align 4
@SR_48_000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @ca0132_set_dsp_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_set_dsp_msr(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %6 = load i32, i32* @CONTROL_FLAG_DSP_96KHZ, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @chipio_set_control_flag(%struct.hda_codec* %5, i32 %6, i32 %7)
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = load i32, i32* @CONTROL_FLAG_DAC_96KHZ, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @chipio_set_control_flag(%struct.hda_codec* %9, i32 %10, i32 %11)
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = load i32, i32* @CONTROL_FLAG_SRC_RATE_96KHZ, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @chipio_set_control_flag(%struct.hda_codec* %13, i32 %14, i32 %15)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = load i32, i32* @CONTROL_FLAG_SRC_CLOCK_196MHZ, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @chipio_set_control_flag(%struct.hda_codec* %17, i32 %18, i32 %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = load i32, i32* @CONTROL_FLAG_ADC_B_96KHZ, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @chipio_set_control_flag(%struct.hda_codec* %21, i32 %22, i32 %23)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = load i32, i32* @CONTROL_FLAG_ADC_C_96KHZ, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @chipio_set_control_flag(%struct.hda_codec* %25, i32 %26, i32 %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load i32, i32* @MEM_CONNID_MICIN1, align 4
  %31 = load i32, i32* @SR_96_000, align 4
  %32 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %29, i32 %30, i32 %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = load i32, i32* @MEM_CONNID_MICOUT1, align 4
  %35 = load i32, i32* @SR_96_000, align 4
  %36 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %33, i32 %34, i32 %35)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %38 = load i32, i32* @MEM_CONNID_WUH, align 4
  %39 = load i32, i32* @SR_48_000, align 4
  %40 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @chipio_set_control_flag(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
