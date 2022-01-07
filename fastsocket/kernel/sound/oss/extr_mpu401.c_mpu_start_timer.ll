; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_start_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i32 }

@dev_conf = common dso_local global %struct.mpu_config* null, align 8
@tmr_running = common dso_local global i32 0, align 4
@TIMER_NOT_ARMED = common dso_local global i32 0, align 4
@timer_mode = common dso_local global i32 0, align 4
@TMR_INTERNAL = common dso_local global i32 0, align 4
@TIMER_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpu_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu_start_timer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpu_config*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.mpu_config*, %struct.mpu_config** @dev_conf, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %5, i64 %7
  store %struct.mpu_config* %8, %struct.mpu_config** %4, align 8
  %9 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %10 = call i32 @tmr_reset(%struct.mpu_config* %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @set_timer_mode(i32 %11)
  %13 = load i32, i32* @tmr_running, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TIMER_NOT_ARMED, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load i32, i32* @timer_mode, align 4
  %19 = load i32, i32* @TMR_INTERNAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @mpu_cmd(i32 %23, i32 2, i32 0)
  store i32 1, i32* @tmr_running, align 4
  %25 = load i32, i32* @TIMER_NOT_ARMED, align 4
  store i32 %25, i32* %2, align 4
  br label %37

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mpu_cmd(i32 %27, i32 53, i32 0)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @mpu_cmd(i32 %29, i32 56, i32 0)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @mpu_cmd(i32 %31, i32 57, i32 0)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @mpu_cmd(i32 %33, i32 151, i32 0)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @TIMER_ARMED, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %22, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @tmr_reset(%struct.mpu_config*) #1

declare dso_local i32 @set_timer_mode(i32) #1

declare dso_local i32 @mpu_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
