; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_timing_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_timing_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@seq_mode = common dso_local global i64 0, align 8
@SEQ_2 = common dso_local global i64 0, align 8
@tmr = common dso_local global %struct.TYPE_2__* null, align 8
@tmr_no = common dso_local global i32 0, align 4
@TIMER_ARMED = common dso_local global i32 0, align 4
@SEQ_MAX_QUEUE = common dso_local global i64 0, align 8
@qlen = common dso_local global i64 0, align 8
@output_threshold = common dso_local global i64 0, align 8
@seq_sleeper = common dso_local global i32 0, align 4
@prev_event_time = common dso_local global i32 0, align 4
@seq_playing = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@seq_time = common dso_local global i32 0, align 4
@prev_input_time = common dso_local global i32 0, align 4
@SEQ_ECHO = common dso_local global i32 0, align 4
@TIMER_NOT_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @seq_timing_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_timing_event(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %4, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 4
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @seq_mode, align 8
  %16 = load i64, i64* @SEQ_2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmr, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i8*)*, i32 (i32, i8*)** %20, align 8
  %22 = load i32, i32* @tmr_no, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 %21(i32 %22, i8* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @TIMER_ARMED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load i64, i64* @SEQ_MAX_QUEUE, align 8
  %29 = load i64, i64* @qlen, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* @output_threshold, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @wake_up(i32* @seq_sleeper)
  br label %35

35:                                               ; preds = %33, %27
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %88

38:                                               ; preds = %1
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  switch i32 %40, label %85 [
    i32 128, label %41
    i32 129, label %45
    i32 132, label %65
    i32 131, label %67
    i32 134, label %68
    i32 130, label %69
    i32 133, label %70
  ]

41:                                               ; preds = %38
  %42 = load i32, i32* @prev_event_time, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %41
  %46 = load i32, i32* %5, align 4
  %47 = icmp ugt i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* @prev_event_time, align 4
  store i32 1, i32* @seq_playing, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @request_sound_timer(i64 %53)
  %55 = load i64, i64* @SEQ_MAX_QUEUE, align 8
  %56 = load i64, i64* @qlen, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* @output_threshold, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = call i32 @wake_up(i32* @seq_sleeper)
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i32, i32* @TIMER_ARMED, align 4
  store i32 %63, i32* %2, align 4
  br label %88

64:                                               ; preds = %45
  br label %86

65:                                               ; preds = %38
  %66 = load i32, i32* @jiffies, align 4
  store i32 %66, i32* @seq_time, align 4
  store i32 0, i32* @prev_input_time, align 4
  store i32 0, i32* @prev_event_time, align 4
  br label %86

67:                                               ; preds = %38
  br label %86

68:                                               ; preds = %38
  br label %86

69:                                               ; preds = %38
  br label %86

70:                                               ; preds = %38
  %71 = load i64, i64* @seq_mode, align 8
  %72 = load i64, i64* @SEQ_2, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @seq_copy_to_input(i8* %75, i32 8)
  br label %84

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = shl i32 %78, 8
  %80 = load i32, i32* @SEQ_ECHO, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %5, align 4
  %82 = bitcast i32* %5 to i8*
  %83 = call i32 @seq_copy_to_input(i8* %82, i32 4)
  br label %84

84:                                               ; preds = %77, %74
  br label %86

85:                                               ; preds = %38
  br label %86

86:                                               ; preds = %85, %84, %69, %68, %67, %65, %64
  %87 = load i32, i32* @TIMER_NOT_ARMED, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %62, %36
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @request_sound_timer(i64) #1

declare dso_local i32 @seq_copy_to_input(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
