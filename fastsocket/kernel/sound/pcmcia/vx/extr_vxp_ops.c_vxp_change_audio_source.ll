; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_change_audio_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_change_audio_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_vxpocket = type { i32, i32 }

@VXP_CDSP_DATAIN_SEL_MASK = common dso_local global i32 0, align 4
@CDSP = common dso_local global i32 0, align 4
@VX_TYPE_VXP440 = common dso_local global i32 0, align 4
@P24_CDSP_MICS_SEL_MASK = common dso_local global i32 0, align 4
@VXP_CDSP_MIC_SEL_MASK = common dso_local global i32 0, align 4
@P24_CDSP_MIC38_SEL_MASK = common dso_local global i32 0, align 4
@P24_CDSP_MIC20_SEL_MASK = common dso_local global i32 0, align 4
@MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32)* @vxp_change_audio_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxp_change_audio_source(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_vxpocket*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = bitcast %struct.vx_core* %6 to %struct.snd_vxpocket*
  store %struct.snd_vxpocket* %7, %struct.snd_vxpocket** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %116 [
    i32 130, label %9
    i32 129, label %21
    i32 128, label %54
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @VXP_CDSP_DATAIN_SEL_MASK, align 4
  %11 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %12 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %16 = load i32, i32* @CDSP, align 4
  %17 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %18 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vx_outb(%struct.snd_vxpocket* %15, i32 %16, i32 %19)
  br label %116

21:                                               ; preds = %2
  %22 = load i32, i32* @VXP_CDSP_DATAIN_SEL_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %25 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %29 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VX_TYPE_VXP440, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load i32, i32* @P24_CDSP_MICS_SEL_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %37 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %47

40:                                               ; preds = %21
  %41 = load i32, i32* @VXP_CDSP_MIC_SEL_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %44 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %49 = load i32, i32* @CDSP, align 4
  %50 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %51 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @vx_outb(%struct.snd_vxpocket* %48, i32 %49, i32 %52)
  br label %116

54:                                               ; preds = %2
  %55 = load i32, i32* @VXP_CDSP_DATAIN_SEL_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %58 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %62 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VX_TYPE_VXP440, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %54
  %67 = load i32, i32* @P24_CDSP_MICS_SEL_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %70 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %74 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load i32, i32* @P24_CDSP_MIC38_SEL_MASK, align 4
  %79 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %80 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %89

83:                                               ; preds = %66
  %84 = load i32, i32* @P24_CDSP_MIC20_SEL_MASK, align 4
  %85 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %86 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %91 = load i32, i32* @CDSP, align 4
  %92 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %93 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @vx_outb(%struct.snd_vxpocket* %90, i32 %91, i32 %94)
  br label %115

96:                                               ; preds = %54
  %97 = load i32, i32* @VXP_CDSP_MIC_SEL_MASK, align 4
  %98 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %99 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %103 = load i32, i32* @CDSP, align 4
  %104 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %105 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @vx_outb(%struct.snd_vxpocket* %102, i32 %103, i32 %106)
  %108 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %109 = load i32, i32* @MICRO, align 4
  %110 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %111 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @vx_compute_mic_level(i32 %112)
  %114 = call i32 @vx_outb(%struct.snd_vxpocket* %108, i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %96, %89
  br label %116

116:                                              ; preds = %2, %115, %47, %9
  ret void
}

declare dso_local i32 @vx_outb(%struct.snd_vxpocket*, i32, i32) #1

declare dso_local i32 @vx_compute_mic_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
