; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_main.c_ecryptfs_free_kmem_caches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_main.c_ecryptfs_free_kmem_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_cache_info = type { i64* }

@ecryptfs_cache_infos = common dso_local global %struct.ecryptfs_cache_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ecryptfs_free_kmem_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_free_kmem_caches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ecryptfs_cache_info*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** @ecryptfs_cache_infos, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.ecryptfs_cache_info* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** @ecryptfs_cache_infos, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %9, i64 %11
  store %struct.ecryptfs_cache_info* %12, %struct.ecryptfs_cache_info** %2, align 8
  %13 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %2, align 8
  %14 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %2, align 8
  %20 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @kmem_cache_destroy(i64 %22)
  br label %24

24:                                               ; preds = %18, %8
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %3

28:                                               ; preds = %3
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ecryptfs_cache_info*) #1

declare dso_local i32 @kmem_cache_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
