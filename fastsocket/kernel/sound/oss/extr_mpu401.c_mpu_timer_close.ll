; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_timer_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_timer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sound_timer_devs = common dso_local global %struct.TYPE_2__** null, align 8
@tmr_running = common dso_local global i64 0, align 8
@timer_open = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mpu_timer_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu_timer_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sound_timer_devs, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %4, i64 %6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  store i64 0, i64* @tmr_running, align 8
  store i64 0, i64* @timer_open, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mpu_cmd(i32 %11, i32 21, i32 0)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mpu_cmd(i32 %13, i32 148, i32 0)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @mpu_cmd(i32 %15, i32 140, i32 0)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @stop_metronome(i32 %17)
  ret void
}

declare dso_local i32 @mpu_cmd(i32, i32, i32) #1

declare dso_local i32 @stop_metronome(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
