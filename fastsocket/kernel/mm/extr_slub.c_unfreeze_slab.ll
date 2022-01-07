; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_unfreeze_slab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_unfreeze_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i64 }
%struct.page = type { i64, i64 }
%struct.kmem_cache_node = type { i64 }
%struct.kmem_cache_cpu = type { i32 }

@DEACTIVATE_TO_TAIL = common dso_local global i32 0, align 4
@DEACTIVATE_TO_HEAD = common dso_local global i32 0, align 4
@DEACTIVATE_FULL = common dso_local global i32 0, align 4
@SLABDEBUG = common dso_local global i64 0, align 8
@SLAB_STORE_USER = common dso_local global i32 0, align 4
@DEACTIVATE_EMPTY = common dso_local global i32 0, align 4
@FREE_SLAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.page*, i32)* @unfreeze_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unfreeze_slab(%struct.kmem_cache* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kmem_cache_node*, align 8
  %8 = alloca %struct.kmem_cache_cpu*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = call i32 @page_to_nid(%struct.page* %10)
  %12 = call %struct.kmem_cache_node* @get_node(%struct.kmem_cache* %9, i32 %11)
  store %struct.kmem_cache_node* %12, %struct.kmem_cache_node** %7, align 8
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %14 = call i32 (...) @smp_processor_id()
  %15 = call %struct.kmem_cache_cpu* @get_cpu_slab(%struct.kmem_cache* %13, i32 %14)
  store %struct.kmem_cache_cpu* %15, %struct.kmem_cache_cpu** %8, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @__ClearPageSlubFrozen(%struct.page* %16)
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %3
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %7, align 8
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @add_partial(%struct.kmem_cache_node* %28, %struct.page* %29, i32 %30)
  %32 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @DEACTIVATE_TO_TAIL, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @DEACTIVATE_TO_HEAD, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @stat(%struct.kmem_cache_cpu* %32, i32 %40)
  br label %64

42:                                               ; preds = %22
  %43 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %8, align 8
  %44 = load i32, i32* @DEACTIVATE_FULL, align 4
  %45 = call i32 @stat(%struct.kmem_cache_cpu* %43, i32 %44)
  %46 = load i64, i64* @SLABDEBUG, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i64 @PageSlubDebug(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %54 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SLAB_STORE_USER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %7, align 8
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i32 @add_full(%struct.kmem_cache_node* %60, %struct.page* %61)
  br label %63

63:                                               ; preds = %59, %52, %48, %42
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = call i32 @slab_unlock(%struct.page* %65)
  br label %96

67:                                               ; preds = %3
  %68 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %8, align 8
  %69 = load i32, i32* @DEACTIVATE_EMPTY, align 4
  %70 = call i32 @stat(%struct.kmem_cache_cpu* %68, i32 %69)
  %71 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %7, align 8
  %72 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %75 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %7, align 8
  %80 = load %struct.page*, %struct.page** %5, align 8
  %81 = call i32 @add_partial(%struct.kmem_cache_node* %79, %struct.page* %80, i32 1)
  %82 = load %struct.page*, %struct.page** %5, align 8
  %83 = call i32 @slab_unlock(%struct.page* %82)
  br label %95

84:                                               ; preds = %67
  %85 = load %struct.page*, %struct.page** %5, align 8
  %86 = call i32 @slab_unlock(%struct.page* %85)
  %87 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %88 = call i32 (...) @raw_smp_processor_id()
  %89 = call %struct.kmem_cache_cpu* @get_cpu_slab(%struct.kmem_cache* %87, i32 %88)
  %90 = load i32, i32* @FREE_SLAB, align 4
  %91 = call i32 @stat(%struct.kmem_cache_cpu* %89, i32 %90)
  %92 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %93 = load %struct.page*, %struct.page** %5, align 8
  %94 = call i32 @discard_slab(%struct.kmem_cache* %92, %struct.page* %93)
  br label %95

95:                                               ; preds = %84, %78
  br label %96

96:                                               ; preds = %95, %64
  ret void
}

declare dso_local %struct.kmem_cache_node* @get_node(%struct.kmem_cache*, i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local %struct.kmem_cache_cpu* @get_cpu_slab(%struct.kmem_cache*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__ClearPageSlubFrozen(%struct.page*) #1

declare dso_local i32 @add_partial(%struct.kmem_cache_node*, %struct.page*, i32) #1

declare dso_local i32 @stat(%struct.kmem_cache_cpu*, i32) #1

declare dso_local i64 @PageSlubDebug(%struct.page*) #1

declare dso_local i32 @add_full(%struct.kmem_cache_node*, %struct.page*) #1

declare dso_local i32 @slab_unlock(%struct.page*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @discard_slab(%struct.kmem_cache*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
