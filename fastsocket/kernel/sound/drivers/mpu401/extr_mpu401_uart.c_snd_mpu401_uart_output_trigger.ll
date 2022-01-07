; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_mpu401* }
%struct.snd_mpu401 = type { i32, i32, i32 }

@MPU401_MODE_BIT_OUTPUT_TRIGGER = common dso_local global i32 0, align 4
@MPU401_INFO_TX_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_mpu401_uart_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_mpu401*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_mpu401*, %struct.snd_mpu401** %10, align 8
  store %struct.snd_mpu401* %11, %struct.snd_mpu401** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load i32, i32* @MPU401_MODE_BIT_OUTPUT_TRIGGER, align 4
  %16 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %17 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %20 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MPU401_INFO_TX_IRQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %27 = call i32 @snd_mpu401_uart_add_timer(%struct.snd_mpu401* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %14
  %29 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %30 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %29, i32 0, i32 2
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %34 = call i32 @snd_mpu401_uart_output_write(%struct.snd_mpu401* %33)
  %35 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %36 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %35, i32 0, i32 2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %54

39:                                               ; preds = %2
  %40 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %41 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MPU401_INFO_TX_IRQ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %48 = call i32 @snd_mpu401_uart_remove_timer(%struct.snd_mpu401* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32, i32* @MPU401_MODE_BIT_OUTPUT_TRIGGER, align 4
  %51 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %52 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %51, i32 0, i32 1
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %28
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @snd_mpu401_uart_add_timer(%struct.snd_mpu401*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_mpu401_uart_output_write(%struct.snd_mpu401*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_mpu401_uart_remove_timer(%struct.snd_mpu401*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
