; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_mcache.c_pohmelfs_mcache_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_mcache.c_pohmelfs_mcache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_mcache = type { i32, i32, i32, i8*, i32, i32, i32 }
%struct.pohmelfs_sb = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@pohmelfs_mcache_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pohmelfs_mcache* @pohmelfs_mcache_alloc(%struct.pohmelfs_sb* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pohmelfs_mcache*, align 8
  %6 = alloca %struct.pohmelfs_sb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pohmelfs_mcache*, align 8
  %11 = alloca i32, align 4
  store %struct.pohmelfs_sb* %0, %struct.pohmelfs_sb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @pohmelfs_mcache_pool, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pohmelfs_mcache* @mempool_alloc(i32 %14, i32 %15)
  store %struct.pohmelfs_mcache* %16, %struct.pohmelfs_mcache** %10, align 8
  %17 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %18 = icmp ne %struct.pohmelfs_mcache* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %61

20:                                               ; preds = %4
  %21 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %22 = getelementptr inbounds %struct.pohmelfs_mcache, %struct.pohmelfs_mcache* %21, i32 0, i32 6
  %23 = call i32 @init_completion(i32* %22)
  %24 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %25 = getelementptr inbounds %struct.pohmelfs_mcache, %struct.pohmelfs_mcache* %24, i32 0, i32 5
  store i32 0, i32* %25, align 4
  %26 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %27 = getelementptr inbounds %struct.pohmelfs_mcache, %struct.pohmelfs_mcache* %26, i32 0, i32 4
  %28 = call i32 @atomic_set(i32* %27, i32 1)
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %31 = getelementptr inbounds %struct.pohmelfs_mcache, %struct.pohmelfs_mcache* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %34 = getelementptr inbounds %struct.pohmelfs_mcache, %struct.pohmelfs_mcache* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %37 = getelementptr inbounds %struct.pohmelfs_mcache, %struct.pohmelfs_mcache* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %39 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %38, i32 0, i32 1
  %40 = call i32 @atomic_long_inc_return(i32* %39)
  %41 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %42 = getelementptr inbounds %struct.pohmelfs_mcache, %struct.pohmelfs_mcache* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %44 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %47 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %48 = call i32 @pohmelfs_mcache_insert(%struct.pohmelfs_sb* %46, %struct.pohmelfs_mcache* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %50 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %20
  br label %57

55:                                               ; preds = %20
  %56 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  store %struct.pohmelfs_mcache* %56, %struct.pohmelfs_mcache** %5, align 8
  br label %64

57:                                               ; preds = %54
  %58 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %10, align 8
  %59 = load i32, i32* @pohmelfs_mcache_pool, align 4
  %60 = call i32 @mempool_free(%struct.pohmelfs_mcache* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %19
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.pohmelfs_mcache* @ERR_PTR(i32 %62)
  store %struct.pohmelfs_mcache* %63, %struct.pohmelfs_mcache** %5, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.pohmelfs_mcache*, %struct.pohmelfs_mcache** %5, align 8
  ret %struct.pohmelfs_mcache* %65
}

declare dso_local %struct.pohmelfs_mcache* @mempool_alloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_long_inc_return(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pohmelfs_mcache_insert(%struct.pohmelfs_sb*, %struct.pohmelfs_mcache*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mempool_free(%struct.pohmelfs_mcache*, i32) #1

declare dso_local %struct.pohmelfs_mcache* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
