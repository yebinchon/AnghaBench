; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_main.c_ecryptfs_init_kmem_caches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_main.c_ecryptfs_init_kmem_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_cache_info = type { i32, i32*, i32, i32 }

@ecryptfs_cache_infos = common dso_local global %struct.ecryptfs_cache_info* null, align 8
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: kmem_cache_create failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ecryptfs_init_kmem_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_init_kmem_caches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecryptfs_cache_info*, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %43, %0
  %5 = load i32, i32* %2, align 4
  %6 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** @ecryptfs_cache_infos, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.ecryptfs_cache_info* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %4
  %10 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** @ecryptfs_cache_infos, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %10, i64 %12
  store %struct.ecryptfs_cache_info* %13, %struct.ecryptfs_cache_info** %3, align 8
  %14 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %3, align 8
  %15 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %3, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %21 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %3, align 8
  %22 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kmem_cache_create(i32 %16, i32 %19, i32 0, i32 %20, i32 %23)
  %25 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %3, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %3, align 8
  %29 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %9
  %34 = call i32 (...) @ecryptfs_free_kmem_caches()
  %35 = load i32, i32* @KERN_WARNING, align 4
  %36 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %3, align 8
  %37 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ecryptfs_printk(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %1, align 4
  br label %47

42:                                               ; preds = %9
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %4

46:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @ARRAY_SIZE(%struct.ecryptfs_cache_info*) #1

declare dso_local i32 @kmem_cache_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecryptfs_free_kmem_caches(...) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
