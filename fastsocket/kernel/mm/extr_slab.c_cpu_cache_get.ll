; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_cpu_cache_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_cpu_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_cache = type { i32 }
%struct.kmem_cache = type { %struct.array_cache** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.array_cache* (%struct.kmem_cache*)* @cpu_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.array_cache* @cpu_cache_get(%struct.kmem_cache* %0) #0 {
  %2 = alloca %struct.kmem_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %2, align 8
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %4 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %3, i32 0, i32 0
  %5 = load %struct.array_cache**, %struct.array_cache*** %4, align 8
  %6 = call i64 (...) @smp_processor_id()
  %7 = getelementptr inbounds %struct.array_cache*, %struct.array_cache** %5, i64 %6
  %8 = load %struct.array_cache*, %struct.array_cache** %7, align 8
  ret %struct.array_cache* %8
}

declare dso_local i64 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
