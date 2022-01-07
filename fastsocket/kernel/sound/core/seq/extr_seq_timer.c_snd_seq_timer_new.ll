; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"malloc failed for snd_seq_timer_new() \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_timer* @snd_seq_timer_new() #0 {
  %1 = alloca %struct.snd_seq_timer*, align 8
  %2 = alloca %struct.snd_seq_timer*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.snd_seq_timer* @kzalloc(i32 4, i32 %3)
  store %struct.snd_seq_timer* %4, %struct.snd_seq_timer** %2, align 8
  %5 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %6 = icmp eq %struct.snd_seq_timer* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @snd_printd(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_seq_timer* null, %struct.snd_seq_timer** %1, align 8
  br label %18

9:                                                ; preds = %0
  %10 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %11 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %14 = call i32 @snd_seq_timer_defaults(%struct.snd_seq_timer* %13)
  %15 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %16 = call i32 @snd_seq_timer_reset(%struct.snd_seq_timer* %15)
  %17 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  store %struct.snd_seq_timer* %17, %struct.snd_seq_timer** %1, align 8
  br label %18

18:                                               ; preds = %9, %7
  %19 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %1, align 8
  ret %struct.snd_seq_timer* %19
}

declare dso_local %struct.snd_seq_timer* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_seq_timer_defaults(%struct.snd_seq_timer*) #1

declare dso_local i32 @snd_seq_timer_reset(%struct.snd_seq_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
