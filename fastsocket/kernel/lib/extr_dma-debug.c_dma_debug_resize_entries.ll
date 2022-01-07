; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_dma_debug_resize_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_dma_debug_resize_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_debug_entry = type { i32 }

@tmp = common dso_local global i32 0, align 4
@free_entries_lock = common dso_local global i32 0, align 4
@nr_total_entries = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@free_entries = common dso_local global i32 0, align 4
@num_free_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_debug_resize_entries(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_debug_entry*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @tmp, align 4
  %9 = call i32 @LIST_HEAD(i32 %8)
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @free_entries_lock, i64 %10)
  %12 = load i64, i64* @nr_total_entries, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @nr_total_entries, align 8
  %18 = sub nsw i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @free_entries_lock, i64 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %36, %15
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.dma_debug_entry* @kzalloc(i32 4, i32 %27)
  store %struct.dma_debug_entry* %28, %struct.dma_debug_entry** %7, align 8
  %29 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %30 = icmp ne %struct.dma_debug_entry* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %39

32:                                               ; preds = %26
  %33 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %34 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %33, i32 0, i32 0
  %35 = call i32 @list_add_tail(i32* %34, i32* @tmp)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %22

39:                                               ; preds = %31, %22
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* @free_entries_lock, i64 %40)
  %42 = call i32 @list_splice(i32* @tmp, i32* @free_entries)
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @nr_total_entries, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* @nr_total_entries, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @num_free_entries, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* @num_free_entries, align 4
  br label %77

50:                                               ; preds = %1
  %51 = load i64, i64* @nr_total_entries, align 8
  %52 = load i64, i64* %2, align 8
  %53 = sub nsw i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %69, %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = call i32 @list_empty(i32* @free_entries)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  br i1 %64, label %65, label %72

65:                                               ; preds = %63
  %66 = call %struct.dma_debug_entry* (...) @__dma_entry_alloc()
  store %struct.dma_debug_entry* %66, %struct.dma_debug_entry** %7, align 8
  %67 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %68 = call i32 @kfree(%struct.dma_debug_entry* %67)
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %55

72:                                               ; preds = %63
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @nr_total_entries, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* @nr_total_entries, align 8
  br label %77

77:                                               ; preds = %72, %39
  %78 = load i64, i64* @nr_total_entries, align 8
  %79 = load i64, i64* %2, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* @free_entries_lock, i64 %83)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.dma_debug_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.dma_debug_entry* @__dma_entry_alloc(...) #1

declare dso_local i32 @kfree(%struct.dma_debug_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
