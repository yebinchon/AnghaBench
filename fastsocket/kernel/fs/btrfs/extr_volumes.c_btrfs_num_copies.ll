; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_num_copies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_num_copies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_mapping_tree = type { %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, i64, i64 }
%struct.map_lookup = type { i32, i32, i32 }

@BTRFS_BLOCK_GROUP_DUP = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID1 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID10 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_num_copies(%struct.btrfs_mapping_tree* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_mapping_tree*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.extent_map*, align 8
  %8 = alloca %struct.map_lookup*, align 8
  %9 = alloca %struct.extent_map_tree*, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_mapping_tree* %0, %struct.btrfs_mapping_tree** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %11, i32 0, i32 0
  store %struct.extent_map_tree* %12, %struct.extent_map_tree** %9, align 8
  %13 = load %struct.extent_map_tree*, %struct.extent_map_tree** %9, align 8
  %14 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %13, i32 0, i32 0
  %15 = call i32 @read_lock(i32* %14)
  %16 = load %struct.extent_map_tree*, %struct.extent_map_tree** %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %16, i64 %17, i64 %18)
  store %struct.extent_map* %19, %struct.extent_map** %7, align 8
  %20 = load %struct.extent_map_tree*, %struct.extent_map_tree** %9, align 8
  %21 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %20, i32 0, i32 0
  %22 = call i32 @read_unlock(i32* %21)
  %23 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %24 = icmp ne %struct.extent_map* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %29 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %3
  %34 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %35 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %38 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i64, i64* %5, align 8
  %42 = icmp slt i64 %40, %41
  br label %43

43:                                               ; preds = %33, %3
  %44 = phi i1 [ true, %3 ], [ %42, %33 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %48 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.map_lookup*
  store %struct.map_lookup* %50, %struct.map_lookup** %8, align 8
  %51 = load %struct.map_lookup*, %struct.map_lookup** %8, align 8
  %52 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %55 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load %struct.map_lookup*, %struct.map_lookup** %8, align 8
  %61 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  br label %76

63:                                               ; preds = %43
  %64 = load %struct.map_lookup*, %struct.map_lookup** %8, align 8
  %65 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.map_lookup*, %struct.map_lookup** %8, align 8
  %72 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  br label %75

74:                                               ; preds = %63
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %70
  br label %76

76:                                               ; preds = %75, %59
  %77 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  %78 = call i32 @free_extent_map(%struct.extent_map* %77)
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
