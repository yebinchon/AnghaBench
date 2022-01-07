; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sound_timer.c_timer_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sound_timer.c_timer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_event_time = common dso_local global i64 0, align 8
@curr_ticks = common dso_local global i64 0, align 8
@TIMER_NOT_ARMED = common dso_local global i32 0, align 4
@next_event_time = common dso_local global i64 0, align 8
@TIMER_ARMED = common dso_local global i32 0, align 4
@tmr_running = common dso_local global i32 0, align 4
@tmr_ctr = common dso_local global i32 0, align 4
@tmr_offs = common dso_local global i32 0, align 4
@ticks_offs = common dso_local global i32 0, align 4
@curr_tempo = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @timer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_event(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %6, align 1
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  switch i32 %18, label %66 [
    i32 128, label %19
    i32 129, label %23
    i32 132, label %37
    i32 131, label %40
    i32 134, label %41
    i32 130, label %43
    i32 133, label %63
  ]

19:                                               ; preds = %2
  %20 = load i64, i64* @prev_event_time, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %2, %19
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @curr_ticks, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @TIMER_NOT_ARMED, align 4
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* @prev_event_time, align 8
  store i64 %34, i64* @next_event_time, align 8
  %35 = load i32, i32* @TIMER_ARMED, align 4
  store i32 %35, i32* %3, align 4
  br label %69

36:                                               ; preds = %23
  br label %67

37:                                               ; preds = %2
  %38 = call i32 (...) @tmr_reset()
  store i32 1, i32* @tmr_running, align 4
  %39 = call i32 (...) @reprogram_timer()
  br label %67

40:                                               ; preds = %2
  store i32 0, i32* @tmr_running, align 4
  br label %67

41:                                               ; preds = %2
  store i32 1, i32* @tmr_running, align 4
  %42 = call i32 (...) @reprogram_timer()
  br label %67

43:                                               ; preds = %2
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i64 8, i64* %7, align 8
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i64, i64* %7, align 8
  %52 = icmp ugt i64 %51, 250
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 250, i64* %7, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* @tmr_ctr, align 4
  store i32 %55, i32* @tmr_offs, align 4
  %56 = load i32, i32* @tmr_ctr, align 4
  %57 = call i32 @tmr2ticks(i32 %56)
  %58 = load i32, i32* @ticks_offs, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* @ticks_offs, align 4
  store i32 0, i32* @tmr_ctr, align 4
  %60 = load i64, i64* %7, align 8
  store i64 %60, i64* @curr_tempo, align 8
  %61 = call i32 (...) @reprogram_timer()
  br label %62

62:                                               ; preds = %54, %43
  br label %67

63:                                               ; preds = %2
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @seq_copy_to_input(i8* %64, i32 8)
  br label %67

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %66, %63, %62, %41, %40, %37, %36
  %68 = load i32, i32* @TIMER_NOT_ARMED, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %32, %30
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @tmr_reset(...) #1

declare dso_local i32 @reprogram_timer(...) #1

declare dso_local i32 @tmr2ticks(i32) #1

declare dso_local i32 @seq_copy_to_input(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
