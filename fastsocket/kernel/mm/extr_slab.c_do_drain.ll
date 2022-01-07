; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_do_drain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_do_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.array_cache = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_drain(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca %struct.array_cache*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.kmem_cache*
  store %struct.kmem_cache* %7, %struct.kmem_cache** %3, align 8
  %8 = call i32 (...) @numa_node_id()
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @check_irq_off()
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %11 = call %struct.array_cache* @cpu_cache_get(%struct.kmem_cache* %10)
  store %struct.array_cache* %11, %struct.array_cache** %4, align 8
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %13 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %22 = load %struct.array_cache*, %struct.array_cache** %4, align 8
  %23 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.array_cache*, %struct.array_cache** %4, align 8
  %26 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @free_block(%struct.kmem_cache* %21, i32 %24, i64 %27, i32 %28)
  %30 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %31 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.array_cache*, %struct.array_cache** %4, align 8
  %40 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  ret void
}

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @check_irq_off(...) #1

declare dso_local %struct.array_cache* @cpu_cache_get(%struct.kmem_cache*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @free_block(%struct.kmem_cache*, i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
