; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_get_nr_mapped_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_get_nr_mapped_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_debug_entry = type { i32 }
%struct.hash_bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.dma_debug_entry*)* @get_nr_mapped_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nr_mapped_entries(%struct.device* %0, %struct.dma_debug_entry* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dma_debug_entry*, align 8
  %5 = alloca %struct.dma_debug_entry*, align 8
  %6 = alloca %struct.hash_bucket*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.dma_debug_entry* %1, %struct.dma_debug_entry** %4, align 8
  %9 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  %10 = call %struct.hash_bucket* @get_hash_bucket(%struct.dma_debug_entry* %9, i64* %7)
  store %struct.hash_bucket* %10, %struct.hash_bucket** %6, align 8
  %11 = load %struct.hash_bucket*, %struct.hash_bucket** %6, align 8
  %12 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  %13 = call %struct.dma_debug_entry* @bucket_find_exact(%struct.hash_bucket* %11, %struct.dma_debug_entry* %12)
  store %struct.dma_debug_entry* %13, %struct.dma_debug_entry** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %15 = icmp ne %struct.dma_debug_entry* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %18 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.hash_bucket*, %struct.hash_bucket** %6, align 8
  %22 = call i32 @put_hash_bucket(%struct.hash_bucket* %21, i64* %7)
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local %struct.hash_bucket* @get_hash_bucket(%struct.dma_debug_entry*, i64*) #1

declare dso_local %struct.dma_debug_entry* @bucket_find_exact(%struct.hash_bucket*, %struct.dma_debug_entry*) #1

declare dso_local i32 @put_hash_bucket(%struct.hash_bucket*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
