; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_input_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_mpu401* }
%struct.snd_mpu401 = type { i64, i32, i32, i32 (%struct.snd_mpu401*, i32)* }

@MPU401_MODE_BIT_INPUT_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_mpu401_uart_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_mpu401*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 64, i32* %7, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_mpu401*, %struct.snd_mpu401** %11, align 8
  store %struct.snd_mpu401* %12, %struct.snd_mpu401** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %2
  %16 = load i32, i32* @MPU401_MODE_BIT_INPUT_TRIGGER, align 4
  %17 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %18 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %17, i32 0, i32 1
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %28 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %27, i32 0, i32 3
  %29 = load i32 (%struct.snd_mpu401*, i32)*, i32 (%struct.snd_mpu401*, i32)** %28, align 8
  %30 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %31 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %32 = call i32 @MPU401D(%struct.snd_mpu401* %31)
  %33 = call i32 %29(%struct.snd_mpu401* %30, i32 %32)
  br label %22

34:                                               ; preds = %22
  %35 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %36 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %41 = call i32 @snd_mpu401_uart_add_timer(%struct.snd_mpu401* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %15
  %44 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %45 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %44, i32 0, i32 2
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %49 = call i32 @snd_mpu401_uart_input_read(%struct.snd_mpu401* %48)
  %50 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %51 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %50, i32 0, i32 2
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %67

54:                                               ; preds = %2
  %55 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %56 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %61 = call i32 @snd_mpu401_uart_remove_timer(%struct.snd_mpu401* %60, i32 1)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* @MPU401_MODE_BIT_INPUT_TRIGGER, align 4
  %64 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %65 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %64, i32 0, i32 1
  %66 = call i32 @clear_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %43
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @MPU401D(%struct.snd_mpu401*) #1

declare dso_local i32 @snd_mpu401_uart_add_timer(%struct.snd_mpu401*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_mpu401_uart_input_read(%struct.snd_mpu401*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_mpu401_uart_remove_timer(%struct.snd_mpu401*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
