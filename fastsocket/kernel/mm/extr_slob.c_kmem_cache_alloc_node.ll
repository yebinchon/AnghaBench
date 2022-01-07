; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_kmem_cache_alloc_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_kmem_cache_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, i32 (i8*)*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@SLOB_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmem_cache_alloc_node(%struct.kmem_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %9 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %15 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %19 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @slob_alloc(i32 %16, i32 %17, i32 %20, i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = load i32, i32* @_RET_IP_, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %26 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %29 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SLOB_UNITS(i32 %30)
  %32 = load i32, i32* @SLOB_UNIT, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @trace_kmem_cache_alloc_node(i32 %23, i8* %24, i32 %27, i32 %33, i32 %34, i32 %35)
  br label %59

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %40 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @get_order(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @slob_new_pages(i32 %38, i32 %42, i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i32, i32* @_RET_IP_, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %48 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %52 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @get_order(i32 %53)
  %55 = shl i32 %50, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @trace_kmem_cache_alloc_node(i32 %45, i8* %46, i32 %49, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %37, %13
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %61 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %60, i32 0, i32 2
  %62 = load i32 (i8*)*, i32 (i8*)** %61, align 8
  %63 = icmp ne i32 (i8*)* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %66 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %65, i32 0, i32 2
  %67 = load i32 (i8*)*, i32 (i8*)** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 %67(i8* %68)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %73 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %76 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @kmemleak_alloc_recursive(i8* %71, i32 %74, i32 1, i32 %77, i32 %78)
  %80 = load i8*, i8** %7, align 8
  ret i8* %80
}

declare dso_local i8* @slob_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @trace_kmem_cache_alloc_node(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SLOB_UNITS(i32) #1

declare dso_local i8* @slob_new_pages(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kmemleak_alloc_recursive(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
