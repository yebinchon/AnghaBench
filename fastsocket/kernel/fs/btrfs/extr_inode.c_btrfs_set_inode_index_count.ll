; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_set_inode_index_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_set_inode_index_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i64, i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@BTRFS_DIR_INDEX_KEY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @btrfs_set_inode_index_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_set_inode_index_count(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_key, align 8
  %6 = alloca %struct.btrfs_key, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i64 @btrfs_ino(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* @BTRFS_DIR_INDEX_KEY, align 8
  %18 = call i32 @btrfs_set_key_type(%struct.btrfs_key* %5, i64 %17)
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 1
  store i32 -1, i32* %19, align 8
  %20 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %20, %struct.btrfs_path** %7, align 8
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %22 = icmp ne %struct.btrfs_path* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %91

26:                                               ; preds = %1
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %29 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %27, %struct.btrfs_key* %5, %struct.btrfs_path* %28, i32 0, i32 0)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %87

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %87

37:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 2, i32* %47, align 8
  br label %87

48:                                               ; preds = %37
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %50 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %56 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %55, i32 0, i32 1
  %57 = load %struct.extent_buffer**, %struct.extent_buffer*** %56, align 8
  %58 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %57, i64 0
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %58, align 8
  store %struct.extent_buffer* %59, %struct.extent_buffer** %8, align 8
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %62 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %60, %struct.btrfs_key* %6, i64 %65)
  %67 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = call i64 @btrfs_ino(%struct.inode* %69)
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %48
  %73 = call i64 @btrfs_key_type(%struct.btrfs_key* %6)
  %74 = load i64, i64* @BTRFS_DIR_INDEX_KEY, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %48
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 2, i32* %79, align 8
  br label %87

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %87

87:                                               ; preds = %80, %76, %44, %36, %32
  %88 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %89 = call i32 @btrfs_free_path(%struct.btrfs_path* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %23
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

declare dso_local i32 @btrfs_set_key_type(%struct.btrfs_key*, i64) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

declare dso_local i64 @btrfs_key_type(%struct.btrfs_key*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
