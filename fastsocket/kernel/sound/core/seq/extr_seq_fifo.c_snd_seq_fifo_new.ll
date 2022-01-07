; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i64, i32*, i32*, i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"malloc failed for snd_seq_fifo_new() \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_fifo* @snd_seq_fifo_new(i32 %0) #0 {
  %2 = alloca %struct.snd_seq_fifo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_fifo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_seq_fifo* @kzalloc(i32 48, i32 %5)
  store %struct.snd_seq_fifo* %6, %struct.snd_seq_fifo** %4, align 8
  %7 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %8 = icmp eq %struct.snd_seq_fifo* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @snd_printd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_seq_fifo* null, %struct.snd_seq_fifo** %2, align 8
  br label %55

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32* @snd_seq_pool_new(i32 %12)
  %14 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %15 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %14, i32 0, i32 7
  store i32* %13, i32** %15, align 8
  %16 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %17 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %22 = call i32 @kfree(%struct.snd_seq_fifo* %21)
  store %struct.snd_seq_fifo* null, %struct.snd_seq_fifo** %2, align 8
  br label %55

23:                                               ; preds = %11
  %24 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %25 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @snd_seq_pool_init(i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %31 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %30, i32 0, i32 7
  %32 = call i32 @snd_seq_pool_delete(i32** %31)
  %33 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %34 = call i32 @kfree(%struct.snd_seq_fifo* %33)
  store %struct.snd_seq_fifo* null, %struct.snd_seq_fifo** %2, align 8
  br label %55

35:                                               ; preds = %23
  %36 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %37 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %36, i32 0, i32 6
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %40 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %39, i32 0, i32 5
  %41 = call i32 @snd_use_lock_init(i32* %40)
  %42 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %43 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %42, i32 0, i32 4
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %46 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %45, i32 0, i32 3
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %49 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %51 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %53 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  store %struct.snd_seq_fifo* %54, %struct.snd_seq_fifo** %2, align 8
  br label %55

55:                                               ; preds = %35, %29, %20, %9
  %56 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %2, align 8
  ret %struct.snd_seq_fifo* %56
}

declare dso_local %struct.snd_seq_fifo* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32* @snd_seq_pool_new(i32) #1

declare dso_local i32 @kfree(%struct.snd_seq_fifo*) #1

declare dso_local i64 @snd_seq_pool_init(i32*) #1

declare dso_local i32 @snd_seq_pool_delete(i32**) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_use_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
