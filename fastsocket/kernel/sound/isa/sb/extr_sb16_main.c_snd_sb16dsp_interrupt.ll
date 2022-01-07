; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_main.c_snd_sb16dsp_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_main.c_snd_sb16dsp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 (i32, i32)*, i32 }
%struct.TYPE_2__ = type { i32 }

@SB_DSP4_IRQSTATUS = common dso_local global i32 0, align 4
@SB_IRQTYPE_MPUIN = common dso_local global i8 0, align 1
@SB_IRQTYPE_8BIT = common dso_local global i8 0, align 1
@SB_MODE_PLAYBACK_8 = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE_8 = common dso_local global i32 0, align 4
@SB_DSP_DMA8_OFF = common dso_local global i32 0, align 4
@SB_IRQTYPE_16BIT = common dso_local global i8 0, align 1
@SB_MODE_PLAYBACK_16 = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE_16 = common dso_local global i32 0, align 4
@SB_DSP_DMA16_OFF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sb16dsp_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_sb*
  store %struct.snd_sb* %9, %struct.snd_sb** %5, align 8
  %10 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %11 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %10, i32 0, i32 6
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %14 = load i32, i32* @SB_DSP4_IRQSTATUS, align 4
  %15 = call zeroext i8 @snd_sbmixer_read(%struct.snd_sb* %13, i32 %14)
  store i8 %15, i8* %6, align 1
  %16 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %17 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %16, i32 0, i32 6
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @SB_IRQTYPE_MPUIN, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %27 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %26, i32 0, i32 5
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = icmp ne i32 (i32, i32)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %32 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %31, i32 0, i32 5
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %36 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %33(i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %30, %25, %2
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @SB_IRQTYPE_8BIT, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  %49 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %50 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SB_MODE_PLAYBACK_8, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %57 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_pcm_period_elapsed(i32 %58)
  %60 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %61 = call i32 @snd_sb16_csp_update(%struct.snd_sb* %60)
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %55, %48
  %65 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %66 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SB_MODE_CAPTURE_8, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %73 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snd_pcm_period_elapsed(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %80 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %79, i32 0, i32 1
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %86 = load i32, i32* @SB_DSP_DMA8_OFF, align 4
  %87 = call i32 @snd_sbdsp_command(%struct.snd_sb* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %90 = call i32 @snd_sb_ack_8bit(%struct.snd_sb* %89)
  %91 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %92 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %88, %41
  %95 = load i8, i8* %6, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @SB_IRQTYPE_16BIT, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %147

101:                                              ; preds = %94
  store i32 0, i32* %7, align 4
  %102 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %103 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %110 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @snd_pcm_period_elapsed(i32 %111)
  %113 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %114 = call i32 @snd_sb16_csp_update(%struct.snd_sb* %113)
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %108, %101
  %118 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %119 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SB_MODE_CAPTURE_16, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %126 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @snd_pcm_period_elapsed(i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %133 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %132, i32 0, i32 1
  %134 = call i32 @spin_lock(i32* %133)
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %131
  %138 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %139 = load i32, i32* @SB_DSP_DMA16_OFF, align 4
  %140 = call i32 @snd_sbdsp_command(%struct.snd_sb* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %131
  %142 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %143 = call i32 @snd_sb_ack_16bit(%struct.snd_sb* %142)
  %144 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %145 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %144, i32 0, i32 1
  %146 = call i32 @spin_unlock(i32* %145)
  br label %147

147:                                              ; preds = %141, %94
  %148 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %148
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @snd_sb16_csp_update(%struct.snd_sb*) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_sb_ack_8bit(%struct.snd_sb*) #1

declare dso_local i32 @snd_sb_ack_16bit(%struct.snd_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
