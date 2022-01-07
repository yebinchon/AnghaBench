; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_rcu_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_rcu_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_head = type { i32 }
%struct.slab_rcu = type { i32, %struct.kmem_cache* }
%struct.kmem_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_head*)* @kmem_rcu_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmem_rcu_free(%struct.rcu_head* %0) #0 {
  %2 = alloca %struct.rcu_head*, align 8
  %3 = alloca %struct.slab_rcu*, align 8
  %4 = alloca %struct.kmem_cache*, align 8
  store %struct.rcu_head* %0, %struct.rcu_head** %2, align 8
  %5 = load %struct.rcu_head*, %struct.rcu_head** %2, align 8
  %6 = bitcast %struct.rcu_head* %5 to %struct.slab_rcu*
  store %struct.slab_rcu* %6, %struct.slab_rcu** %3, align 8
  %7 = load %struct.slab_rcu*, %struct.slab_rcu** %3, align 8
  %8 = getelementptr inbounds %struct.slab_rcu, %struct.slab_rcu* %7, i32 0, i32 1
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  store %struct.kmem_cache* %9, %struct.kmem_cache** %4, align 8
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %11 = load %struct.slab_rcu*, %struct.slab_rcu** %3, align 8
  %12 = getelementptr inbounds %struct.slab_rcu, %struct.slab_rcu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @kmem_freepages(%struct.kmem_cache* %10, i32 %13)
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %16 = call i64 @OFF_SLAB(%struct.kmem_cache* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %20 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.slab_rcu*, %struct.slab_rcu** %3, align 8
  %23 = call i32 @kmem_cache_free(i32 %21, %struct.slab_rcu* %22)
  br label %24

24:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @kmem_freepages(%struct.kmem_cache*, i32) #1

declare dso_local i64 @OFF_SLAB(%struct.kmem_cache*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.slab_rcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
