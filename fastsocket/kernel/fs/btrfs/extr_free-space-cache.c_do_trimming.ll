; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_do_trimming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_do_trimming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i32, i64, %struct.btrfs_fs_info*, %struct.btrfs_space_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i64*, i64, i64, i64, i64)* @do_trimming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_trimming(%struct.btrfs_block_group_cache* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.btrfs_space_info*, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 4
  %20 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %19, align 8
  store %struct.btrfs_space_info* %20, %struct.btrfs_space_info** %13, align 8
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %21, i32 0, i32 3
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %22, align 8
  store %struct.btrfs_fs_info* %23, %struct.btrfs_fs_info** %14, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %24 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %25 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %6
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %44 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  store i32 1, i32* %16, align 4
  br label %49

49:                                               ; preds = %34, %6
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %51 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %54 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %57 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @btrfs_error_discard_extent(i32 %58, i64 %59, i64 %60, i64* %17)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %49
  %65 = load i64, i64* %17, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %65
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %64, %49
  %70 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %70, i64 %71, i64 %72)
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %116

76:                                               ; preds = %69
  %77 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %78 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %81 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %84 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %90 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %95

95:                                               ; preds = %87, %76
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %98 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %105 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %111 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %114 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  br label %116

116:                                              ; preds = %95, %69
  %117 = load i32, i32* %15, align 4
  ret i32 %117
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_error_discard_extent(i32, i64, i64, i64*) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
