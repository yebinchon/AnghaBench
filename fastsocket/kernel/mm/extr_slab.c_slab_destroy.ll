; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_slab_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_slab_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }
%struct.slab = type { i32, i32 }
%struct.slab_rcu = type { i32, i8*, %struct.kmem_cache* }

@SLAB_DESTROY_BY_RCU = common dso_local global i32 0, align 4
@kmem_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.slab*)* @slab_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slab_destroy(%struct.kmem_cache* %0, %struct.slab* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca %struct.slab*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.slab_rcu*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store %struct.slab* %1, %struct.slab** %4, align 8
  %7 = load %struct.slab*, %struct.slab** %4, align 8
  %8 = getelementptr inbounds %struct.slab, %struct.slab* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.slab*, %struct.slab** %4, align 8
  %11 = getelementptr inbounds %struct.slab, %struct.slab* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %5, align 8
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %17 = load %struct.slab*, %struct.slab** %4, align 8
  %18 = call i32 @slab_destroy_debugcheck(%struct.kmem_cache* %16, %struct.slab* %17)
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %20 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SLAB_DESTROY_BY_RCU, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.slab*, %struct.slab** %4, align 8
  %28 = bitcast %struct.slab* %27 to %struct.slab_rcu*
  store %struct.slab_rcu* %28, %struct.slab_rcu** %6, align 8
  %29 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %30 = load %struct.slab_rcu*, %struct.slab_rcu** %6, align 8
  %31 = getelementptr inbounds %struct.slab_rcu, %struct.slab_rcu* %30, i32 0, i32 2
  store %struct.kmem_cache* %29, %struct.kmem_cache** %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.slab_rcu*, %struct.slab_rcu** %6, align 8
  %34 = getelementptr inbounds %struct.slab_rcu, %struct.slab_rcu* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.slab_rcu*, %struct.slab_rcu** %6, align 8
  %36 = getelementptr inbounds %struct.slab_rcu, %struct.slab_rcu* %35, i32 0, i32 0
  %37 = load i32, i32* @kmem_rcu_free, align 4
  %38 = call i32 @call_rcu(i32* %36, i32 %37)
  br label %53

39:                                               ; preds = %2
  %40 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @kmem_freepages(%struct.kmem_cache* %40, i8* %41)
  %43 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %44 = call i64 @OFF_SLAB(%struct.kmem_cache* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %48 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.slab*, %struct.slab** %4, align 8
  %51 = call i32 @kmem_cache_free(i32 %49, %struct.slab* %50)
  br label %52

52:                                               ; preds = %46, %39
  br label %53

53:                                               ; preds = %52, %26
  ret void
}

declare dso_local i32 @slab_destroy_debugcheck(%struct.kmem_cache*, %struct.slab*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @kmem_freepages(%struct.kmem_cache*, i8*) #1

declare dso_local i64 @OFF_SLAB(%struct.kmem_cache*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.slab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
