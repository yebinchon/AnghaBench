; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_queue.c_queue_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_queue.c_queue_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, i32, i64, i32*, i32*, i32*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"malloc failed for snd_seq_queue_new()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_seq_queue* (i32, i32)* @queue_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_seq_queue* @queue_new(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.snd_seq_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_queue*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_seq_queue* @kzalloc(i32 64, i32 %7)
  store %struct.snd_seq_queue* %8, %struct.snd_seq_queue** %6, align 8
  %9 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %10 = icmp eq %struct.snd_seq_queue* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @snd_printd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_seq_queue* null, %struct.snd_seq_queue** %3, align 8
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %15 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %14, i32 0, i32 10
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %18 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %17, i32 0, i32 9
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %21 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %20, i32 0, i32 8
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %24 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %23, i32 0, i32 7
  %25 = call i32 @snd_use_lock_init(i32* %24)
  %26 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %27 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = call i8* (...) @snd_seq_prioq_new()
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %31 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %30, i32 0, i32 6
  store i32* %29, i32** %31, align 8
  %32 = call i8* (...) @snd_seq_prioq_new()
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %35 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %34, i32 0, i32 5
  store i32* %33, i32** %35, align 8
  %36 = call i32* (...) @snd_seq_timer_new()
  %37 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %38 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  %39 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %40 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %13
  %44 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %45 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %50 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %48, %43, %13
  %54 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %55 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %54, i32 0, i32 6
  %56 = call i32 @snd_seq_prioq_delete(i32** %55)
  %57 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %58 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %57, i32 0, i32 5
  %59 = call i32 @snd_seq_prioq_delete(i32** %58)
  %60 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %61 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %60, i32 0, i32 4
  %62 = call i32 @snd_seq_timer_delete(i32** %61)
  %63 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %64 = call i32 @kfree(%struct.snd_seq_queue* %63)
  store %struct.snd_seq_queue* null, %struct.snd_seq_queue** %3, align 8
  br label %75

65:                                               ; preds = %48
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %68 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %71 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %73 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  store %struct.snd_seq_queue* %74, %struct.snd_seq_queue** %3, align 8
  br label %75

75:                                               ; preds = %65, %53, %11
  %76 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %3, align 8
  ret %struct.snd_seq_queue* %76
}

declare dso_local %struct.snd_seq_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_use_lock_init(i32*) #1

declare dso_local i8* @snd_seq_prioq_new(...) #1

declare dso_local i32* @snd_seq_timer_new(...) #1

declare dso_local i32 @snd_seq_prioq_delete(i32**) #1

declare dso_local i32 @snd_seq_timer_delete(i32**) #1

declare dso_local i32 @kfree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
