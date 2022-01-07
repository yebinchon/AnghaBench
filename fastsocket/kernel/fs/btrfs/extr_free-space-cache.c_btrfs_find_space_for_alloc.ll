; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_btrfs_find_space_for_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_btrfs_find_space_for_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.btrfs_free_space_ctl* }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_free_space = type { i64, i64, i64 }

@btrfs_free_space_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btrfs_find_space_for_alloc(%struct.btrfs_block_group_cache* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_free_space_ctl*, align 8
  %10 = alloca %struct.btrfs_free_space*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %13, i32 0, i32 0
  %15 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %14, align 8
  store %struct.btrfs_free_space_ctl* %15, %struct.btrfs_free_space_ctl** %9, align 8
  store %struct.btrfs_free_space* null, %struct.btrfs_free_space** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  %20 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  %23 = call %struct.btrfs_free_space* @find_free_space(%struct.btrfs_free_space_ctl* %22, i64* %6, i64* %11)
  store %struct.btrfs_free_space* %23, %struct.btrfs_free_space** %10, align 8
  %24 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %25 = icmp ne %struct.btrfs_free_space* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %76

27:                                               ; preds = %4
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %12, align 8
  %29 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %30 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  %35 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl* %34, %struct.btrfs_free_space* %35, i64 %36, i64 %37)
  %39 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %40 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  %45 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %46 = call i32 @free_bitmap(%struct.btrfs_free_space_ctl* %44, %struct.btrfs_free_space* %45)
  br label %47

47:                                               ; preds = %43, %33
  br label %75

48:                                               ; preds = %27
  %49 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  %50 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %51 = call i32 @unlink_free_space(%struct.btrfs_free_space_ctl* %49, %struct.btrfs_free_space* %50)
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %54 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %59 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %63 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %48
  %67 = load i32, i32* @btrfs_free_space_cachep, align 4
  %68 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %69 = call i32 @kmem_cache_free(i32 %67, %struct.btrfs_free_space* %68)
  br label %74

70:                                               ; preds = %48
  %71 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  %72 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %10, align 8
  %73 = call i32 @link_free_space(%struct.btrfs_free_space_ctl* %71, %struct.btrfs_free_space* %72)
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %47
  br label %76

76:                                               ; preds = %75, %26
  %77 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  %78 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i64, i64* %12, align 8
  ret i64 %80
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.btrfs_free_space* @find_free_space(%struct.btrfs_free_space_ctl*, i64*, i64*) #1

declare dso_local i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64, i64) #1

declare dso_local i32 @free_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @unlink_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_free_space*) #1

declare dso_local i32 @link_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
