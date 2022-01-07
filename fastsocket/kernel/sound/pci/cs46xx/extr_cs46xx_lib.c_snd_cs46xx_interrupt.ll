; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, i32, i32, i32, i64, %struct.TYPE_6__, i64, %struct.TYPE_5__*, %struct.dsp_spos_instance* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.dsp_spos_instance = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_cs46xx_pcm*, i32, i64 }
%struct.snd_cs46xx_pcm = type { i64 }

@BA0_HISR = common dso_local global i32 0, align 4
@BA0_HICR = common dso_local global i32 0, align 4
@HICR_CHGM = common dso_local global i8 0, align 1
@HICR_IEV = common dso_local global i8 0, align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@HISR_VC0 = common dso_local global i32 0, align 4
@HISR_VC1 = common dso_local global i32 0, align 4
@HISR_MIDI = common dso_local global i32 0, align 4
@BA0_MIDSR = common dso_local global i32 0, align 4
@MIDSR_RBE = common dso_local global i32 0, align 4
@BA0_MIDRP = common dso_local global i32 0, align 4
@MIDCR_RIE = common dso_local global i32 0, align 4
@MIDSR_TBF = common dso_local global i32 0, align 4
@MIDCR_TIE = common dso_local global i32 0, align 4
@BA0_MIDCR = common dso_local global i32 0, align 4
@BA0_MIDWP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@BA0_HSR0 = common dso_local global i32 0, align 4
@CS46XX_DSP_CAPTURE_CHANNEL = common dso_local global i32 0, align 4
@DSP_MAX_PCM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_cs46xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_cs46xx*
  store %struct.snd_cs46xx* %10, %struct.snd_cs46xx** %6, align 8
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %12 = load i32, i32* @BA0_HISR, align 4
  %13 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 2147483647
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %19 = load i32, i32* @BA0_HICR, align 4
  %20 = load i8, i8* @HICR_CHGM, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @HICR_IEV, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i8
  %26 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %18, i32 %19, i8 zeroext %25)
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %170

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @HISR_VC0, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %35 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %34, i32 0, i32 7
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %40 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %39, i32 0, i32 7
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %47 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %46, i32 0, i32 7
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snd_pcm_period_elapsed(i64 %50)
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52, %33, %28
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @HISR_VC1, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %60 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %65 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %71 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @snd_pcm_period_elapsed(i64 %73)
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %58, %53
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @HISR_MIDI, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %159

81:                                               ; preds = %76
  %82 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %83 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %159

86:                                               ; preds = %81
  %87 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %88 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %87, i32 0, i32 1
  %89 = call i32 @spin_lock(i32* %88)
  br label %90

90:                                               ; preds = %109, %108, %86
  %91 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %92 = load i32, i32* @BA0_MIDSR, align 4
  %93 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %91, i32 %92)
  %94 = load i32, i32* @MIDSR_RBE, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %99 = load i32, i32* @BA0_MIDRP, align 4
  %100 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %98, i32 %99)
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %8, align 1
  %102 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %103 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MIDCR_RIE, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %90

109:                                              ; preds = %97
  %110 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %111 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @snd_rawmidi_receive(i32 %112, i8* %8, i32 1)
  br label %90

114:                                              ; preds = %90
  br label %115

115:                                              ; preds = %150, %114
  %116 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %117 = load i32, i32* @BA0_MIDSR, align 4
  %118 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %116, i32 %117)
  %119 = load i32, i32* @MIDSR_TBF, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %155

122:                                              ; preds = %115
  %123 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %124 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MIDCR_TIE, align 4
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %155

130:                                              ; preds = %122
  %131 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %132 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @snd_rawmidi_transmit(i32 %133, i8* %8, i32 1)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %150

136:                                              ; preds = %130
  %137 = load i32, i32* @MIDCR_TIE, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %140 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %144 = load i32, i32* @BA0_MIDCR, align 4
  %145 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %146 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = trunc i32 %147 to i8
  %149 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %143, i32 %144, i8 zeroext %148)
  br label %155

150:                                              ; preds = %130
  %151 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %152 = load i32, i32* @BA0_MIDWP, align 4
  %153 = load i8, i8* %8, align 1
  %154 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %151, i32 %152, i8 zeroext %153)
  br label %115

155:                                              ; preds = %136, %129, %115
  %156 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %157 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %156, i32 0, i32 1
  %158 = call i32 @spin_unlock(i32* %157)
  br label %159

159:                                              ; preds = %155, %81, %76
  %160 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %161 = load i32, i32* @BA0_HICR, align 4
  %162 = load i8, i8* @HICR_CHGM, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, i8* @HICR_IEV, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %163, %165
  %167 = trunc i32 %166 to i8
  %168 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %160, i32 %161, i8 zeroext %167)
  %169 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %159, %17
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i8 zeroext) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_rawmidi_receive(i32, i8*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
