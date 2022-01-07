; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_cache_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_cache_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i64, i64, i64, %struct.kmem_list3** }
%struct.kmem_list3 = type { i64, i32, i32, i32 }
%struct.slab = type { i32 }

@GFP_SLAB_BUG_MASK = common dso_local global i32 0, align 4
@GFP_CONSTRAINT_MASK = common dso_local global i32 0, align 4
@GFP_RECLAIM_MASK = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32, i32, i8*)* @cache_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_grow(%struct.kmem_cache* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.slab*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kmem_list3*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_SLAB_BUG_MASK, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_CONSTRAINT_MASK, align 4
  %20 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  store i32 %22, i32* %12, align 4
  %23 = call i32 (...) @check_irq_off()
  %24 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %25 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %24, i32 0, i32 3
  %26 = load %struct.kmem_list3**, %struct.kmem_list3*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.kmem_list3*, %struct.kmem_list3** %26, i64 %28
  %30 = load %struct.kmem_list3*, %struct.kmem_list3** %29, align 8
  store %struct.kmem_list3* %30, %struct.kmem_list3** %13, align 8
  %31 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %32 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %35 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %38 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %42 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %45 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %4
  %49 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %50 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %4
  %52 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %53 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %56 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = mul i64 %58, %57
  store i64 %59, i64* %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @__GFP_WAIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = call i32 (...) @local_irq_enable()
  br label %66

66:                                               ; preds = %64, %51
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @kmem_flagcheck(%struct.kmem_cache* %67, i32 %68)
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @kmem_getpages(%struct.kmem_cache* %73, i32 %74, i32 %75)
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %72, %66
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %136

81:                                               ; preds = %77
  %82 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @GFP_CONSTRAINT_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = load i32, i32* %8, align 4
  %90 = call %struct.slab* @alloc_slabmgmt(%struct.kmem_cache* %82, i8* %83, i64 %84, i32 %88, i32 %89)
  store %struct.slab* %90, %struct.slab** %10, align 8
  %91 = load %struct.slab*, %struct.slab** %10, align 8
  %92 = icmp ne %struct.slab* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %81
  br label %132

94:                                               ; preds = %81
  %95 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %96 = load %struct.slab*, %struct.slab** %10, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @slab_map_pages(%struct.kmem_cache* %95, %struct.slab* %96, i8* %97)
  %99 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %100 = load %struct.slab*, %struct.slab** %10, align 8
  %101 = call i32 @cache_init_objs(%struct.kmem_cache* %99, %struct.slab* %100)
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @__GFP_WAIT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = call i32 (...) @local_irq_disable()
  br label %108

108:                                              ; preds = %106, %94
  %109 = call i32 (...) @check_irq_off()
  %110 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %111 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %110, i32 0, i32 1
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load %struct.slab*, %struct.slab** %10, align 8
  %114 = getelementptr inbounds %struct.slab, %struct.slab* %113, i32 0, i32 0
  %115 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %116 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %115, i32 0, i32 3
  %117 = call i32 @list_add_tail(i32* %114, i32* %116)
  %118 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %119 = call i32 @STATS_INC_GROWN(%struct.kmem_cache* %118)
  %120 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %121 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %124 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  %129 = load %struct.kmem_list3*, %struct.kmem_list3** %13, align 8
  %130 = getelementptr inbounds %struct.kmem_list3, %struct.kmem_list3* %129, i32 0, i32 1
  %131 = call i32 @spin_unlock(i32* %130)
  store i32 1, i32* %5, align 4
  br label %144

132:                                              ; preds = %93
  %133 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @kmem_freepages(%struct.kmem_cache* %133, i8* %134)
  br label %136

136:                                              ; preds = %132, %80
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @__GFP_WAIT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i32 (...) @local_irq_disable()
  br label %143

143:                                              ; preds = %141, %136
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %108
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @check_irq_off(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @kmem_flagcheck(%struct.kmem_cache*, i32) #1

declare dso_local i8* @kmem_getpages(%struct.kmem_cache*, i32, i32) #1

declare dso_local %struct.slab* @alloc_slabmgmt(%struct.kmem_cache*, i8*, i64, i32, i32) #1

declare dso_local i32 @slab_map_pages(%struct.kmem_cache*, %struct.slab*, i8*) #1

declare dso_local i32 @cache_init_objs(%struct.kmem_cache*, %struct.slab*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @STATS_INC_GROWN(%struct.kmem_cache*) #1

declare dso_local i32 @kmem_freepages(%struct.kmem_cache*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
