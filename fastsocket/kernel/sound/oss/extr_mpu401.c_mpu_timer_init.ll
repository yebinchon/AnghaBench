; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@dev_conf = common dso_local global %struct.mpu_config* null, align 8
@timer_initialized = common dso_local global i32 0, align 4
@mpu_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@sound_timer_devs = common dso_local global %struct.TYPE_3__** null, align 8
@TMR_INTERNAL = common dso_local global i32 0, align 4
@TMR_EXTERNAL = common dso_local global i32 0, align 4
@TMR_MODE_FSK = common dso_local global i32 0, align 4
@TMR_MODE_MIDI = common dso_local global i32 0, align 4
@timer_caps = common dso_local global i32 0, align 4
@TMR_MODE_CLS = common dso_local global i32 0, align 4
@max_timebase = common dso_local global i32 0, align 4
@timer_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpu_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu_timer_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpu_config*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.mpu_config*, %struct.mpu_config** @dev_conf, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %6, i64 %8
  store %struct.mpu_config* %9, %struct.mpu_config** %4, align 8
  %10 = load i32, i32* @timer_initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %77

13:                                               ; preds = %1
  store i32 1, i32* @timer_initialized, align 4
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mpu_timer, i32 0, i32 0), align 4
  %15 = load %struct.mpu_config*, %struct.mpu_config** @dev_conf, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %15, i64 %17
  %19 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = call i32 (...) @sound_alloc_timerdev()
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sound_timer_devs, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  store %struct.TYPE_3__* @mpu_timer, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %30 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i32, i32* @TMR_INTERNAL, align 4
  %35 = load i32, i32* @TMR_EXTERNAL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @TMR_MODE_FSK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TMR_MODE_MIDI, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* @timer_caps, align 4
  br label %70

41:                                               ; preds = %24
  %42 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %43 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @TMR_EXTERNAL, align 4
  %48 = load i32, i32* @TMR_MODE_MIDI, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @timer_caps, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @timer_caps, align 4
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %54 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @TMR_MODE_CLS, align 4
  %60 = load i32, i32* @timer_caps, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @timer_caps, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %64 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 64
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 10, i32* @max_timebase, align 4
  br label %69

69:                                               ; preds = %68, %62
  br label %70

70:                                               ; preds = %69, %33
  %71 = load i32, i32* @TMR_INTERNAL, align 4
  %72 = load i32, i32* @TMR_MODE_MIDI, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @timer_caps, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* @timer_mode, align 4
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %70, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @sound_alloc_timerdev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
