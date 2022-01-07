; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_timer1_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_timer1_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.snd_opl3 = type { i8, i32, i32 (%struct.snd_opl3*, i32, i8)* }

@OPL3_TIMER1_START = common dso_local global i8 0, align 1
@OPL3_TIMER1_MASK = common dso_local global i8 0, align 1
@OPL3_LEFT = common dso_local global i32 0, align 4
@OPL3_REG_TIMER1 = common dso_local global i32 0, align 4
@OPL3_REG_TIMER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_opl3_timer1_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_timer1_start(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_opl3*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %7 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %8 = call %struct.snd_opl3* @snd_timer_chip(%struct.snd_timer* %7)
  store %struct.snd_opl3* %8, %struct.snd_opl3** %6, align 8
  %9 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %10 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %9, i32 0, i32 1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %14 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %17 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @OPL3_TIMER1_START, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i8, i8* @OPL3_TIMER1_MASK, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  %28 = load i8, i8* %4, align 1
  %29 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %30 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %29, i32 0, i32 0
  store i8 %28, i8* %30, align 8
  %31 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %32 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %31, i32 0, i32 2
  %33 = load i32 (%struct.snd_opl3*, i32, i8)*, i32 (%struct.snd_opl3*, i32, i8)** %32, align 8
  %34 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %35 = load i32, i32* @OPL3_LEFT, align 4
  %36 = load i32, i32* @OPL3_REG_TIMER1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = sub i32 256, %38
  %40 = trunc i32 %39 to i8
  %41 = call i32 %33(%struct.snd_opl3* %34, i32 %37, i8 zeroext %40)
  %42 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %43 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %42, i32 0, i32 2
  %44 = load i32 (%struct.snd_opl3*, i32, i8)*, i32 (%struct.snd_opl3*, i32, i8)** %43, align 8
  %45 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %46 = load i32, i32* @OPL3_LEFT, align 4
  %47 = load i32, i32* @OPL3_REG_TIMER_CONTROL, align 4
  %48 = or i32 %46, %47
  %49 = load i8, i8* %4, align 1
  %50 = call i32 %44(%struct.snd_opl3* %45, i32 %48, i8 zeroext %49)
  %51 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %52 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %51, i32 0, i32 1
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
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
