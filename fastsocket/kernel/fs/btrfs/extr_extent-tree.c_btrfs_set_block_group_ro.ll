; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_set_block_group_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_set_block_group_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_block_group_cache = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_trans_handle = type { i32 }

@CHUNK_ALLOC_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_set_block_group_ro(%struct.btrfs_root* %0, %struct.btrfs_block_group_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %5, align 8
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %14 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %13)
  store %struct.btrfs_trans_handle* %14, %struct.btrfs_trans_handle** %6, align 8
  %15 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %16 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %19)
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @update_block_group_flags(%struct.btrfs_root* %22, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @CHUNK_ALLOC_FORCE, align 4
  %37 = call i32 @do_chunk_alloc(%struct.btrfs_trans_handle* %33, %struct.btrfs_root* %34, i32 2097152, i64 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %67

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %44 = call i32 @set_block_group_ro(%struct.btrfs_block_group_cache* %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %67

48:                                               ; preds = %42
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %51 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @get_alloc_profile(%struct.btrfs_root* %49, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @CHUNK_ALLOC_FORCE, align 4
  %60 = call i32 @do_chunk_alloc(%struct.btrfs_trans_handle* %56, %struct.btrfs_root* %57, i32 2097152, i64 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %67

64:                                               ; preds = %48
  %65 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %66 = call i32 @set_block_group_ro(%struct.btrfs_block_group_cache* %65, i32 0)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %63, %47, %40
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %70 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %68, %struct.btrfs_root* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i64 @update_block_group_flags(%struct.btrfs_root*, i64) #1

declare dso_local i32 @do_chunk_alloc(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i64, i32) #1

declare dso_local i32 @set_block_group_ro(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i64 @get_alloc_profile(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
