; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_alloc_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_alloc_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.map_lookup = type { i32 }

@BTRFS_FIRST_CHUNK_TREE_OBJECTID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_alloc_chunk(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.map_lookup*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_root* %18, %struct.btrfs_root** %12, align 8
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %20 = load i32, i32* @BTRFS_FIRST_CHUNK_TREE_OBJECTID, align 4
  %21 = call i32 @find_next_chunk(%struct.btrfs_root* %19, i32 %20, i32* %8)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @__btrfs_alloc_chunk(%struct.btrfs_trans_handle* %27, %struct.btrfs_root* %28, %struct.map_lookup** %11, i32* %9, i32* %10, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %26
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %39 = load %struct.map_lookup*, %struct.map_lookup** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @__finish_chunk_alloc(%struct.btrfs_trans_handle* %37, %struct.btrfs_root* %38, %struct.map_lookup* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %46, %34, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @find_next_chunk(%struct.btrfs_root*, i32, i32*) #1

declare dso_local i32 @__btrfs_alloc_chunk(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.map_lookup**, i32*, i32*, i32, i32) #1

declare dso_local i32 @__finish_chunk_alloc(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.map_lookup*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
