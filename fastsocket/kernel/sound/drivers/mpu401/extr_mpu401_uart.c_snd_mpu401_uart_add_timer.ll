; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_add_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mpu401 = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@snd_mpu401_uart_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MPU401_MODE_INPUT_TIMER = common dso_local global i32 0, align 4
@MPU401_MODE_OUTPUT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mpu401*, i32)* @snd_mpu401_uart_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_add_timer(%struct.snd_mpu401* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mpu401*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_mpu401* %0, %struct.snd_mpu401** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %7 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %11 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %16 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %15, i32 0, i32 2
  %17 = call i32 @init_timer(%struct.TYPE_3__* %16)
  %18 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %19 = ptrtoint %struct.snd_mpu401* %18 to i64
  %20 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %21 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load i32, i32* @snd_mpu401_uart_timer, align 4
  %24 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %25 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load i64, i64* @jiffies, align 8
  %28 = add nsw i64 1, %27
  %29 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %30 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i64 %28, i64* %31, align 8
  %32 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %33 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %32, i32 0, i32 2
  %34 = call i32 @add_timer(%struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %14, %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @MPU401_MODE_INPUT_TIMER, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @MPU401_MODE_OUTPUT_TIMER, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %45 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %49 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %48, i32 0, i32 0
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
