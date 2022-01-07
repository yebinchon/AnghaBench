; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_queue.c_queue_list_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_queue.c_queue_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, i32 }

@queue_list_lock = common dso_local global i32 0, align 4
@queue_list = common dso_local global %struct.snd_seq_queue** null, align 8
@num_queues = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_seq_queue* (i32, i32)* @queue_list_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_seq_queue* @queue_list_remove(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.snd_seq_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_queue*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @queue_list_lock, i64 %8)
  %10 = load %struct.snd_seq_queue**, %struct.snd_seq_queue*** @queue_list, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.snd_seq_queue*, %struct.snd_seq_queue** %10, i64 %12
  %14 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %13, align 8
  store %struct.snd_seq_queue* %14, %struct.snd_seq_queue** %6, align 8
  %15 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %16 = icmp ne %struct.snd_seq_queue* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %19 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %18, i32 0, i32 2
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %22 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %28 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %30 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %29, i32 0, i32 2
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.snd_seq_queue**, %struct.snd_seq_queue*** @queue_list, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.snd_seq_queue*, %struct.snd_seq_queue** %32, i64 %34
  store %struct.snd_seq_queue* null, %struct.snd_seq_queue** %35, align 8
  %36 = load i32, i32* @num_queues, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @num_queues, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @queue_list_lock, i64 %38)
  %40 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  store %struct.snd_seq_queue* %40, %struct.snd_seq_queue** %3, align 8
  br label %48

41:                                               ; preds = %17
  %42 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %43 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock(i32* %43)
  br label %45

45:                                               ; preds = %41, %2
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @queue_list_lock, i64 %46)
  store %struct.snd_seq_queue* null, %struct.snd_seq_queue** %3, align 8
  br label %48

48:                                               ; preds = %45, %26
  %49 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  ret %struct.snd_seq_queue* %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
