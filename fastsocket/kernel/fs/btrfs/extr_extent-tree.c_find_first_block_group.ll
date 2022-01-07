; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_find_first_block_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_find_first_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64 }

@BTRFS_BLOCK_GROUP_ITEM_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*)* @find_first_block_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_first_block_group(%struct.btrfs_root* %0, %struct.btrfs_path* %1, %struct.btrfs_key* %2) #0 {
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %12 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %13 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %14 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %11, %struct.btrfs_key* %12, %struct.btrfs_path* %13, i32 0, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %70

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %40, %62
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %25, i32 0, i32 1
  %27 = load %struct.extent_buffer**, %struct.extent_buffer*** %26, align 8
  %28 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %27, i64 0
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %28, align 8
  store %struct.extent_buffer* %29, %struct.extent_buffer** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %32 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %31)
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %19
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %37 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %35, %struct.btrfs_path* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %19

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %70

45:                                               ; preds = %41
  br label %69

46:                                               ; preds = %19
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %47, %struct.btrfs_key* %8, i32 %48)
  %50 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %53 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BTRFS_BLOCK_GROUP_ITEM_KEY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %70

62:                                               ; preds = %56, %46
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %19

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69, %61, %44, %17
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
