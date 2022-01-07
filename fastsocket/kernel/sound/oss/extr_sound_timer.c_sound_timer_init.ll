; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sound_timer.c_sound_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sound_timer.c_sound_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sound_lowlev_timer = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@initialized = common dso_local global i32 0, align 4
@tmr = common dso_local global %struct.sound_lowlev_timer* null, align 8
@sound_timer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@sound_timer_devs = common dso_local global %struct.TYPE_5__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sound_timer_init(%struct.sound_lowlev_timer* %0, i8* %1) #0 {
  %3 = alloca %struct.sound_lowlev_timer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.sound_lowlev_timer* %0, %struct.sound_lowlev_timer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @initialized, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.sound_lowlev_timer*, %struct.sound_lowlev_timer** %3, align 8
  %10 = getelementptr inbounds %struct.sound_lowlev_timer, %struct.sound_lowlev_timer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sound_lowlev_timer*, %struct.sound_lowlev_timer** @tmr, align 8
  %13 = getelementptr inbounds %struct.sound_lowlev_timer, %struct.sound_lowlev_timer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %33

17:                                               ; preds = %8
  %18 = load %struct.sound_lowlev_timer*, %struct.sound_lowlev_timer** %3, align 8
  store %struct.sound_lowlev_timer* %18, %struct.sound_lowlev_timer** @tmr, align 8
  br label %33

19:                                               ; preds = %2
  store i32 1, i32* @initialized, align 4
  %20 = load %struct.sound_lowlev_timer*, %struct.sound_lowlev_timer** %3, align 8
  store %struct.sound_lowlev_timer* %20, %struct.sound_lowlev_timer** @tmr, align 8
  %21 = call i32 (...) @sound_alloc_timerdev()
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sound_timer, i32 0, i32 0, i32 0), align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcpy(i32 %26, i8* %27)
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @sound_timer_devs, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %31
  store %struct.TYPE_5__* @sound_timer, %struct.TYPE_5__** %32, align 8
  br label %33

33:                                               ; preds = %25, %17, %16
  ret void
}

declare dso_local i32 @sound_alloc_timerdev(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
