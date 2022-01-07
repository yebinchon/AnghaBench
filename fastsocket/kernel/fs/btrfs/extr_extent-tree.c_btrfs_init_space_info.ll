; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_init_space_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_init_space_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32 }
%struct.btrfs_space_info = type { i32 }

@BTRFS_FEATURE_INCOMPAT_MIXED_GROUPS = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_init_space_info(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_space_info*, align 8
  %5 = alloca %struct.btrfs_super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 0
  %12 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %11, align 8
  store %struct.btrfs_super_block* %12, %struct.btrfs_super_block** %5, align 8
  %13 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %14 = call i32 @btrfs_super_root(%struct.btrfs_super_block* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %19 = call i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BTRFS_FEATURE_INCOMPAT_MIXED_GROUPS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @update_space_info(%struct.btrfs_fs_info* %27, i32 %28, i32 0, i32 0, %struct.btrfs_space_info** %4)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %57

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %38 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @update_space_info(%struct.btrfs_fs_info* %40, i32 %41, i32 0, i32 0, %struct.btrfs_space_info** %4)
  store i32 %42, i32* %9, align 4
  br label %56

43:                                               ; preds = %33
  %44 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @update_space_info(%struct.btrfs_fs_info* %45, i32 %46, i32 0, i32 0, %struct.btrfs_space_info** %4)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %57

51:                                               ; preds = %43
  %52 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @update_space_info(%struct.btrfs_fs_info* %53, i32 %54, i32 0, i32 0, %struct.btrfs_space_info** %4)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %36
  br label %57

57:                                               ; preds = %56, %50, %32
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %16
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @btrfs_super_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_incompat_flags(%struct.btrfs_super_block*) #1

declare dso_local i32 @update_space_info(%struct.btrfs_fs_info*, i32, i32, i32, %struct.btrfs_space_info**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
