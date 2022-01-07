; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_read_block_for_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_read_block_for_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer**, i32, i32, %struct.btrfs_key*, i32)* @read_block_for_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block_for_search(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.extent_buffer** %3, i32 %4, i32 %5, %struct.btrfs_key* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca %struct.extent_buffer**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_key*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.extent_buffer*, align 8
  %22 = alloca %struct.extent_buffer*, align 8
  %23 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %10, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %12, align 8
  store %struct.extent_buffer** %3, %struct.extent_buffer*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.btrfs_key* %6, %struct.btrfs_key** %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = load %struct.extent_buffer**, %struct.extent_buffer*** %13, align 8
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %24, align 8
  store %struct.extent_buffer* %25, %struct.extent_buffer** %21, align 8
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %26, i32 %27)
  store i32 %28, i32* %18, align 4
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %29, i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @btrfs_level_size(%struct.btrfs_root* %32, i32 %34)
  store i32 %35, i32* %20, align 4
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %20, align 4
  %39 = call %struct.extent_buffer* @btrfs_find_tree_block(%struct.btrfs_root* %36, i32 %37, i32 %38)
  store %struct.extent_buffer* %39, %struct.extent_buffer** %22, align 8
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %41 = icmp ne %struct.extent_buffer* %40, null
  br i1 %41, label %42, label %82

42:                                               ; preds = %8
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %44 = call i64 @btrfs_buffer_uptodate(%struct.extent_buffer* %43, i32 0, i32 1)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %48 = load i32, i32* %19, align 4
  %49 = call i64 @btrfs_buffer_uptodate(%struct.extent_buffer* %47, i32 %48, i32 1)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %53 = load %struct.extent_buffer**, %struct.extent_buffer*** %13, align 8
  store %struct.extent_buffer* %52, %struct.extent_buffer** %53, align 8
  store i32 0, i32* %9, align 4
  br label %127

54:                                               ; preds = %46
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %56 = call i32 @free_extent_buffer(%struct.extent_buffer* %55)
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %58 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %57)
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %19, align 4
  %63 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_root* %59, i32 %60, i32 %61, i32 %62)
  store %struct.extent_buffer* %63, %struct.extent_buffer** %22, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %65 = icmp ne %struct.extent_buffer* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %68 = load i32, i32* %19, align 4
  %69 = call i64 @btrfs_buffer_uptodate(%struct.extent_buffer* %67, i32 %68, i32 0)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %73 = load %struct.extent_buffer**, %struct.extent_buffer*** %13, align 8
  store %struct.extent_buffer* %72, %struct.extent_buffer** %73, align 8
  store i32 0, i32* %9, align 4
  br label %127

74:                                               ; preds = %66, %54
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %76 = call i32 @free_extent_buffer(%struct.extent_buffer* %75)
  %77 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %78 = call i32 @btrfs_release_path(%struct.btrfs_path* %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %127

81:                                               ; preds = %42
  br label %82

82:                                               ; preds = %81, %8
  %83 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %83, i32 %85)
  %87 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %88 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %87)
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %90 = call i32 @free_extent_buffer(%struct.extent_buffer* %89)
  %91 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %92 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %82
  %96 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.btrfs_key*, %struct.btrfs_key** %16, align 8
  %101 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @reada_for_search(%struct.btrfs_root* %96, %struct.btrfs_path* %97, i32 %98, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %95, %82
  %105 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %106 = call i32 @btrfs_release_path(%struct.btrfs_path* %105)
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %23, align 4
  %109 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %20, align 4
  %112 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_root* %109, i32 %110, i32 %111, i32 0)
  store %struct.extent_buffer* %112, %struct.extent_buffer** %22, align 8
  %113 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %114 = icmp ne %struct.extent_buffer* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %104
  %116 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %117 = call i64 @btrfs_buffer_uptodate(%struct.extent_buffer* %116, i32 0, i32 0)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %23, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %124 = call i32 @free_extent_buffer(%struct.extent_buffer* %123)
  br label %125

125:                                              ; preds = %122, %104
  %126 = load i32, i32* %23, align 4
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %125, %74, %71, %51
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_level_size(%struct.btrfs_root*, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_find_tree_block(%struct.btrfs_root*, i32, i32) #1

declare dso_local i64 @btrfs_buffer_uptodate(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_root*, i32, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @reada_for_search(%struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
