; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c___slab_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c___slab_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.page = type { i8**, i32 }
%struct.kmem_cache_cpu = type { i32 }

@FREE_SLOWPATH = common dso_local global i32 0, align 4
@SLABDEBUG = common dso_local global i64 0, align 8
@FREE_FROZEN = common dso_local global i32 0, align 4
@FREE_ADD_PARTIAL = common dso_local global i32 0, align 4
@FREE_REMOVE_PARTIAL = common dso_local global i32 0, align 4
@FREE_SLAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.page*, i8*, i64, i32)* @__slab_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__slab_free(%struct.kmem_cache* %0, %struct.page* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.kmem_cache_cpu*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i8**
  store i8** %15, i8*** %12, align 8
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %17 = call i32 (...) @raw_smp_processor_id()
  %18 = call %struct.kmem_cache_cpu* @get_cpu_slab(%struct.kmem_cache* %16, i32 %17)
  store %struct.kmem_cache_cpu* %18, %struct.kmem_cache_cpu** %13, align 8
  %19 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %13, align 8
  %20 = load i32, i32* @FREE_SLOWPATH, align 4
  %21 = call i32 @stat(%struct.kmem_cache_cpu* %19, i32 %20)
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = call i32 @slab_lock(%struct.page* %22)
  %24 = load i64, i64* @SLABDEBUG, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call i64 @PageSlubDebug(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %5
  %31 = phi i1 [ false, %5 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %111

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %119, %36
  %38 = load %struct.page*, %struct.page** %7, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = bitcast i8** %40 to i8*
  %42 = load i8**, i8*** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %41, i8** %45, align 8
  store i8* %41, i8** %11, align 8
  %46 = load i8**, i8*** %12, align 8
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  store i8** %46, i8*** %48, align 8
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.page*, %struct.page** %7, align 8
  %54 = call i32 @PageSlubFrozen(%struct.page* %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %37
  %58 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %13, align 8
  %59 = load i32, i32* @FREE_FROZEN, align 4
  %60 = call i32 @stat(%struct.kmem_cache_cpu* %58, i32 %59)
  br label %89

61:                                               ; preds = %37
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = getelementptr inbounds %struct.page, %struct.page* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %92

71:                                               ; preds = %61
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = call i32 @page_to_nid(%struct.page* %80)
  %82 = call i32 @get_node(%struct.kmem_cache* %79, i32 %81)
  %83 = load %struct.page*, %struct.page** %7, align 8
  %84 = call i32 @add_partial(i32 %82, %struct.page* %83, i32 1)
  %85 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %13, align 8
  %86 = load i32, i32* @FREE_ADD_PARTIAL, align 4
  %87 = call i32 @stat(%struct.kmem_cache_cpu* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %71
  br label %89

89:                                               ; preds = %118, %88, %57
  %90 = load %struct.page*, %struct.page** %7, align 8
  %91 = call i32 @slab_unlock(%struct.page* %90)
  br label %120

92:                                               ; preds = %70
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %97 = load %struct.page*, %struct.page** %7, align 8
  %98 = call i32 @remove_partial(%struct.kmem_cache* %96, %struct.page* %97)
  %99 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %13, align 8
  %100 = load i32, i32* @FREE_REMOVE_PARTIAL, align 4
  %101 = call i32 @stat(%struct.kmem_cache_cpu* %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %92
  %103 = load %struct.page*, %struct.page** %7, align 8
  %104 = call i32 @slab_unlock(%struct.page* %103)
  %105 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %13, align 8
  %106 = load i32, i32* @FREE_SLAB, align 4
  %107 = call i32 @stat(%struct.kmem_cache_cpu* %105, i32 %106)
  %108 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %109 = load %struct.page*, %struct.page** %7, align 8
  %110 = call i32 @discard_slab(%struct.kmem_cache* %108, %struct.page* %109)
  br label %120

111:                                              ; preds = %35
  %112 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %113 = load %struct.page*, %struct.page** %7, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @free_debug_processing(%struct.kmem_cache* %112, %struct.page* %113, i8* %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  br label %89

119:                                              ; preds = %111
  br label %37

120:                                              ; preds = %102, %89
  ret void
}

declare dso_local %struct.kmem_cache_cpu* @get_cpu_slab(%struct.kmem_cache*, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @stat(%struct.kmem_cache_cpu*, i32) #1

declare dso_local i32 @slab_lock(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @PageSlubDebug(%struct.page*) #1

declare dso_local i32 @PageSlubFrozen(%struct.page*) #1

declare dso_local i32 @add_partial(i32, %struct.page*, i32) #1

declare dso_local i32 @get_node(%struct.kmem_cache*, i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @slab_unlock(%struct.page*) #1

declare dso_local i32 @remove_partial(%struct.kmem_cache*, %struct.page*) #1

declare dso_local i32 @discard_slab(%struct.kmem_cache*, %struct.page*) #1

declare dso_local i32 @free_debug_processing(%struct.kmem_cache*, %struct.page*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
