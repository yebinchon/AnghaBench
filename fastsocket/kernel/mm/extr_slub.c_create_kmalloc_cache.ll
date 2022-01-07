; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_create_kmalloc_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_create_kmalloc_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@SLUB_DMA = common dso_local global i32 0, align 4
@SLAB_CACHE_DMA = common dso_local global i32 0, align 4
@ARCH_KMALLOC_MINALIGN = common dso_local global i32 0, align 4
@slab_caches = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Creation of kmalloc slab %s size=%d failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmem_cache* (%struct.kmem_cache*, i8*, i32, i32)* @create_kmalloc_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmem_cache* @create_kmalloc_cache(%struct.kmem_cache* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @SLUB_DMA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @SLAB_CACHE_DMA, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %15, %4
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ARCH_KMALLOC_MINALIGN, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @kmem_cache_open(%struct.kmem_cache* %18, i32 %19, i8* %20, i32 %21, i32 %22, i32 %23, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %29 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %28, i32 0, i32 0
  %30 = call i32 @list_add(i32* %29, i32* @slab_caches)
  %31 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %32 = call i64 @sysfs_slab_add(%struct.kmem_cache* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %37

35:                                               ; preds = %27
  %36 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  store %struct.kmem_cache* %36, %struct.kmem_cache** %5, align 8
  br label %41

37:                                               ; preds = %34, %26
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %35
  %42 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  ret %struct.kmem_cache* %42
}

declare dso_local i32 @kmem_cache_open(%struct.kmem_cache*, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @sysfs_slab_add(%struct.kmem_cache*) #1

declare dso_local i32 @panic(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
