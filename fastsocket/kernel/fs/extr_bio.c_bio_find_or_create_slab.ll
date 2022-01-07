; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_find_or_create_slab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_find_or_create_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_slab = type { i32, i32, %struct.kmem_cache*, i32 }
%struct.kmem_cache = type { i32 }

@bio_slab_lock = common dso_local global i32 0, align 4
@bio_slab_nr = common dso_local global i32 0, align 4
@bio_slabs = common dso_local global %struct.bio_slab* null, align 8
@bio_slab_max = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bio-%d\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"bio: create slab <%s> at %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmem_cache* (i32)* @bio_find_or_create_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmem_cache* @bio_find_or_create_slab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca %struct.bio_slab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio_slab*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = add i64 4, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  store %struct.kmem_cache* null, %struct.kmem_cache** %4, align 8
  store i32 -1, i32* %7, align 4
  %13 = call i32 @mutex_lock(i32* @bio_slab_lock)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %47, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @bio_slab_nr, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load %struct.bio_slab*, %struct.bio_slab** @bio_slabs, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %19, i64 %21
  store %struct.bio_slab* %22, %struct.bio_slab** %8, align 8
  %23 = load %struct.bio_slab*, %struct.bio_slab** %8, align 8
  %24 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %23, i32 0, i32 2
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** %24, align 8
  %26 = icmp ne %struct.kmem_cache* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %7, align 4
  br label %47

32:                                               ; preds = %27, %18
  %33 = load %struct.bio_slab*, %struct.bio_slab** %8, align 8
  %34 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.bio_slab*, %struct.bio_slab** %8, align 8
  %40 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %39, i32 0, i32 2
  %41 = load %struct.kmem_cache*, %struct.kmem_cache** %40, align 8
  store %struct.kmem_cache* %41, %struct.kmem_cache** %4, align 8
  %42 = load %struct.bio_slab*, %struct.bio_slab** %8, align 8
  %43 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %50

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %14

50:                                               ; preds = %38, %14
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %52 = icmp ne %struct.kmem_cache* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %114

54:                                               ; preds = %50
  %55 = load i32, i32* @bio_slab_nr, align 4
  %56 = load i32, i32* @bio_slab_max, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i32, i32* @bio_slab_max, align 4
  %63 = shl i32 %62, 1
  store i32 %63, i32* @bio_slab_max, align 4
  %64 = load %struct.bio_slab*, %struct.bio_slab** @bio_slabs, align 8
  %65 = load i32, i32* @bio_slab_max, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 %66, 24
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.bio_slab* @krealloc(%struct.bio_slab* %64, i32 %68, i32 %69)
  store %struct.bio_slab* %70, %struct.bio_slab** @bio_slabs, align 8
  %71 = load %struct.bio_slab*, %struct.bio_slab** @bio_slabs, align 8
  %72 = icmp ne %struct.bio_slab* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  br label %114

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %58, %54
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @bio_slab_nr, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* @bio_slab_nr, align 4
  store i32 %79, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.bio_slab*, %struct.bio_slab** @bio_slabs, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %82, i64 %84
  store %struct.bio_slab* %85, %struct.bio_slab** %5, align 8
  %86 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %87 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @snprintf(i32 %88, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %92 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %96 = call %struct.kmem_cache* @kmem_cache_create(i32 %93, i32 %94, i32 0, i32 %95, i32* null)
  store %struct.kmem_cache* %96, %struct.kmem_cache** %4, align 8
  %97 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %98 = icmp ne %struct.kmem_cache* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %81
  br label %114

100:                                              ; preds = %81
  %101 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %102 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %107 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %108 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %107, i32 0, i32 2
  store %struct.kmem_cache* %106, %struct.kmem_cache** %108, align 8
  %109 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %110 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %113 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %100, %99, %73, %53
  %115 = call i32 @mutex_unlock(i32* @bio_slab_lock)
  %116 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  ret %struct.kmem_cache* %116
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bio_slab* @krealloc(%struct.bio_slab*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local %struct.kmem_cache* @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
