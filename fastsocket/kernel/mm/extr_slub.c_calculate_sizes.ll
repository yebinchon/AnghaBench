; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_calculate_sizes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_calculate_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i32, i64 }

@SLAB_DESTROY_BY_RCU = common dso_local global i64 0, align 8
@SLAB_POISON = common dso_local global i64 0, align 8
@__GFP_COMP = common dso_local global i32 0, align 4
@SLAB_CACHE_DMA = common dso_local global i32 0, align 4
@SLUB_DMA = common dso_local global i32 0, align 4
@SLAB_RECLAIM_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_RECLAIMABLE = common dso_local global i32 0, align 4
@SLAB_RED_ZONE = common dso_local global i64 0, align 8
@SLAB_STORE_USER = common dso_local global i64 0, align 8
@__OBJECT_POISON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32)* @calculate_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_sizes(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %11 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %14 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %17 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @ALIGN(i64 %19, i64 8)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %23 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @SLAB_DESTROY_BY_RCU, align 8
  %26 = load i64, i64* @SLAB_POISON, align 8
  %27 = or i64 %25, %26
  %28 = and i64 %24, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %32 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30, %2
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %38 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %45 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @calculate_alignment(i64 %42, i64 %43, i64 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %50 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @ALIGN(i64 %51, i64 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %56 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %55, i32 0, i32 5
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %41
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %9, align 4
  br label %64

61:                                               ; preds = %41
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @calculate_order(i64 %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %59
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %143

68:                                               ; preds = %64
  %69 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %70 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %69, i32 0, i32 9
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @__GFP_COMP, align 4
  %75 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %76 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %81 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @SLAB_CACHE_DMA, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %82, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* @SLUB_DMA, align 4
  %89 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %90 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %79
  %94 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %95 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %98 = sext i32 %97 to i64
  %99 = and i64 %96, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i32, i32* @__GFP_RECLAIMABLE, align 4
  %103 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %104 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %93
  %108 = load i32, i32* %9, align 4
  %109 = load i64, i64* %7, align 8
  %110 = call i8* @oo_make(i32 %108, i64 %109)
  %111 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %112 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @get_order(i64 %113)
  %115 = load i64, i64* %7, align 8
  %116 = call i8* @oo_make(i32 %114, i64 %115)
  %117 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %118 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %117, i32 0, i32 8
  store i8* %116, i8** %118, align 8
  %119 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %120 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %119, i32 0, i32 6
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @oo_objects(i8* %121)
  %123 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %124 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %123, i32 0, i32 7
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @oo_objects(i8* %125)
  %127 = icmp sgt i64 %122, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %107
  %129 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %130 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %129, i32 0, i32 6
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %133 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %128, %107
  %135 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %136 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %135, i32 0, i32 6
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @oo_objects(i8* %137)
  %139 = icmp ne i64 %138, 0
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %134, %67
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @calculate_alignment(i64, i64, i64) #1

declare dso_local i32 @calculate_order(i64) #1

declare dso_local i8* @oo_make(i32, i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @oo_objects(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
