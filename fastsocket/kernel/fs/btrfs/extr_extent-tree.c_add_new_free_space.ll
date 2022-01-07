; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_add_new_free_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_add_new_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_block_group_cache*, %struct.btrfs_fs_info*, i64, i64)* @add_new_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_new_free_space(%struct.btrfs_block_group_cache* %0, %struct.btrfs_fs_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %5, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %62, %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @EXTENT_DIRTY, align 4
  %24 = load i32, i32* @EXTENT_UPTODATE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @find_first_extent_bit(i32 %21, i64 %22, i64* %9, i64* %10, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %63

30:                                               ; preds = %18
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %62

37:                                               ; preds = %30
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %12, align 8
  %52 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %52, i64 %53, i64 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %61

60:                                               ; preds = %41, %37
  br label %63

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %34
  br label %14

63:                                               ; preds = %60, %29, %14
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %68, %69
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %12, align 8
  %74 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %74, i64 %75, i64 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @BUG_ON(i32 %78)
  br label %80

80:                                               ; preds = %67, %63
  %81 = load i64, i64* %12, align 8
  ret i64 %81
}

declare dso_local i32 @find_first_extent_bit(i32, i64, i64*, i64*, i32) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
