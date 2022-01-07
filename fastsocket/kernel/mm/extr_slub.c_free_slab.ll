; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_free_slab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_free_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.page = type { i32 }
%struct.rcu_head = type { i32 }

@SLAB_DESTROY_BY_RCU = common dso_local global i32 0, align 4
@rcu_free_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.page*)* @free_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_slab(%struct.kmem_cache* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.rcu_head*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %7 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SLAB_DESTROY_BY_RCU, align 4
  %10 = and i32 %8, %9
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.rcu_head*
  store %struct.rcu_head* %17, %struct.rcu_head** %5, align 8
  %18 = load %struct.rcu_head*, %struct.rcu_head** %5, align 8
  %19 = load i32, i32* @rcu_free_slab, align 4
  %20 = call i32 @call_rcu(%struct.rcu_head* %18, i32 %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @__free_slab(%struct.kmem_cache* %22, %struct.page* %23)
  br label %25

25:                                               ; preds = %21, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @call_rcu(%struct.rcu_head*, i32) #1

declare dso_local i32 @__free_slab(%struct.kmem_cache*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
