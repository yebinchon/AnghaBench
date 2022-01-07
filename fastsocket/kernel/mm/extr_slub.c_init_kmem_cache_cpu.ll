; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_init_kmem_cache_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_init_kmem_cache_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }
%struct.kmem_cache_cpu = type { i32, i32, i32, i64, i32*, i32* }

@NR_SLUB_STAT_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.kmem_cache_cpu*)* @init_kmem_cache_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_kmem_cache_cpu(%struct.kmem_cache* %0, %struct.kmem_cache_cpu* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca %struct.kmem_cache_cpu*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store %struct.kmem_cache_cpu* %1, %struct.kmem_cache_cpu** %4, align 8
  %5 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %6 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %5, i32 0, i32 5
  store i32* null, i32** %6, align 8
  %7 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %8 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %7, i32 0, i32 4
  store i32* null, i32** %8, align 8
  %9 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %10 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %12 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %18 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %20 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %4, align 8
  %23 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
