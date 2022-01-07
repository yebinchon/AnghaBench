; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_allocate_slab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_allocate_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kmem_cache = type { i32, i32, i64, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects }
%struct.kmem_cache_order_objects = type { i32 }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@ORDER_FALLBACK = common dso_local global i32 0, align 4
@kmemcheck_enabled = common dso_local global i64 0, align 8
@SLAB_NOTRACK = common dso_local global i32 0, align 4
@DEBUG_DEFAULT_FLAGS = common dso_local global i32 0, align 4
@SLAB_RECLAIM_ACCOUNT = common dso_local global i32 0, align 4
@NR_SLAB_RECLAIMABLE = common dso_local global i32 0, align 4
@NR_SLAB_UNRECLAIMABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.kmem_cache*, i32, i32)* @allocate_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @allocate_slab(%struct.kmem_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.kmem_cache_order_objects, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %13 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %12, i32 0, i32 4
  %14 = bitcast %struct.kmem_cache_order_objects* %9 to i8*
  %15 = bitcast %struct.kmem_cache_order_objects* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %17 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @__GFP_NOWARN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @__GFP_NORETRY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @__GFP_NOFAIL, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.page* @alloc_slab_page(i32 %29, i32 %30, i32 %32)
  store %struct.page* %33, %struct.page** %8, align 8
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = icmp ne %struct.page* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %3
  %41 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %42 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %41, i32 0, i32 3
  %43 = bitcast %struct.kmem_cache_order_objects* %9 to i8*
  %44 = bitcast %struct.kmem_cache_order_objects* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %44, i64 4, i1 false)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.page* @alloc_slab_page(i32 %45, i32 %46, i32 %48)
  store %struct.page* %49, %struct.page** %8, align 8
  %50 = load %struct.page*, %struct.page** %8, align 8
  %51 = icmp ne %struct.page* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  store %struct.page* null, %struct.page** %4, align 8
  br label %122

53:                                               ; preds = %40
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %55 = call i32 (...) @raw_smp_processor_id()
  %56 = call i32 @get_cpu_slab(%struct.kmem_cache* %54, i32 %55)
  %57 = load i32, i32* @ORDER_FALLBACK, align 4
  %58 = call i32 @stat(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %3
  %60 = load i64, i64* @kmemcheck_enabled, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %59
  %63 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %64 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SLAB_NOTRACK, align 4
  %67 = load i32, i32* @DEBUG_DEFAULT_FLAGS, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @oo_order(i32 %73)
  %75 = shl i32 1, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.page*, %struct.page** %8, align 8
  %77 = getelementptr inbounds %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @oo_order(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @kmemcheck_alloc_shadow(%struct.page* %76, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %84 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %71
  %88 = load %struct.page*, %struct.page** %8, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @kmemcheck_mark_uninitialized_pages(%struct.page* %88, i32 %89)
  br label %95

91:                                               ; preds = %71
  %92 = load %struct.page*, %struct.page** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @kmemcheck_mark_unallocated_pages(%struct.page* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %62, %59
  %97 = getelementptr inbounds %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @oo_objects(i32 %98)
  %100 = load %struct.page*, %struct.page** %8, align 8
  %101 = getelementptr inbounds %struct.page, %struct.page* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.page*, %struct.page** %8, align 8
  %103 = call i32 @page_zone(%struct.page* %102)
  %104 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %105 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* @NR_SLAB_RECLAIMABLE, align 4
  br label %114

112:                                              ; preds = %96
  %113 = load i32, i32* @NR_SLAB_UNRECLAIMABLE, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = getelementptr inbounds %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects* %9, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @oo_order(i32 %117)
  %119 = shl i32 1, %118
  %120 = call i32 @mod_zone_page_state(i32 %103, i32 %115, i32 %119)
  %121 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %121, %struct.page** %4, align 8
  br label %122

122:                                              ; preds = %114, %52
  %123 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.page* @alloc_slab_page(i32, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @stat(i32, i32) #2

declare dso_local i32 @get_cpu_slab(%struct.kmem_cache*, i32) #2

declare dso_local i32 @raw_smp_processor_id(...) #2

declare dso_local i32 @oo_order(i32) #2

declare dso_local i32 @kmemcheck_alloc_shadow(%struct.page*, i32, i32, i32) #2

declare dso_local i32 @kmemcheck_mark_uninitialized_pages(%struct.page*, i32) #2

declare dso_local i32 @kmemcheck_mark_unallocated_pages(%struct.page*, i32) #2

declare dso_local i32 @oo_objects(i32) #2

declare dso_local i32 @mod_zone_page_state(i32, i32, i32) #2

declare dso_local i32 @page_zone(%struct.page*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
