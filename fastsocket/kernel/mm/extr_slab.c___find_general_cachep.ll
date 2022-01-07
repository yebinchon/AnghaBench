; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c___find_general_cachep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c___find_general_cachep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_sizes = type { i64, %struct.kmem_cache*, %struct.kmem_cache* }
%struct.kmem_cache = type { i32 }

@malloc_sizes = common dso_local global %struct.cache_sizes* null, align 8
@ZERO_SIZE_PTR = common dso_local global %struct.kmem_cache* null, align 8
@GFP_DMA = common dso_local global i32 0, align 4
@INDEX_AC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmem_cache* (i64, i32)* @__find_general_cachep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmem_cache* @__find_general_cachep(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_sizes*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cache_sizes*, %struct.cache_sizes** @malloc_sizes, align 8
  store %struct.cache_sizes* %7, %struct.cache_sizes** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** @ZERO_SIZE_PTR, align 8
  store %struct.kmem_cache* %11, %struct.kmem_cache** %3, align 8
  br label %26

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %19, %12
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.cache_sizes*, %struct.cache_sizes** %6, align 8
  %16 = getelementptr inbounds %struct.cache_sizes, %struct.cache_sizes* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.cache_sizes*, %struct.cache_sizes** %6, align 8
  %21 = getelementptr inbounds %struct.cache_sizes, %struct.cache_sizes* %20, i32 1
  store %struct.cache_sizes* %21, %struct.cache_sizes** %6, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.cache_sizes*, %struct.cache_sizes** %6, align 8
  %24 = getelementptr inbounds %struct.cache_sizes, %struct.cache_sizes* %23, i32 0, i32 1
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** %24, align 8
  store %struct.kmem_cache* %25, %struct.kmem_cache** %3, align 8
  br label %26

26:                                               ; preds = %22, %10
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  ret %struct.kmem_cache* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
