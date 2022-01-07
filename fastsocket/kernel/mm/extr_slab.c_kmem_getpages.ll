; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_getpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_kmem_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, i32, i64 }
%struct.page = type { i32 }

@__GFP_COMP = common dso_local global i32 0, align 4
@SLAB_RECLAIM_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_RECLAIMABLE = common dso_local global i32 0, align 4
@__GFP_NOTRACK = common dso_local global i32 0, align 4
@NR_SLAB_RECLAIMABLE = common dso_local global i32 0, align 4
@NR_SLAB_UNRECLAIMABLE = common dso_local global i32 0, align 4
@kmemcheck_enabled = common dso_local global i64 0, align 8
@SLAB_NOTRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kmem_cache*, i32, i32)* @kmem_getpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kmem_getpages(%struct.kmem_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @__GFP_COMP, align 4
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %15 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %20 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @__GFP_RECLAIMABLE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @__GFP_NOTRACK, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %35 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.page* @alloc_pages_exact_node(i32 %30, i32 %33, i32 %36)
  store %struct.page* %37, %struct.page** %8, align 8
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %112

41:                                               ; preds = %29
  %42 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %43 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %47 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.page*, %struct.page** %8, align 8
  %54 = call i32 @page_zone(%struct.page* %53)
  %55 = load i32, i32* @NR_SLAB_RECLAIMABLE, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @add_zone_page_state(i32 %54, i32 %55, i32 %56)
  br label %64

58:                                               ; preds = %41
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = call i32 @page_zone(%struct.page* %59)
  %61 = load i32, i32* @NR_SLAB_UNRECLAIMABLE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @add_zone_page_state(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %52
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.page, %struct.page* %70, i64 %72
  %74 = call i32 @__SetPageSlab(%struct.page* %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %65

78:                                               ; preds = %65
  %79 = load i64, i64* @kmemcheck_enabled, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %83 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SLAB_NOTRACK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %81
  %89 = load %struct.page*, %struct.page** %8, align 8
  %90 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %91 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @kmemcheck_alloc_shadow(%struct.page* %89, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %97 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = load %struct.page*, %struct.page** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @kmemcheck_mark_uninitialized_pages(%struct.page* %101, i32 %102)
  br label %108

104:                                              ; preds = %88
  %105 = load %struct.page*, %struct.page** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @kmemcheck_mark_unallocated_pages(%struct.page* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %81, %78
  %110 = load %struct.page*, %struct.page** %8, align 8
  %111 = call i8* @page_address(%struct.page* %110)
  store i8* %111, i8** %4, align 8
  br label %112

112:                                              ; preds = %109, %40
  %113 = load i8*, i8** %4, align 8
  ret i8* %113
}

declare dso_local %struct.page* @alloc_pages_exact_node(i32, i32, i32) #1

declare dso_local i32 @add_zone_page_state(i32, i32, i32) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local i32 @__SetPageSlab(%struct.page*) #1

declare dso_local i32 @kmemcheck_alloc_shadow(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @kmemcheck_mark_uninitialized_pages(%struct.page*, i32) #1

declare dso_local i32 @kmemcheck_mark_unallocated_pages(%struct.page*, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
