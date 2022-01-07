; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c__snd_mpu401_uart_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c__snd_mpu401_uart_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mpu401 = type { i32, i32, i32 }

@MPU401_INFO_INPUT = common dso_local global i32 0, align 4
@MPU401_MODE_BIT_INPUT = common dso_local global i32 0, align 4
@MPU401_INFO_TX_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mpu401*)* @_snd_mpu401_uart_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_snd_mpu401_uart_interrupt(%struct.snd_mpu401* %0) #0 {
  %2 = alloca %struct.snd_mpu401*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_mpu401* %0, %struct.snd_mpu401** %2, align 8
  %4 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %5 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MPU401_INFO_INPUT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %12 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %11, i32 0, i32 1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @MPU401_MODE_BIT_INPUT, align 4
  %16 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %17 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %22 = call i32 @snd_mpu401_uart_input_read(%struct.snd_mpu401* %21)
  br label %26

23:                                               ; preds = %10
  %24 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %25 = call i32 @snd_mpu401_uart_clear_rx(%struct.snd_mpu401* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %28 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %27, i32 0, i32 1
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %33 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MPU401_INFO_TX_IRQ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %40 = call i32 @uart_interrupt_tx(%struct.snd_mpu401* %39)
  br label %41

41:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @snd_mpu401_uart_input_read(%struct.snd_mpu401*) #1

declare dso_local i32 @snd_mpu401_uart_clear_rx(%struct.snd_mpu401*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uart_interrupt_tx(%struct.snd_mpu401*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
