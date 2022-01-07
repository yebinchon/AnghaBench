; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_____cache_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_____cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.array_cache = type { i64, i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kmem_cache*, i32)* @____cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @____cache_alloc(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.array_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @check_irq_off()
  %8 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %9 = call %struct.array_cache* @cpu_cache_get(%struct.kmem_cache* %8)
  store %struct.array_cache* %9, %struct.array_cache** %6, align 8
  %10 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %11 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @likely(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %17 = call i32 @STATS_INC_ALLOCHIT(%struct.kmem_cache* %16)
  %18 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %19 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %21 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %20, i32 0, i32 2
  %22 = load i8**, i8*** %21, align 8
  %23 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %24 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds i8*, i8** %22, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %31 = call i32 @STATS_INC_ALLOCMISS(%struct.kmem_cache* %30)
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @cache_alloc_refill(%struct.kmem_cache* %32, i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %36 = call %struct.array_cache* @cpu_cache_get(%struct.kmem_cache* %35)
  store %struct.array_cache* %36, %struct.array_cache** %6, align 8
  br label %37

37:                                               ; preds = %29, %15
  %38 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %39 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = load %struct.array_cache*, %struct.array_cache** %6, align 8
  %42 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = call i32 @kmemleak_erase(i8** %44)
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i32 @check_irq_off(...) #1

declare dso_local %struct.array_cache* @cpu_cache_get(%struct.kmem_cache*) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @STATS_INC_ALLOCHIT(%struct.kmem_cache*) #1

declare dso_local i32 @STATS_INC_ALLOCMISS(%struct.kmem_cache*) #1

declare dso_local i8* @cache_alloc_refill(%struct.kmem_cache*, i32) #1

declare dso_local i32 @kmemleak_erase(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
