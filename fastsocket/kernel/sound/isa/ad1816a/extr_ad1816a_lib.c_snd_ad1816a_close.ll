; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i32, i32 }

@AD1816A_MODE_OPEN = common dso_local global i32 0, align 4
@AD1816A_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@AD1816A_PLAYBACK_IRQ_PENDING = common dso_local global i32 0, align 4
@AD1816A_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@AD1816A_PLAYBACK_IRQ_ENABLE = common dso_local global i32 0, align 4
@AD1816A_CAPTURE_IRQ_PENDING = common dso_local global i32 0, align 4
@AD1816A_CAPTURE_IRQ_ENABLE = common dso_local global i32 0, align 4
@AD1816A_TIMER_IRQ_PENDING = common dso_local global i32 0, align 4
@AD1816A_TIMER_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ad1816a*, i32)* @snd_ad1816a_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ad1816a_close(%struct.snd_ad1816a* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ad1816a*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* @AD1816A_MODE_OPEN, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  switch i32 %12, label %40 [
    i32 129, label %13
    i32 130, label %22
    i32 128, label %31
  ]

13:                                               ; preds = %2
  %14 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %15 = load i32, i32* @AD1816A_INTERRUPT_STATUS, align 4
  %16 = load i32, i32* @AD1816A_PLAYBACK_IRQ_PENDING, align 4
  %17 = call i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a* %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %19 = load i32, i32* @AD1816A_INTERRUPT_ENABLE, align 4
  %20 = load i32, i32* @AD1816A_PLAYBACK_IRQ_ENABLE, align 4
  %21 = call i32 @snd_ad1816a_write_mask(%struct.snd_ad1816a* %18, i32 %19, i32 %20, i32 0)
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %24 = load i32, i32* @AD1816A_INTERRUPT_STATUS, align 4
  %25 = load i32, i32* @AD1816A_CAPTURE_IRQ_PENDING, align 4
  %26 = call i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %28 = load i32, i32* @AD1816A_INTERRUPT_ENABLE, align 4
  %29 = load i32, i32* @AD1816A_CAPTURE_IRQ_ENABLE, align 4
  %30 = call i32 @snd_ad1816a_write_mask(%struct.snd_ad1816a* %27, i32 %28, i32 %29, i32 0)
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %33 = load i32, i32* @AD1816A_INTERRUPT_STATUS, align 4
  %34 = load i32, i32* @AD1816A_TIMER_IRQ_PENDING, align 4
  %35 = call i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %37 = load i32, i32* @AD1816A_INTERRUPT_ENABLE, align 4
  %38 = load i32, i32* @AD1816A_TIMER_IRQ_ENABLE, align 4
  %39 = call i32 @snd_ad1816a_write_mask(%struct.snd_ad1816a* %36, i32 %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %31, %2, %22, %13
  %41 = load i32, i32* %4, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @AD1816A_MODE_OPEN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %52 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %40
  %54 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %55 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %54, i32 0, i32 1
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a*, i32, i32, i32) #1

declare dso_local i32 @snd_ad1816a_write_mask(%struct.snd_ad1816a*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
