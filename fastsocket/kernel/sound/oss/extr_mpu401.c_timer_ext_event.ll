; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_timer_ext_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_timer_ext_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"<MIDI clk>\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Ext MIDI start\0A\00", align 1
@tmr_running = common dso_local global i32 0, align 4
@timer_mode = common dso_local global i32 0, align 4
@TMR_EXTERNAL = common dso_local global i32 0, align 4
@next_event_time = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Ext MIDI stop\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Ext MIDI continue\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Songpos: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpu_config*, i32, i32)* @timer_ext_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_ext_event(%struct.mpu_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mpu_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mpu_config* %0, %struct.mpu_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %9 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %12 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %72

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %72 [
    i32 132, label %18
    i32 129, label %20
    i32 128, label %36
    i32 131, label %48
    i32 130, label %60
  ]

18:                                               ; preds = %16
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %72

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @tmr_running, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @timer_mode, align 4
  %26 = load i32, i32* @TMR_EXTERNAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  store i32 1, i32* @tmr_running, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @setup_metronome(i32 %30)
  store i32 0, i32* @next_event_time, align 4
  %32 = call i32 (...) @SEQ_START_TIMER()
  %33 = call i32 @STORE(i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %20
  br label %72

36:                                               ; preds = %16
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @timer_mode, align 4
  %39 = load i32, i32* @TMR_EXTERNAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  store i32 0, i32* @tmr_running, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @stop_metronome(i32 %43)
  %45 = call i32 (...) @SEQ_STOP_TIMER()
  %46 = call i32 @STORE(i32 %45)
  br label %47

47:                                               ; preds = %42, %36
  br label %72

48:                                               ; preds = %16
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @timer_mode, align 4
  %51 = load i32, i32* @TMR_EXTERNAL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  store i32 1, i32* @tmr_running, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @setup_metronome(i32 %55)
  %57 = call i32 (...) @SEQ_CONTINUE_TIMER()
  %58 = call i32 @STORE(i32 %57)
  br label %59

59:                                               ; preds = %54, %48
  br label %72

60:                                               ; preds = %16
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @timer_mode, align 4
  %64 = load i32, i32* @TMR_EXTERNAL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @SEQ_SONGPOS(i32 %68)
  %70 = call i32 @STORE(i32 %69)
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %15, %16, %71, %59, %47, %35, %18
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @setup_metronome(i32) #1

declare dso_local i32 @STORE(i32) #1

declare dso_local i32 @SEQ_START_TIMER(...) #1

declare dso_local i32 @stop_metronome(i32) #1

declare dso_local i32 @SEQ_STOP_TIMER(...) #1

declare dso_local i32 @SEQ_CONTINUE_TIMER(...) #1

declare dso_local i32 @SEQ_SONGPOS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
