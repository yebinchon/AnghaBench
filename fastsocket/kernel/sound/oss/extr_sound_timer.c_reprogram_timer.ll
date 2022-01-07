; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sound_timer.c_reprogram_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sound_timer.c_reprogram_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i64)* }

@tmr = common dso_local global %struct.TYPE_2__* null, align 8
@curr_tempo = common dso_local global i32 0, align 4
@curr_timebase = common dso_local global i32 0, align 4
@usecs_per_tmr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reprogram_timer() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmr, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %23

5:                                                ; preds = %0
  %6 = load i32, i32* @curr_tempo, align 4
  %7 = load i32, i32* @curr_timebase, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sdiv i32 60000000, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp ult i64 %11, 2000
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i64 2000, i64* %1, align 8
  br label %14

14:                                               ; preds = %13, %5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmr, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (i32, i64)*, i32 (i32, i64)** %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmr, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %1, align 8
  %22 = call i32 %17(i32 %20, i64 %21)
  store i32 %22, i32* @usecs_per_tmr, align 4
  br label %23

23:                                               ; preds = %14, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
