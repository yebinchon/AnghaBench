; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_mapping_tree_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_mapping_tree_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_mapping_tree = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.extent_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_mapping_tree_free(%struct.btrfs_mapping_tree* %0) #0 {
  %2 = alloca %struct.btrfs_mapping_tree*, align 8
  %3 = alloca %struct.extent_map*, align 8
  store %struct.btrfs_mapping_tree* %0, %struct.btrfs_mapping_tree** %2, align 8
  br label %4

4:                                                ; preds = %1, %27
  %5 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @write_lock(i32* %7)
  %9 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %9, i32 0, i32 0
  %11 = call %struct.extent_map* @lookup_extent_mapping(%struct.TYPE_3__* %10, i32 0, i32 -1)
  store %struct.extent_map* %11, %struct.extent_map** %3, align 8
  %12 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %13 = icmp ne %struct.extent_map* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %15, i32 0, i32 0
  %17 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %18 = call i32 @remove_extent_mapping(%struct.TYPE_3__* %16, %struct.extent_map* %17)
  br label %19

19:                                               ; preds = %14, %4
  %20 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_mapping_tree, %struct.btrfs_mapping_tree* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @write_unlock(i32* %22)
  %24 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %25 = icmp ne %struct.extent_map* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %36

27:                                               ; preds = %19
  %28 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %29 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %33 = call i32 @free_extent_map(%struct.extent_map* %32)
  %34 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %35 = call i32 @free_extent_map(%struct.extent_map* %34)
  br label %4

36:                                               ; preds = %26
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @remove_extent_mapping(%struct.TYPE_3__*, %struct.extent_map*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
