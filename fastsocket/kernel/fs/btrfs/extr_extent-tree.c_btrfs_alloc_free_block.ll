; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_alloc_free_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_btrfs_alloc_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_disk_key = type { i32 }
%struct.btrfs_key = type { i32, i32 }
%struct.btrfs_block_rsv = type opaque
%struct.btrfs_delayed_extent_op = type { i32, i32, i64, i32, i32 }

@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_BLOCK_FLAG_FULL_BACKREF = common dso_local global i32 0, align 4
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_EXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @btrfs_alloc_free_block(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2, i32 %3, i32 %4, %struct.btrfs_disk_key* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca %struct.btrfs_trans_handle*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_disk_key*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btrfs_key, align 4
  %21 = alloca %struct.btrfs_block_rsv*, align 8
  %22 = alloca %struct.extent_buffer*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.btrfs_delayed_extent_op*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %11, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.btrfs_disk_key* %5, %struct.btrfs_disk_key** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %23, align 4
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.extent_buffer* @use_block_rsv(%struct.btrfs_trans_handle* %26, %struct.btrfs_root* %27, i32 %28)
  %30 = bitcast %struct.extent_buffer* %29 to %struct.btrfs_block_rsv*
  store %struct.btrfs_block_rsv* %30, %struct.btrfs_block_rsv** %21, align 8
  %31 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %21, align 8
  %32 = bitcast %struct.btrfs_block_rsv* %31 to %struct.extent_buffer*
  %33 = call i32 @IS_ERR(%struct.extent_buffer* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %9
  %36 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %21, align 8
  %37 = bitcast %struct.btrfs_block_rsv* %36 to %struct.extent_buffer*
  %38 = call %struct.extent_buffer* @ERR_CAST(%struct.extent_buffer* %37)
  store %struct.extent_buffer* %38, %struct.extent_buffer** %10, align 8
  br label %139

39:                                               ; preds = %9
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @btrfs_reserve_extent(%struct.btrfs_trans_handle* %40, %struct.btrfs_root* %41, i32 %42, i32 %43, i32 %44, i32 %45, %struct.btrfs_key* %20, i32 0)
  store i32 %46, i32* %24, align 4
  %47 = load i32, i32* %24, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %21, align 8
  %54 = bitcast %struct.btrfs_block_rsv* %53 to %struct.extent_buffer*
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @unuse_block_rsv(i32 %52, %struct.extent_buffer* %54, i32 %55)
  %57 = load i32, i32* %24, align 4
  %58 = call %struct.extent_buffer* @ERR_PTR(i32 %57)
  store %struct.extent_buffer* %58, %struct.extent_buffer** %10, align 8
  br label %139

59:                                               ; preds = %39
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %62 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %20, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call %struct.extent_buffer* @btrfs_init_new_buffer(%struct.btrfs_trans_handle* %60, %struct.btrfs_root* %61, i32 %63, i32 %64, i32 %65)
  store %struct.extent_buffer* %66, %struct.extent_buffer** %22, align 8
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  %68 = call i32 @IS_ERR(%struct.extent_buffer* %67)
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @BTRFS_TREE_RELOC_OBJECTID, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %59
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %20, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @BTRFS_BLOCK_FLAG_FULL_BACKREF, align 4
  %81 = load i32, i32* %23, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %23, align 4
  br label %88

83:                                               ; preds = %59
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  br label %88

88:                                               ; preds = %83, %79
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @BTRFS_TREE_LOG_OBJECTID, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %137

92:                                               ; preds = %88
  %93 = load i32, i32* @GFP_NOFS, align 4
  %94 = call %struct.btrfs_delayed_extent_op* @kmalloc(i32 24, i32 %93)
  store %struct.btrfs_delayed_extent_op* %94, %struct.btrfs_delayed_extent_op** %25, align 8
  %95 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %25, align 8
  %96 = icmp ne %struct.btrfs_delayed_extent_op* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUG_ON(i32 %98)
  %100 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %16, align 8
  %101 = icmp ne %struct.btrfs_disk_key* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %25, align 8
  %104 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %103, i32 0, i32 4
  %105 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %16, align 8
  %106 = call i32 @memcpy(i32* %104, %struct.btrfs_disk_key* %105, i32 4)
  br label %111

107:                                              ; preds = %92
  %108 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %25, align 8
  %109 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %108, i32 0, i32 4
  %110 = call i32 @memset(i32* %109, i32 0, i32 4)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %23, align 4
  %113 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %25, align 8
  %114 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %25, align 8
  %116 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %25, align 8
  %118 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %25, align 8
  %120 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %122 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %125 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %20, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %20, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* @BTRFS_ADD_DELAYED_EXTENT, align 4
  %133 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %25, align 8
  %134 = call i32 @btrfs_add_delayed_tree_ref(i32 %123, %struct.btrfs_trans_handle* %124, i32 %126, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, %struct.btrfs_delayed_extent_op* %133, i32 0)
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %24, align 4
  %136 = call i32 @BUG_ON(i32 %135)
  br label %137

137:                                              ; preds = %111, %88
  %138 = load %struct.extent_buffer*, %struct.extent_buffer** %22, align 8
  store %struct.extent_buffer* %138, %struct.extent_buffer** %10, align 8
  br label %139

139:                                              ; preds = %137, %49, %35
  %140 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  ret %struct.extent_buffer* %140
}

declare dso_local %struct.extent_buffer* @use_block_rsv(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @ERR_CAST(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_reserve_extent(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, i32, i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @unuse_block_rsv(i32, %struct.extent_buffer*, i32) #1

declare dso_local %struct.extent_buffer* @ERR_PTR(i32) #1

declare dso_local %struct.extent_buffer* @btrfs_init_new_buffer(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btrfs_delayed_extent_op* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @btrfs_add_delayed_tree_ref(i32, %struct.btrfs_trans_handle*, i32, i32, i32, i32, i32, i32, %struct.btrfs_delayed_extent_op*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
