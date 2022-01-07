; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_chunk_readonly.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_chunk_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.btrfs_mapping_tree }
%struct.btrfs_mapping_tree = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.extent_map = type { i64 }
%struct.map_lookup = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@DEGRADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_chunk_readonly(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_map*, align 8
  %7 = alloca %struct.map_lookup*, align 8
  %8 = alloca %struct.btrfs_mapping_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.btrfs_mapping_tree* %14, %struct.btrfs_mapping_tree** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %8, align 8
  %16 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i32 @read_lock(i32* %17)
  %19 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %8, align 8
  %20 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.extent_map* @lookup_extent_mapping(%struct.TYPE_8__* %20, i32 %21, i32 1)
  store %struct.extent_map* %22, %struct.extent_map** %6, align 8
  %23 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %8, align 8
  %24 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @read_unlock(i32* %25)
  %27 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %28 = icmp ne %struct.extent_map* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

30:                                               ; preds = %2
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %32 = load i32, i32* @DEGRADED, align 4
  %33 = call i64 @btrfs_test_opt(%struct.btrfs_root* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %37 = call i32 @free_extent_map(%struct.extent_map* %36)
  store i32 0, i32* %3, align 4
  br label %70

38:                                               ; preds = %30
  %39 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %40 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.map_lookup*
  store %struct.map_lookup* %42, %struct.map_lookup** %7, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %63, %38
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.map_lookup*, %struct.map_lookup** %7, align 8
  %46 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.map_lookup*, %struct.map_lookup** %7, align 8
  %51 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %66

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %43

66:                                               ; preds = %61, %43
  %67 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %68 = call i32 @free_extent_map(%struct.extent_map* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %35, %29
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
