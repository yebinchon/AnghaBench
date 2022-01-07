; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_kmem_cache_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_kmem_cache_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }
%struct.slob_rcu = type { i32, i32 }

@SLAB_DESTROY_BY_RCU = common dso_local global i32 0, align 4
@kmem_rcu_free = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_cache_free(%struct.kmem_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.slob_rcu*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %8 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kmemleak_free_recursive(i8* %6, i32 %9)
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %12 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SLAB_DESTROY_BY_RCU, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %21 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 8
  %25 = getelementptr i8, i8* %19, i64 %24
  %26 = bitcast i8* %25 to %struct.slob_rcu*
  store %struct.slob_rcu* %26, %struct.slob_rcu** %5, align 8
  %27 = load %struct.slob_rcu*, %struct.slob_rcu** %5, align 8
  %28 = getelementptr inbounds %struct.slob_rcu, %struct.slob_rcu* %27, i32 0, i32 1
  %29 = call i32 @INIT_RCU_HEAD(i32* %28)
  %30 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %31 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.slob_rcu*, %struct.slob_rcu** %5, align 8
  %34 = getelementptr inbounds %struct.slob_rcu, %struct.slob_rcu* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.slob_rcu*, %struct.slob_rcu** %5, align 8
  %36 = getelementptr inbounds %struct.slob_rcu, %struct.slob_rcu* %35, i32 0, i32 1
  %37 = load i32, i32* @kmem_rcu_free, align 4
  %38 = call i32 @call_rcu(i32* %36, i32 %37)
  br label %45

39:                                               ; preds = %2
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %42 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__kmem_cache_free(i8* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %18
  %46 = load i32, i32* @_RET_IP_, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @trace_kmem_cache_free(i32 %46, i8* %47)
  ret void
}

declare dso_local i32 @kmemleak_free_recursive(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @__kmem_cache_free(i8*, i32) #1

declare dso_local i32 @trace_kmem_cache_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
