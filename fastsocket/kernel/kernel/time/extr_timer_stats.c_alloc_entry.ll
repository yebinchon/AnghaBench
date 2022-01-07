; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timer_stats.c_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timer_stats.c_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }

@nr_entries = common dso_local global i64 0, align 8
@MAX_ENTRIES = common dso_local global i64 0, align 8
@entries = common dso_local global %struct.entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* ()* @alloc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @alloc_entry() #0 {
  %1 = alloca %struct.entry*, align 8
  %2 = load i64, i64* @nr_entries, align 8
  %3 = load i64, i64* @MAX_ENTRIES, align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.entry* null, %struct.entry** %1, align 8
  br label %11

6:                                                ; preds = %0
  %7 = load %struct.entry*, %struct.entry** @entries, align 8
  %8 = load i64, i64* @nr_entries, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* @nr_entries, align 8
  %10 = getelementptr inbounds %struct.entry, %struct.entry* %7, i64 %8
  store %struct.entry* %10, %struct.entry** %1, align 8
  br label %11

11:                                               ; preds = %6, %5
  %12 = load %struct.entry*, %struct.entry** %1, align 8
  ret %struct.entry* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
