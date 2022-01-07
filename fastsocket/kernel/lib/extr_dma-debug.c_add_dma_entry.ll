; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_add_dma_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_dma-debug.c_add_dma_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_debug_entry = type { i32 }
%struct.hash_bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_debug_entry*)* @add_dma_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dma_entry(%struct.dma_debug_entry* %0) #0 {
  %2 = alloca %struct.dma_debug_entry*, align 8
  %3 = alloca %struct.hash_bucket*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_debug_entry* %0, %struct.dma_debug_entry** %2, align 8
  %5 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %2, align 8
  %6 = call %struct.hash_bucket* @get_hash_bucket(%struct.dma_debug_entry* %5, i64* %4)
  store %struct.hash_bucket* %6, %struct.hash_bucket** %3, align 8
  %7 = load %struct.hash_bucket*, %struct.hash_bucket** %3, align 8
  %8 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %2, align 8
  %9 = call i32 @hash_bucket_add(%struct.hash_bucket* %7, %struct.dma_debug_entry* %8)
  %10 = load %struct.hash_bucket*, %struct.hash_bucket** %3, align 8
  %11 = call i32 @put_hash_bucket(%struct.hash_bucket* %10, i64* %4)
  ret void
}

declare dso_local %struct.hash_bucket* @get_hash_bucket(%struct.dma_debug_entry*, i64*) #1

declare dso_local i32 @hash_bucket_add(%struct.hash_bucket*, %struct.dma_debug_entry*) #1

declare dso_local i32 @put_hash_bucket(%struct.hash_bucket*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
