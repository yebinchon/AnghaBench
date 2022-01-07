; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_kmem_cache_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_kmem_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i8*, i64, i64, void (i8*)*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ARCH_KMALLOC_MINALIGN = common dso_local global i32 0, align 4
@SLAB_DESTROY_BY_RCU = common dso_local global i64 0, align 8
@SLAB_HWCACHE_ALIGN = common dso_local global i64 0, align 8
@SLOB_ALIGN = common dso_local global i64 0, align 8
@ARCH_SLAB_MINALIGN = common dso_local global i64 0, align 8
@SLAB_PANIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Cannot create slab cache %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kmem_cache* @kmem_cache_create(i8* %0, i64 %1, i64 %2, i64 %3, void (i8*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca %struct.kmem_cache*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store void (i8*)* %4, void (i8*)** %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @ARCH_KMALLOC_MINALIGN, align 4
  %14 = call %struct.kmem_cache* @slob_alloc(i32 40, i32 %12, i32 %13, i32 -1)
  store %struct.kmem_cache* %14, %struct.kmem_cache** %11, align 8
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %16 = icmp ne %struct.kmem_cache* %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %5
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %20 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %23 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @SLAB_DESTROY_BY_RCU, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %30 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %28, %17
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %36 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load void (i8*)*, void (i8*)** %10, align 8
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %39 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %38, i32 0, i32 3
  store void (i8*)* %37, void (i8*)** %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @SLAB_HWCACHE_ALIGN, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i64, i64* @SLOB_ALIGN, align 8
  br label %47

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i64 [ %45, %44 ], [ 0, %46 ]
  %49 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %50 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %52 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ARCH_SLAB_MINALIGN, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i64, i64* @ARCH_SLAB_MINALIGN, align 8
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %59 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %62 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %69 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %60
  br label %80

71:                                               ; preds = %5
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @SLAB_PANIC, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %70
  %81 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @kmemleak_alloc(%struct.kmem_cache* %81, i32 40, i32 1, i32 %82)
  %84 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  ret %struct.kmem_cache* %84
}

declare dso_local %struct.kmem_cache* @slob_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i32 @kmemleak_alloc(%struct.kmem_cache*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
