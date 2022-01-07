; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_timer2_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_timer2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.snd_opl3 = type { i8, i32, i32 (%struct.snd_opl3*, i32, i8)* }

@OPL3_TIMER2_MASK = common dso_local global i8 0, align 1
@OPL3_TIMER2_START = common dso_local global i8 0, align 1
@OPL3_LEFT = common dso_local global i32 0, align 4
@OPL3_REG_TIMER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_opl3_timer2_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_timer2_stop(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.snd_opl3*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %6 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %7 = call %struct.snd_opl3* @snd_timer_chip(%struct.snd_timer* %6)
  store %struct.snd_opl3* %7, %struct.snd_opl3** %5, align 8
  %8 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %9 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %8, i32 0, i32 1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %13 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @OPL3_TIMER2_MASK, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i8, i8* @OPL3_TIMER2_START, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* %4, align 1
  %25 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %26 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %25, i32 0, i32 0
  store i8 %24, i8* %26, align 8
  %27 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %28 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %27, i32 0, i32 2
  %29 = load i32 (%struct.snd_opl3*, i32, i8)*, i32 (%struct.snd_opl3*, i32, i8)** %28, align 8
  %30 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %31 = load i32, i32* @OPL3_LEFT, align 4
  %32 = load i32, i32* @OPL3_REG_TIMER_CONTROL, align 4
  %33 = or i32 %31, %32
  %34 = load i8, i8* %4, align 1
  %35 = call i32 %29(%struct.snd_opl3* %30, i32 %33, i8 zeroext %34)
  %36 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %37 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %36, i32 0, i32 1
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret i32 0
}

declare dso_local %struct.snd_opl3* @snd_timer_chip(%struct.snd_timer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
