; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_cache_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_cache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@cache_chain_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't free all objects\00", align 1
@cache_chain = common dso_local global i32 0, align 4
@SLAB_DESTROY_BY_RCU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_cache_destroy(%struct.kmem_cache* %0) #0 {
  %2 = alloca %struct.kmem_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %2, align 8
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %4 = icmp ne %struct.kmem_cache* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = call i64 (...) @in_interrupt()
  %7 = icmp ne i64 %6, 0
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = call i32 (...) @get_online_cpus()
  %13 = call i32 @mutex_lock(i32* @cache_chain_mutex)
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %15 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %18 = call i64 @__cache_shrink(%struct.kmem_cache* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %8
  %21 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %22 = call i32 @slab_error(%struct.kmem_cache* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %24 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %23, i32 0, i32 1
  %25 = call i32 @list_add(i32* %24, i32* @cache_chain)
  %26 = call i32 @mutex_unlock(i32* @cache_chain_mutex)
  %27 = call i32 (...) @put_online_cpus()
  br label %43

28:                                               ; preds = %8
  %29 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %30 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SLAB_DESTROY_BY_RCU, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 (...) @rcu_barrier()
  br label %38

38:                                               ; preds = %36, %28
  %39 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %40 = call i32 @__kmem_cache_destroy(%struct.kmem_cache* %39)
  %41 = call i32 @mutex_unlock(i32* @cache_chain_mutex)
  %42 = call i32 (...) @put_online_cpus()
  br label %43

43:                                               ; preds = %38, %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @__cache_shrink(%struct.kmem_cache*) #1

declare dso_local i32 @slab_error(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @__kmem_cache_destroy(%struct.kmem_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
