; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_set_block_group_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_set_block_group_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_2__, %struct.btrfs_space_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_space_info = type { i32, i64, i64, i64, i64, i64, i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i32)* @set_block_group_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_block_group_ro(%struct.btrfs_block_group_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_space_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %9, i32 0, i32 7
  %11 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %10, align 8
  store %struct.btrfs_space_info* %11, %struct.btrfs_space_info** %5, align 8
  %12 = load i32, i32* @ENOSPC, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %18 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i64 1048576, i64* %7, align 8
  br label %27

26:                                               ; preds = %22, %2
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %28, i32 0, i32 7
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %32 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %31, i32 0, i32 4
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %96

39:                                               ; preds = %27
  %40 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %41 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %45 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %49 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %53 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %57 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %56, i32 0, i32 5
  %58 = call i64 @btrfs_block_group_used(i32* %57)
  %59 = sub nsw i64 %55, %58
  store i64 %59, i64* %6, align 8
  %60 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %61 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %68 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %72 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %76 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %84 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp sle i64 %82, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %39
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %90 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %94 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %87, %39
  br label %96

96:                                               ; preds = %95, %38
  %97 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %98 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %97, i32 0, i32 4
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %101 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %100, i32 0, i32 7
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_block_group_used(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
