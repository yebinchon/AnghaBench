; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_soundcard.c_request_sound_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_soundcard.c_request_sound_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@seq_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@seq_time = external dso_local global i64, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_sound_timer(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 0, %6
  %8 = load i32, i32* @jiffies, align 4
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @seq_timer, i32 0, i32 0), align 4
  %10 = call i32 @add_timer(%struct.TYPE_3__* @seq_timer)
  br label %28

11:                                               ; preds = %1
  %12 = load i64, i64* @seq_time, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @jiffies, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %11
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @jiffies, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @seq_timer, i32 0, i32 0), align 4
  %27 = call i32 @add_timer(%struct.TYPE_3__* @seq_timer)
  br label %28

28:                                               ; preds = %23, %5
  ret void
}

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
