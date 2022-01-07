; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_timer_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_timer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mpu_config = type { i32 }

@sound_timer_devs = common dso_local global %struct.TYPE_2__** null, align 8
@dev_conf = common dso_local global %struct.mpu_config* null, align 8
@timer_open = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@curr_tempo = common dso_local global i32 0, align 4
@hw_timebase = common dso_local global i32 0, align 4
@curr_timebase = common dso_local global i32 0, align 4
@metronome_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mpu_timer_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu_timer_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpu_config*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @sound_timer_devs, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mpu_config*, %struct.mpu_config** @dev_conf, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %15, i64 %17
  store %struct.mpu_config* %18, %struct.mpu_config** %7, align 8
  %19 = load i32, i32* @timer_open, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.mpu_config*, %struct.mpu_config** %7, align 8
  %26 = call i32 @tmr_reset(%struct.mpu_config* %25)
  store i32 50, i32* @curr_tempo, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mpu_cmd(i32 %27, i32 224, i32 50)
  store i32 120, i32* @hw_timebase, align 4
  store i32 120, i32* @curr_timebase, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @set_timebase(i32 %29, i32 120)
  store i32 1, i32* @timer_open, align 4
  store i64 0, i64* @metronome_mode, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @set_timer_mode(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mpu_cmd(i32 %33, i32 231, i32 4)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mpu_cmd(i32 %35, i32 149, i32 0)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @tmr_reset(%struct.mpu_config*) #1

declare dso_local i32 @mpu_cmd(i32, i32, i32) #1

declare dso_local i32 @set_timebase(i32, i32) #1

declare dso_local i32 @set_timer_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
