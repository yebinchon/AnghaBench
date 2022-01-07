; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_memory.c_snd_seq_pool_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_memory.c_snd_seq_pool_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, i64, i32, i64, i32, i64, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"seq: malloc failed for pool\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_seq_pool* @snd_seq_pool_new(i32 %0) #0 {
  %2 = alloca %struct.snd_seq_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_pool*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_seq_pool* @kzalloc(i32 72, i32 %5)
  store %struct.snd_seq_pool* %6, %struct.snd_seq_pool** %4, align 8
  %7 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %8 = icmp eq %struct.snd_seq_pool* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @snd_printd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_seq_pool* null, %struct.snd_seq_pool** %2, align 8
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %13 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %12, i32 0, i32 8
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %16 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %15, i32 0, i32 7
  store i32* null, i32** %16, align 8
  %17 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %18 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %20 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %22 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %21, i32 0, i32 4
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %25 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %27 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %26, i32 0, i32 2
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %31 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  %33 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %4, align 8
  store %struct.snd_seq_pool* %34, %struct.snd_seq_pool** %2, align 8
  br label %35

35:                                               ; preds = %11, %9
  %36 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %2, align 8
  ret %struct.snd_seq_pool* %36
}

declare dso_local %struct.snd_seq_pool* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
