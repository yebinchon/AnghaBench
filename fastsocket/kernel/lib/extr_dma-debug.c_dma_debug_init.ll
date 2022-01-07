; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_dma_debug_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_dma_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@global_disable = common dso_local global i32 0, align 4
@HASH_SIZE = common dso_local global i32 0, align 4
@dma_entry_hash = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"DMA-API: error creating debugfs entries - disabling\0A\00", align 1
@req_entries = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"DMA-API: debugging out of memory error - disabled\0A\00", align 1
@num_free_entries = common dso_local global i32 0, align 4
@nr_total_entries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"DMA-API: debugging enabled by kernel config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_debug_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @global_disable, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %25, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @HASH_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_entry_hash, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_entry_hash, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_init(i32* %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %8

28:                                               ; preds = %8
  %29 = call i64 (...) @dma_debug_fs_init()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @global_disable, align 4
  br label %47

33:                                               ; preds = %28
  %34 = load i64, i64* @req_entries, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* @req_entries, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i64, i64* %2, align 8
  %40 = call i64 @prealloc_memory(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @global_disable, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @num_free_entries, align 4
  store i32 %45, i32* @nr_total_entries, align 4
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %42, %31, %6
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @dma_debug_fs_init(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @prealloc_memory(i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
