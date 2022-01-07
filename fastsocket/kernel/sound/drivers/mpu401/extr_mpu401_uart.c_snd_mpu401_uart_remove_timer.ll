; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_remove_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_remove_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mpu401 = type { i32, i32, i32 }

@MPU401_MODE_INPUT_TIMER = common dso_local global i32 0, align 4
@MPU401_MODE_OUTPUT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mpu401*, i32)* @snd_mpu401_uart_remove_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_remove_timer(%struct.snd_mpu401* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mpu401*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_mpu401* %0, %struct.snd_mpu401** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %7 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %11 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @MPU401_MODE_INPUT_TIMER, align 4
  %19 = xor i32 %18, -1
  br label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @MPU401_MODE_OUTPUT_TIMER, align 4
  %22 = xor i32 %21, -1
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %25 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %26 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %30 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %35 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %34, i32 0, i32 2
  %36 = call i32 @del_timer(i32* %35)
  br label %37

37:                                               ; preds = %33, %23
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %40 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %39, i32 0, i32 1
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
