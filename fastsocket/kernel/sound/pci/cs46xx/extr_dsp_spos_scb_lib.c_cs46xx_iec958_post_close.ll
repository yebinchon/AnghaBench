; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_iec958_post_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_iec958_post_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_PLAYBACK_OPEN = common dso_local global i32 0, align 4
@SP_SPDOUT_CSUV = common dso_local global i32 0, align 4
@SPDIFO_IP_OUTPUT_BUFFER1 = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_OUTPUT_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_iec958_post_close(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %6 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %5, i32 0, i32 0
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  store %struct.dsp_spos_instance* %7, %struct.dsp_spos_instance** %4, align 8
  %8 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %9 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %65

19:                                               ; preds = %1
  %20 = load i32, i32* @DSP_SPDIF_STATUS_PLAYBACK_OPEN, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %23 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %27 = load i32, i32* @SP_SPDOUT_CSUV, align 4
  %28 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %29 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx* %26, i32 %27, i32 %30)
  %32 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %33 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %19
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %38 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %39 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %37, i32* %40)
  %42 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %43 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %36, %19
  %45 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %46 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %47 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %45, i32* %48)
  %50 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %51 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %53 = load i32, i32* @SPDIFO_IP_OUTPUT_BUFFER1, align 4
  %54 = call i32 @_dsp_clear_sample_buffer(%struct.snd_cs46xx* %52, i32 %53, i32 256)
  %55 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %56 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DSP_SPDIF_STATUS_OUTPUT_ENABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %63 = call i32 @cs46xx_dsp_enable_spdif_out(%struct.snd_cs46xx* %62)
  br label %64

64:                                               ; preds = %61, %44
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx*, i32*) #1

declare dso_local i32 @_dsp_clear_sample_buffer(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @cs46xx_dsp_enable_spdif_out(%struct.snd_cs46xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
