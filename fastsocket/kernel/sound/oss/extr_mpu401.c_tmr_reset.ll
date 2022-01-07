; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_tmr_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_tmr_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i32 }

@next_event_time = common dso_local global i64 0, align 8
@prev_event_time = common dso_local global i64 0, align 8
@curr_clocks = common dso_local global i64 0, align 8
@curr_ticks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpu_config*)* @tmr_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmr_reset(%struct.mpu_config* %0) #0 {
  %2 = alloca %struct.mpu_config*, align 8
  %3 = alloca i64, align 8
  store %struct.mpu_config* %0, %struct.mpu_config** %2, align 8
  %4 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %5 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  store i64 -1, i64* @next_event_time, align 8
  store i64 0, i64* @prev_event_time, align 8
  store i64 0, i64* @curr_clocks, align 8
  store i64 0, i64* @curr_ticks, align 8
  %8 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %9 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %8, i32 0, i32 0
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_unlock_irqrestore(i32* %9, i64 %10)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
