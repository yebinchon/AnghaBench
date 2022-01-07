; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_init_new_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_init_new_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i64, i64, i32 }
%struct.btrfs_trans_handle = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_root = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EXTENT_BUFFER_STALE = common dso_local global i32 0, align 4
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @btrfs_init_new_buffer(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_root* %13, i32 %14, i32 %15)
  store %struct.extent_buffer* %16, %struct.extent_buffer** %12, align 8
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %18 = icmp ne %struct.extent_buffer* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.extent_buffer* @ERR_PTR(i32 %21)
  store %struct.extent_buffer* %22, %struct.extent_buffer** %6, align 8
  br label %119

23:                                               ; preds = %5
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %26 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @btrfs_set_header_generation(%struct.extent_buffer* %24, i32 %27)
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @btrfs_set_buffer_lockdep_class(i64 %32, %struct.extent_buffer* %33, i32 %34)
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %37 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %36)
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %41 = call i32 @clean_tree_block(%struct.btrfs_trans_handle* %38, %struct.btrfs_root* %39, %struct.extent_buffer* %40)
  %42 = load i32, i32* @EXTENT_BUFFER_STALE, align 4
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %44 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %43, i32 0, i32 2
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %47 = call i32 @btrfs_set_lock_blocking(%struct.extent_buffer* %46)
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %49 = call i32 @btrfs_set_buffer_uptodate(%struct.extent_buffer* %48)
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %23
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %58 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = srem i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 1
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %66 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %69 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %72 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = sub nsw i64 %74, 1
  %76 = load i32, i32* @GFP_NOFS, align 4
  %77 = call i32 @set_extent_dirty(i32* %64, i64 %67, i64 %75, i32 %76)
  br label %94

78:                                               ; preds = %56
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %80 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %79, i32 0, i32 1
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %82 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %85 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %88 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = sub nsw i64 %90, 1
  %92 = load i32, i32* @GFP_NOFS, align 4
  %93 = call i32 @set_extent_new(i32* %80, i64 %83, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %78, %62
  br label %113

95:                                               ; preds = %23
  %96 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %97 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %101 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %104 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %107 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = sub nsw i64 %109, 1
  %111 = load i32, i32* @GFP_NOFS, align 4
  %112 = call i32 @set_extent_dirty(i32* %99, i64 %102, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %95, %94
  %114 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %115 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  store %struct.extent_buffer* %118, %struct.extent_buffer** %6, align 8
  br label %119

119:                                              ; preds = %113, %19
  %120 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  ret %struct.extent_buffer* %120
}

declare dso_local %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_root*, i32, i32) #1

declare dso_local %struct.extent_buffer* @ERR_PTR(i32) #1

declare dso_local i32 @btrfs_set_header_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_buffer_lockdep_class(i64, %struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @clean_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @btrfs_set_lock_blocking(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @set_extent_dirty(i32*, i64, i64, i32) #1

declare dso_local i32 @set_extent_new(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
