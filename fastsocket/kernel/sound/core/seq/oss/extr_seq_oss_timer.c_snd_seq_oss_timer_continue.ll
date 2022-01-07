; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_timer.c_snd_seq_oss_timer_continue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_timer.c_snd_seq_oss_timer_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_timer = type { i32, i32 }

@SNDRV_SEQ_EVENT_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_timer_continue(%struct.seq_oss_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seq_oss_timer*, align 8
  store %struct.seq_oss_timer* %0, %struct.seq_oss_timer** %3, align 8
  %4 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %3, align 8
  %5 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %3, align 8
  %11 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SNDRV_SEQ_EVENT_CONTINUE, align 4
  %14 = call i32 @send_timer_event(i32 %12, i32 %13, i32 0)
  %15 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %3, align 8
  %16 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @send_timer_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
