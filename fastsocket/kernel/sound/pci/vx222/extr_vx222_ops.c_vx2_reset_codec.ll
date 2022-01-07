; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_reset_codec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_reset_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i64, i32 }
%struct.snd_vx222 = type { i32, i64, i32 }

@CDSP = common dso_local global i32 0, align 4
@VX_CDSP_CODEC_RESET_MASK = common dso_local global i32 0, align 4
@VX_TYPE_BOARD = common dso_local global i64 0, align 8
@AKM_CODEC_POWER_CONTROL_CMD = common dso_local global i32 0, align 4
@AKM_CODEC_CLOCK_FORMAT_CMD = common dso_local global i32 0, align 4
@AKM_CODEC_MUTE_CMD = common dso_local global i32 0, align 4
@AKM_CODEC_RESET_OFF_CMD = common dso_local global i32 0, align 4
@VX_TYPE_MIC = common dso_local global i64 0, align 8
@MICRO_SELECT_INPUT_NORM = common dso_local global i32 0, align 4
@MICRO_SELECT_PREAMPLI_G_0 = common dso_local global i32 0, align 4
@MICRO_SELECT_NOISE_T_52DB = common dso_local global i32 0, align 4
@MICRO_SELECT_PHANTOM_ALIM = common dso_local global i32 0, align 4
@SELMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*)* @vx2_reset_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_reset_codec(%struct.vx_core* %0) #0 {
  %2 = alloca %struct.vx_core*, align 8
  %3 = alloca %struct.snd_vx222*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %2, align 8
  %4 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %5 = bitcast %struct.vx_core* %4 to %struct.snd_vx222*
  store %struct.snd_vx222* %5, %struct.snd_vx222** %3, align 8
  %6 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %7 = bitcast %struct.snd_vx222* %6 to %struct.vx_core*
  %8 = load i32, i32* @CDSP, align 4
  %9 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %10 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VX_CDSP_CODEC_RESET_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @vx_outl(%struct.vx_core* %7, i32 %8, i32 %14)
  %16 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %17 = bitcast %struct.snd_vx222* %16 to %struct.vx_core*
  %18 = load i32, i32* @CDSP, align 4
  %19 = call i32 @vx_inl(%struct.vx_core* %17, i32 %18)
  %20 = call i32 @msleep(i32 10)
  %21 = load i32, i32* @VX_CDSP_CODEC_RESET_MASK, align 4
  %22 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %23 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %27 = bitcast %struct.snd_vx222* %26 to %struct.vx_core*
  %28 = load i32, i32* @CDSP, align 4
  %29 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %30 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @vx_outl(%struct.vx_core* %27, i32 %28, i32 %31)
  %33 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %34 = bitcast %struct.snd_vx222* %33 to %struct.vx_core*
  %35 = load i32, i32* @CDSP, align 4
  %36 = call i32 @vx_inl(%struct.vx_core* %34, i32 %35)
  %37 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %38 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VX_TYPE_BOARD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = call i32 @msleep(i32 1)
  br label %83

44:                                               ; preds = %1
  %45 = call i32 @msleep(i32 5)
  %46 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %47 = load i32, i32* @AKM_CODEC_POWER_CONTROL_CMD, align 4
  %48 = call i32 @vx2_write_codec_reg(%struct.vx_core* %46, i32 %47)
  %49 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %50 = load i32, i32* @AKM_CODEC_CLOCK_FORMAT_CMD, align 4
  %51 = call i32 @vx2_write_codec_reg(%struct.vx_core* %49, i32 %50)
  %52 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %53 = load i32, i32* @AKM_CODEC_MUTE_CMD, align 4
  %54 = call i32 @vx2_write_codec_reg(%struct.vx_core* %52, i32 %53)
  %55 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %56 = load i32, i32* @AKM_CODEC_RESET_OFF_CMD, align 4
  %57 = call i32 @vx2_write_codec_reg(%struct.vx_core* %55, i32 %56)
  %58 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %59 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VX_TYPE_MIC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %44
  %64 = load i32, i32* @MICRO_SELECT_INPUT_NORM, align 4
  %65 = load i32, i32* @MICRO_SELECT_PREAMPLI_G_0, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MICRO_SELECT_NOISE_T_52DB, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %70 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @MICRO_SELECT_PHANTOM_ALIM, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %74 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.vx_core*, %struct.vx_core** %2, align 8
  %78 = load i32, i32* @SELMIC, align 4
  %79 = load %struct.snd_vx222*, %struct.snd_vx222** %3, align 8
  %80 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @vx_outl(%struct.vx_core* %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %42, %63, %44
  ret void
}

declare dso_local i32 @vx_outl(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @vx_inl(%struct.vx_core*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vx2_write_codec_reg(%struct.vx_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
