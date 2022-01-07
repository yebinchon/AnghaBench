; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64* }
%struct.TYPE_2__ = type { i32 }

@OXYGEN_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@OXYGEN_CHANNEL_A = common dso_local global i32 0, align 4
@OXYGEN_CHANNEL_B = common dso_local global i32 0, align 4
@OXYGEN_CHANNEL_C = common dso_local global i32 0, align 4
@OXYGEN_CHANNEL_SPDIF = common dso_local global i32 0, align 4
@OXYGEN_CHANNEL_MULTICH = common dso_local global i32 0, align 4
@OXYGEN_CHANNEL_AC97 = common dso_local global i32 0, align 4
@OXYGEN_INT_SPDIF_IN_DETECT = common dso_local global i32 0, align 4
@OXYGEN_INT_GPIO = common dso_local global i32 0, align 4
@OXYGEN_INT_AC97 = common dso_local global i32 0, align 4
@OXYGEN_INTERRUPT_MASK = common dso_local global i32 0, align 4
@PCM_COUNT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_SENSE_INT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_LOCK_INT = common dso_local global i32 0, align 4
@OXYGEN_SPDIF_RATE_INT = common dso_local global i32 0, align 4
@OXYGEN_INT_MIDI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @oxygen_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.oxygen*
  store %struct.oxygen* %12, %struct.oxygen** %6, align 8
  %13 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %14 = load i32, i32* @OXYGEN_INTERRUPT_STATUS, align 4
  %15 = call i32 @oxygen_read16(%struct.oxygen* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %187

20:                                               ; preds = %2
  %21 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %22 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %21, i32 0, i32 5
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @OXYGEN_CHANNEL_A, align 4
  %26 = load i32, i32* @OXYGEN_CHANNEL_B, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @OXYGEN_CHANNEL_C, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @OXYGEN_CHANNEL_SPDIF, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @OXYGEN_CHANNEL_MULTICH, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @OXYGEN_CHANNEL_AC97, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @OXYGEN_INT_SPDIF_IN_DETECT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @OXYGEN_INT_GPIO, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @OXYGEN_INT_AC97, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %24, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %20
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @OXYGEN_INT_SPDIF_IN_DETECT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @OXYGEN_INT_SPDIF_IN_DETECT, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %54 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %59 = load i32, i32* @OXYGEN_INTERRUPT_MASK, align 4
  %60 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %61 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @oxygen_write16(%struct.oxygen* %58, i32 %59, i32 %65)
  %67 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %68 = load i32, i32* @OXYGEN_INTERRUPT_MASK, align 4
  %69 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %70 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @oxygen_write16(%struct.oxygen* %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %57, %20
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %76 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %80 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %79, i32 0, i32 5
  %81 = call i32 @spin_unlock(i32* %80)
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %111, %73
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @PCM_COUNT, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %94 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %93, i32 0, i32 7
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %103 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %102, i32 0, i32 7
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @snd_pcm_period_elapsed(i64 %108)
  br label %110

110:                                              ; preds = %101, %92, %86
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %82

114:                                              ; preds = %82
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @OXYGEN_INT_SPDIF_IN_DETECT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %114
  %120 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %121 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %120, i32 0, i32 5
  %122 = call i32 @spin_lock(i32* %121)
  %123 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %124 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %125 = call i32 @oxygen_read32(%struct.oxygen* %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @OXYGEN_SPDIF_SENSE_INT, align 4
  %128 = load i32, i32* @OXYGEN_SPDIF_LOCK_INT, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @OXYGEN_SPDIF_RATE_INT, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %126, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %119
  %135 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %136 = load i32, i32* @OXYGEN_SPDIF_CONTROL, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @oxygen_write32(%struct.oxygen* %135, i32 %136, i32 %137)
  %139 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %140 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %139, i32 0, i32 6
  %141 = call i32 @schedule_work(i32* %140)
  br label %142

142:                                              ; preds = %134, %119
  %143 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %144 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %143, i32 0, i32 5
  %145 = call i32 @spin_unlock(i32* %144)
  br label %146

146:                                              ; preds = %142, %114
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @OXYGEN_INT_GPIO, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %153 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %152, i32 0, i32 4
  %154 = call i32 @schedule_work(i32* %153)
  br label %155

155:                                              ; preds = %151, %146
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @OXYGEN_INT_MIDI, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %155
  %161 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %162 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %161, i32 0, i32 3
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = icmp ne %struct.TYPE_2__* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %167 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %166, i32 0, i32 3
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @snd_mpu401_uart_interrupt(i32 0, i32 %170)
  br label %175

172:                                              ; preds = %160
  %173 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %174 = call i32 @oxygen_read_uart(%struct.oxygen* %173)
  br label %175

175:                                              ; preds = %172, %165
  br label %176

176:                                              ; preds = %175, %155
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @OXYGEN_INT_AC97, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %183 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %182, i32 0, i32 2
  %184 = call i32 @wake_up(i32* %183)
  br label %185

185:                                              ; preds = %181, %176
  %186 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %18
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @oxygen_read16(%struct.oxygen*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @oxygen_read32(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_write32(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @oxygen_read_uart(%struct.oxygen*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
