; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_find_orphan_roots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_find_orphan_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_ORPHAN_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_ORPHAN_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_orphan_roots(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_key, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %11, %struct.btrfs_path** %5, align 8
  %12 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %13 = icmp ne %struct.btrfs_path* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %124

17:                                               ; preds = %1
  %18 = load i64, i64* @BTRFS_ORPHAN_OBJECTID, align 8
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load i64, i64* @BTRFS_ORPHAN_ITEM_KEY, align 8
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %24 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  store i64 -1, i64* %25, align 8
  br label %26

26:                                               ; preds = %17, %100, %119
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %29 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %27, %struct.btrfs_key* %6, %struct.btrfs_path* %28, i32 0, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %9, align 4
  br label %120

34:                                               ; preds = %26
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %35, i32 0, i32 1
  %37 = load %struct.extent_buffer**, %struct.extent_buffer*** %36, align 8
  %38 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %37, i64 0
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %38, align 8
  store %struct.extent_buffer* %39, %struct.extent_buffer** %4, align 8
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %46 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %45)
  %47 = icmp sge i64 %44, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %34
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %51 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %49, %struct.btrfs_path* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %120

60:                                               ; preds = %56
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %62 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %61, i32 0, i32 1
  %63 = load %struct.extent_buffer**, %struct.extent_buffer*** %62, align 8
  %64 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %63, i64 0
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %64, align 8
  store %struct.extent_buffer* %65, %struct.extent_buffer** %4, align 8
  br label %66

66:                                               ; preds = %60, %34
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %68 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %69 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %67, %struct.btrfs_key* %6, i64 %72)
  %74 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %75 = call i32 @btrfs_release_path(%struct.btrfs_path* %74)
  %76 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BTRFS_ORPHAN_OBJECTID, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BTRFS_ORPHAN_ITEM_KEY, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %66
  br label %120

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %94 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.btrfs_root* @btrfs_read_fs_root_no_name(i32 %95, %struct.btrfs_key* %7)
  store %struct.btrfs_root* %96, %struct.btrfs_root** %8, align 8
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %98 = call i32 @IS_ERR(%struct.btrfs_root* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %86
  br label %26

101:                                              ; preds = %86
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %103 = call i32 @PTR_ERR(%struct.btrfs_root* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @ENOENT, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %9, align 4
  br label %120

110:                                              ; preds = %101
  %111 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %112 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @btrfs_find_dead_roots(%struct.btrfs_root* %111, i64 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %9, align 4
  br label %120

119:                                              ; preds = %110
  br label %26

120:                                              ; preds = %117, %108, %85, %59, %32
  %121 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %122 = call i32 @btrfs_free_path(%struct.btrfs_path* %121)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %14
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local %struct.btrfs_root* @btrfs_read_fs_root_no_name(i32, %struct.btrfs_key*) #1

declare dso_local i32 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_find_dead_roots(%struct.btrfs_root*, i64) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
