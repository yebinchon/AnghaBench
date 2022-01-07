; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_exclude_super_stripes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_exclude_super_stripes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_block_group_cache = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@BTRFS_SUPER_INFO_OFFSET = common dso_local global i64 0, align 8
@BTRFS_SUPER_MIRROR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_block_group_cache*)* @exclude_super_stripes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exclude_super_stripes(%struct.btrfs_root* %0, %struct.btrfs_block_group_cache* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %4, align 8
  %11 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BTRFS_SUPER_INFO_OFFSET, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i64, i64* @BTRFS_SUPER_INFO_OFFSET, align 8
  %19 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %18, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @add_excluded_extent(%struct.btrfs_root* %30, i64 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @BUG_ON(i32 %37)
  br label %39

39:                                               ; preds = %17, %2
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %82, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @BTRFS_SUPER_MIRROR_MAX, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @btrfs_sb_offset(i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %48 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %52 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @btrfs_rmap_block(i32* %50, i64 %54, i64 %55, i32 0, i64** %6, i32* %9, i32* %7)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @BUG_ON(i32 %57)
  br label %59

59:                                               ; preds = %63, %44
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %66 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %70 = load i64*, i64** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @add_excluded_extent(%struct.btrfs_root* %69, i64 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @BUG_ON(i32 %77)
  br label %59

79:                                               ; preds = %59
  %80 = load i64*, i64** %6, align 8
  %81 = call i32 @kfree(i64* %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %40

85:                                               ; preds = %40
  ret i32 0
}

declare dso_local i32 @add_excluded_extent(%struct.btrfs_root*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @btrfs_sb_offset(i32) #1

declare dso_local i32 @btrfs_rmap_block(i32*, i64, i64, i32, i64**, i32*, i32*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
