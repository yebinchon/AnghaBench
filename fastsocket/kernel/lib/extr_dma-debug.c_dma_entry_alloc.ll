; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_dma_entry_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_dma_entry_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_debug_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@free_entries_lock = common dso_local global i32 0, align 4
@free_entries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"DMA-API: debugging out of memory - disabling\0A\00", align 1
@global_disable = common dso_local global i32 0, align 4
@DMA_DEBUG_STACKTRACE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_debug_entry* ()* @dma_entry_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_debug_entry* @dma_entry_alloc() #0 {
  %1 = alloca %struct.dma_debug_entry*, align 8
  %2 = alloca i64, align 8
  store %struct.dma_debug_entry* null, %struct.dma_debug_entry** %1, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @free_entries_lock, i64 %3)
  %5 = call i64 @list_empty(i32* @free_entries)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @global_disable, align 4
  br label %11

9:                                                ; preds = %0
  %10 = call %struct.dma_debug_entry* (...) @__dma_entry_alloc()
  store %struct.dma_debug_entry* %10, %struct.dma_debug_entry** %1, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* @free_entries_lock, i64 %12)
  %14 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %1, align 8
  ret %struct.dma_debug_entry* %14
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.dma_debug_entry* @__dma_entry_alloc(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
