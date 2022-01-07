; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_10__, i64, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SNDRV_GF1_GB_RESET = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_ALL = common dso_local global i32 0, align 4
@SNDRV_GF1_HANDLER_VOICE = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_GLOBAL_MODE = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_MEMORY_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_VOICES_IRQ = common dso_local global i32 0, align 4
@GF1PAGE = common dso_local global i32 0, align 4
@MIXCNTRLREG = common dso_local global i32 0, align 4
@SNDRV_GF1_GW_FIFO_PLAY_BASE_ADDR = common dso_local global i32 0, align 4
@SNDRV_GF1_GW_FIFO_RECORD_BASE_ADDR = common dso_local global i32 0, align 4
@SNDRV_GF1_GW_FIFO_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_start(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %5 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %6 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %7 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %5, i32 %6, i32 0)
  %8 = call i32 @udelay(i32 160)
  %9 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %10 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %11 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %9, i32 %10, i32 1)
  %12 = call i32 @udelay(i32 160)
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %14 = load i32, i32* @SNDRV_GF1_GB_JOYSTICK_DAC_LEVEL, align 4
  %15 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %16 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %13, i32 %14, i32 %17)
  %19 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %20 = load i32, i32* @SNDRV_GF1_HANDLER_ALL, align 4
  %21 = call i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card* %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %40, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %28 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %26, i32* %34, align 4
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %36 = load i32, i32* @SNDRV_GF1_HANDLER_VOICE, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card* %35, i32 %38)
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %22

43:                                               ; preds = %22
  %44 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %45 = call i32 @snd_gf1_uart_cmd(%struct.snd_gus_card* %44, i32 3)
  %46 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %47 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %53 = load i32, i32* @SNDRV_GF1_GB_GLOBAL_MODE, align 4
  %54 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %55 = load i32, i32* @SNDRV_GF1_GB_GLOBAL_MODE, align 4
  %56 = call i32 @snd_gf1_i_look8(%struct.snd_gus_card* %54, i32 %55)
  %57 = or i32 %56, 1
  %58 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %52, i32 %53, i32 %57)
  %59 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %60 = load i32, i32* @SNDRV_GF1_GB_MEMORY_CONTROL, align 4
  %61 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %51, %43
  %63 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %64 = call i32 @snd_gf1_clear_regs(%struct.snd_gus_card* %63)
  %65 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %66 = call i32 @snd_gf1_select_active_voices(%struct.snd_gus_card* %65)
  %67 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %68 = call i32 @snd_gf1_delay(%struct.snd_gus_card* %67)
  %69 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %70 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 504
  %76 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %77 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %80 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %62
  %85 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %86 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %92 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %95 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1024
  store i32 %98, i32* %96, align 8
  br label %103

99:                                               ; preds = %84, %62
  %100 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %101 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %90
  %104 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %105 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %122, %109
  %111 = load i32, i32* %4, align 4
  %112 = icmp ult i32 %111, 4
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %115 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %116 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = add i32 %118, %119
  %121 = call i32 @snd_gf1_poke(%struct.snd_gus_card* %114, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %4, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %110

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %103
  %127 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %128 = call i32 @snd_gf1_clear_regs(%struct.snd_gus_card* %127)
  %129 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %130 = call i32 @snd_gf1_clear_voices(%struct.snd_gus_card* %129, i32 0, i32 31)
  %131 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %132 = call i32 @snd_gf1_look_regs(%struct.snd_gus_card* %131)
  %133 = call i32 @udelay(i32 160)
  %134 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %135 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %136 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %134, i32 %135, i32 7)
  %137 = call i32 @udelay(i32 160)
  %138 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %139 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %140 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %138, i32 %139, i32 7)
  %141 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %142 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %126
  %147 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %148 = load i32, i32* @SNDRV_GF1_GB_GLOBAL_MODE, align 4
  %149 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %150 = load i32, i32* @SNDRV_GF1_GB_GLOBAL_MODE, align 4
  %151 = call i32 @snd_gf1_i_look8(%struct.snd_gus_card* %149, i32 %150)
  %152 = or i32 %151, 1
  %153 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %147, i32 %148, i32 %152)
  %154 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %155 = load i32, i32* @SNDRV_GF1_GB_MEMORY_CONTROL, align 4
  %156 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %154, i32 %155, i32 1)
  br label %157

157:                                              ; preds = %146, %126
  br label %158

158:                                              ; preds = %164, %157
  %159 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %160 = load i32, i32* @SNDRV_GF1_GB_VOICES_IRQ, align 4
  %161 = call i32 @snd_gf1_i_read8(%struct.snd_gus_card* %159, i32 %160)
  %162 = and i32 %161, 192
  %163 = icmp ne i32 %162, 192
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %158

165:                                              ; preds = %158
  %166 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %167 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %166, i32 0, i32 3
  %168 = load i64, i64* %3, align 8
  %169 = call i32 @spin_lock_irqsave(i32* %167, i64 %168)
  %170 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %171 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  store i64 0, i64* %172, align 8
  %173 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %174 = load i32, i32* @GF1PAGE, align 4
  %175 = call i32 @GUSP(%struct.snd_gus_card* %173, i32 %174)
  %176 = call i32 @outb(i64 0, i32 %175)
  %177 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %178 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %181 = load i32, i32* @MIXCNTRLREG, align 4
  %182 = call i32 @GUSP(%struct.snd_gus_card* %180, i32 %181)
  %183 = call i32 @outb(i64 %179, i32 %182)
  %184 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %185 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %184, i32 0, i32 3
  %186 = load i64, i64* %3, align 8
  %187 = call i32 @spin_unlock_irqrestore(i32* %185, i64 %186)
  %188 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %189 = call i32 @snd_gf1_timers_init(%struct.snd_gus_card* %188)
  %190 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %191 = call i32 @snd_gf1_look_regs(%struct.snd_gus_card* %190)
  %192 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %193 = call i32 @snd_gf1_mem_init(%struct.snd_gus_card* %192)
  %194 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %195 = call i32 @snd_gf1_mem_proc_init(%struct.snd_gus_card* %194)
  ret i32 0
}

declare dso_local i32 @snd_gf1_i_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_uart_cmd(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_i_look8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_clear_regs(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gf1_select_active_voices(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gf1_delay(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gf1_poke(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_clear_voices(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_look_regs(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gf1_i_read8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @GUSP(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_gf1_timers_init(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gf1_mem_init(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gf1_mem_proc_init(%struct.snd_gus_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
