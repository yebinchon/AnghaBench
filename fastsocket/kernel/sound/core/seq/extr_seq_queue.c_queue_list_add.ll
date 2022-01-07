; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_queue.c_queue_list_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_queue.c_queue_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32 }

@queue_list_lock = common dso_local global i32 0, align 4
@SNDRV_SEQ_MAX_QUEUES = common dso_local global i32 0, align 4
@queue_list = common dso_local global %struct.snd_seq_queue** null, align 8
@num_queues = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_queue*)* @queue_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_list_add(%struct.snd_seq_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_seq_queue* %0, %struct.snd_seq_queue** %3, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @queue_list_lock, i64 %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SNDRV_SEQ_MAX_QUEUES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load %struct.snd_seq_queue**, %struct.snd_seq_queue*** @queue_list, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.snd_seq_queue*, %struct.snd_seq_queue** %13, i64 %15
  %17 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %16, align 8
  %18 = icmp ne %struct.snd_seq_queue* %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %12
  %20 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  %21 = load %struct.snd_seq_queue**, %struct.snd_seq_queue*** @queue_list, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.snd_seq_queue*, %struct.snd_seq_queue** %21, i64 %23
  store %struct.snd_seq_queue* %20, %struct.snd_seq_queue** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  %27 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @num_queues, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @num_queues, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @queue_list_lock, i64 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @queue_list_lock, i64 %38)
  store i32 -1, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %19
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
