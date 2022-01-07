; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_output_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mpu401 = type { i32, i32 (%struct.snd_mpu401*, i8, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mpu401*)* @snd_mpu401_uart_output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_output_write(%struct.snd_mpu401* %0) #0 {
  %2 = alloca %struct.snd_mpu401*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.snd_mpu401* %0, %struct.snd_mpu401** %2, align 8
  store i32 256, i32* %4, align 4
  br label %5

5:                                                ; preds = %37, %1
  %6 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %7 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @snd_rawmidi_transmit_peek(i32 %8, i8* %3, i32 1)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %13 = call i32 @snd_mpu401_output_ready(%struct.snd_mpu401* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %17 = call i32 @snd_mpu401_output_ready(%struct.snd_mpu401* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %41

20:                                               ; preds = %15, %11
  %21 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %22 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %21, i32 0, i32 1
  %23 = load i32 (%struct.snd_mpu401*, i8, i32)*, i32 (%struct.snd_mpu401*, i8, i32)** %22, align 8
  %24 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %25 = load i8, i8* %3, align 1
  %26 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %27 = call i32 @MPU401D(%struct.snd_mpu401* %26)
  %28 = call i32 %23(%struct.snd_mpu401* %24, i8 zeroext %25, i32 %27)
  %29 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %30 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snd_rawmidi_transmit_ack(i32 %31, i32 1)
  br label %36

33:                                               ; preds = %5
  %34 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %35 = call i32 @snd_mpu401_uart_remove_timer(%struct.snd_mpu401* %34, i32 0)
  br label %41

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %5, label %41

41:                                               ; preds = %37, %33, %19
  ret void
}

declare dso_local i32 @snd_rawmidi_transmit_peek(i32, i8*, i32) #1

declare dso_local i32 @snd_mpu401_output_ready(%struct.snd_mpu401*) #1

declare dso_local i32 @MPU401D(%struct.snd_mpu401*) #1

declare dso_local i32 @snd_rawmidi_transmit_ack(i32, i32) #1

declare dso_local i32 @snd_mpu401_uart_remove_timer(%struct.snd_mpu401*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
