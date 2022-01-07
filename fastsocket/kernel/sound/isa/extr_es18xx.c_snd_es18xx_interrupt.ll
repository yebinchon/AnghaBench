; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es18xx = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i64, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ES18XX_CONTROL = common dso_local global i32 0, align 4
@AUDIO2_IRQ = common dso_local global i8 0, align 1
@DAC2 = common dso_local global i32 0, align 4
@AUDIO1_IRQ = common dso_local global i8 0, align 1
@ADC1 = common dso_local global i32 0, align 4
@DAC1 = common dso_local global i32 0, align 4
@MPU_IRQ = common dso_local global i8 0, align 1
@HWV_IRQ = common dso_local global i8 0, align 1
@ES18XX_HWV = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_es18xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_es18xx*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_es18xx*
  store %struct.snd_es18xx* %9, %struct.snd_es18xx** %5, align 8
  %10 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %11 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ES18XX_CONTROL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %18 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 6
  %21 = call i32 @inb(i64 %20)
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %25 = call i32 @snd_es18xx_mixer_read(%struct.snd_es18xx* %24, i32 127)
  %26 = ashr i32 %25, 4
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %6, align 1
  br label %28

28:                                               ; preds = %23, %16
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @AUDIO2_IRQ, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %37 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DAC2, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %44 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @snd_pcm_period_elapsed(i32 %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %49 = call i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx* %48, i32 122, i32 128, i32 0)
  br label %50

50:                                               ; preds = %47, %28
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @AUDIO1_IRQ, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %50
  %58 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %59 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ADC1, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %66 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snd_pcm_period_elapsed(i32 %67)
  br label %82

69:                                               ; preds = %57
  %70 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %71 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DAC1, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %78 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @snd_pcm_period_elapsed(i32 %79)
  br label %81

81:                                               ; preds = %76, %69
  br label %82

82:                                               ; preds = %81, %64
  %83 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %84 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 14
  %87 = call i32 @inb(i64 %86)
  br label %88

88:                                               ; preds = %82, %50
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @MPU_IRQ, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %97 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %96, i32 0, i32 7
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = icmp ne %struct.TYPE_6__* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %103 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %102, i32 0, i32 7
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @snd_mpu401_uart_interrupt(i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %100, %95, %88
  %109 = load i8, i8* %6, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @HWV_IRQ, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %169

115:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  %116 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %117 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ES18XX_HWV, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %115
  %123 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %124 = call i32 @snd_es18xx_mixer_read(%struct.snd_es18xx* %123, i32 100)
  %125 = and i32 %124, 128
  store i32 %125, i32* %7, align 4
  %126 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %127 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %130 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %131 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %130, i32 0, i32 6
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = call i32 @snd_ctl_notify(i32 %128, i32 %129, i32* %133)
  %135 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %136 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %139 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %140 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %139, i32 0, i32 5
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = call i32 @snd_ctl_notify(i32 %137, i32 %138, i32* %142)
  br label %144

144:                                              ; preds = %122, %115
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %144
  %148 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %149 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %152 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %153 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %152, i32 0, i32 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = call i32 @snd_ctl_notify(i32 %150, i32 %151, i32* %155)
  %157 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %158 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %161 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %162 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %161, i32 0, i32 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = call i32 @snd_ctl_notify(i32 %159, i32 %160, i32* %164)
  br label %166

166:                                              ; preds = %147, %144
  %167 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %168 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %167, i32 102, i32 0)
  br label %169

169:                                              ; preds = %166, %108
  %170 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %170
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @snd_es18xx_mixer_read(%struct.snd_es18xx*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx*, i32, i32, i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @snd_es18xx_mixer_write(%struct.snd_es18xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
