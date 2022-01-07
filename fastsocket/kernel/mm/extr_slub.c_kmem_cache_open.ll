; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_kmem_cache_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_kmem_cache_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i8*, void (i8*)*, i64, i64, i64, i32, i32, i64, i32, i32 }

@kmem_size = common dso_local global i32 0, align 4
@disable_higher_order_debug = common dso_local global i64 0, align 8
@DEBUG_METADATA_FLAGS = common dso_local global i32 0, align 4
@SLUB_DMA = common dso_local global i32 0, align 4
@SLAB_PANIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"Cannot create slab %s size=%lu realsize=%u order=%u offset=%u flags=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32, i8*, i64, i64, i64, void (i8*)*)* @kmem_cache_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmem_cache_open(%struct.kmem_cache* %0, i32 %1, i8* %2, i64 %3, i64 %4, i64 %5, void (i8*)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kmem_cache*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca void (i8*)*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store void (i8*)* %6, void (i8*)** %15, align 8
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %17 = load i32, i32* @kmem_size, align 4
  %18 = call i32 @memset(%struct.kmem_cache* %16, i32 0, i32 %17)
  %19 = load i8*, i8** %11, align 8
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %21 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load void (i8*)*, void (i8*)** %15, align 8
  %23 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %24 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %23, i32 0, i32 1
  store void (i8*)* %22, void (i8*)** %24, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %27 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %30 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load void (i8*)*, void (i8*)** %15, align 8
  %35 = call i32 @kmem_cache_flags(i64 %31, i64 %32, i8* %33, void (i8*)* %34)
  %36 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %37 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %39 = call i32 @calculate_sizes(%struct.kmem_cache* %38, i32 -1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %7
  br label %99

42:                                               ; preds = %7
  %43 = load i64, i64* @disable_higher_order_debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %47 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @get_order(i64 %48)
  %50 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %51 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @get_order(i64 %52)
  %54 = icmp sgt i64 %49, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %45
  %56 = load i32, i32* @DEBUG_METADATA_FLAGS, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %59 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %63 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %65 = call i32 @calculate_sizes(%struct.kmem_cache* %64, i32 -1)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %55
  br label %99

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69, %42
  %71 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %73 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ilog2(i64 %74)
  %76 = call i32 @set_min_partial(%struct.kmem_cache* %71, i32 %75)
  %77 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %78 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %77, i32 0, i32 5
  store i32 1, i32* %78, align 8
  %79 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @SLUB_DMA, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = call i32 @init_kmem_cache_nodes(%struct.kmem_cache* %79, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %70
  br label %99

87:                                               ; preds = %70
  %88 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @SLUB_DMA, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = call i64 @alloc_kmem_cache_cpus(%struct.kmem_cache* %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 1, i32* %8, align 4
  br label %122

96:                                               ; preds = %87
  %97 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %98 = call i32 @free_kmem_cache_nodes(%struct.kmem_cache* %97)
  br label %99

99:                                               ; preds = %96, %86, %67, %41
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* @SLAB_PANIC, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %99
  %105 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %106 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %110 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %113 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @oo_order(i32 %114)
  %116 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %117 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %14, align 8
  %120 = call i32 @panic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %107, i64 %108, i64 %111, i32 %115, i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %104, %99
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %121, %95
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.kmem_cache*, i32, i32) #1

declare dso_local i32 @kmem_cache_flags(i64, i64, i8*, void (i8*)*) #1

declare dso_local i32 @calculate_sizes(%struct.kmem_cache*, i32) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @set_min_partial(%struct.kmem_cache*, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @init_kmem_cache_nodes(%struct.kmem_cache*, i32) #1

declare dso_local i64 @alloc_kmem_cache_cpus(%struct.kmem_cache*, i32) #1

declare dso_local i32 @free_kmem_cache_nodes(%struct.kmem_cache*) #1

declare dso_local i32 @panic(i8*, i8*, i64, i64, i32, i64, i64) #1

declare dso_local i32 @oo_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
