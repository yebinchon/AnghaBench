; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_copy_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_btrfs_copy_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.extent_buffer = type { i32, i32 }
%struct.btrfs_disk_key = type { i32 }

@BTRFS_MIXED_BACKREF_REV = common dso_local global i32 0, align 4
@BTRFS_HEADER_FLAG_WRITTEN = common dso_local global i32 0, align 4
@BTRFS_HEADER_FLAG_RELOC = common dso_local global i32 0, align 4
@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_FSID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_copy_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2, %struct.extent_buffer** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.extent_buffer**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_disk_key, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %9, align 8
  store %struct.extent_buffer** %3, %struct.extent_buffer*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %23, %30
  br label %32

32:                                               ; preds = %20, %5
  %33 = phi i1 [ false, %5 ], [ %31, %20 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %42 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br label %48

48:                                               ; preds = %40, %32
  %49 = phi i1 [ false, %32 ], [ %47, %40 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %53 = call i32 @btrfs_header_level(%struct.extent_buffer* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %58 = call i32 @btrfs_item_key(%struct.extent_buffer* %57, %struct.btrfs_disk_key* %15, i32 0)
  br label %62

59:                                               ; preds = %48
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %61 = call i32 @btrfs_node_key(%struct.extent_buffer* %60, %struct.btrfs_disk_key* %15, i32 0)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %66 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %71 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.extent_buffer* @btrfs_alloc_free_block(%struct.btrfs_trans_handle* %63, %struct.btrfs_root* %64, i32 %67, i32 0, i32 %68, %struct.btrfs_disk_key* %15, i32 %69, i32 %72, i32 0)
  store %struct.extent_buffer* %73, %struct.extent_buffer** %12, align 8
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %75 = call i64 @IS_ERR(%struct.extent_buffer* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %79 = call i32 @PTR_ERR(%struct.extent_buffer* %78)
  store i32 %79, i32* %6, align 4
  br label %158

80:                                               ; preds = %62
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %84 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @copy_extent_buffer(%struct.extent_buffer* %81, %struct.extent_buffer* %82, i32 0, i32 0, i32 %85)
  %87 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %89 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @btrfs_set_header_bytenr(%struct.extent_buffer* %87, i32 %90)
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %93 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %94 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @btrfs_set_header_generation(%struct.extent_buffer* %92, i32 %95)
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %98 = load i32, i32* @BTRFS_MIXED_BACKREF_REV, align 4
  %99 = call i32 @btrfs_set_header_backref_rev(%struct.extent_buffer* %97, i32 %98)
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %101 = load i32, i32* @BTRFS_HEADER_FLAG_WRITTEN, align 4
  %102 = load i32, i32* @BTRFS_HEADER_FLAG_RELOC, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @btrfs_clear_header_flag(%struct.extent_buffer* %100, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @BTRFS_TREE_RELOC_OBJECTID, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %80
  %109 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %110 = load i32, i32* @BTRFS_HEADER_FLAG_RELOC, align 4
  %111 = call i32 @btrfs_set_header_flag(%struct.extent_buffer* %109, i32 %110)
  br label %116

112:                                              ; preds = %80
  %113 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @btrfs_set_header_owner(%struct.extent_buffer* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %108
  %117 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %119 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %124 = call i64 @btrfs_header_fsid(%struct.extent_buffer* %123)
  %125 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %126 = call i32 @write_extent_buffer(%struct.extent_buffer* %117, i32 %122, i64 %124, i32 %125)
  %127 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %128 = call i32 @btrfs_header_generation(%struct.extent_buffer* %127)
  %129 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %130 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @WARN_ON(i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @BTRFS_TREE_RELOC_OBJECTID, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %116
  %139 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %140 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %141 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %142 = call i32 @btrfs_inc_ref(%struct.btrfs_trans_handle* %139, %struct.btrfs_root* %140, %struct.extent_buffer* %141, i32 1, i32 1)
  store i32 %142, i32* %13, align 4
  br label %148

143:                                              ; preds = %116
  %144 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %145 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %146 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %147 = call i32 @btrfs_inc_ref(%struct.btrfs_trans_handle* %144, %struct.btrfs_root* %145, %struct.extent_buffer* %146, i32 0, i32 1)
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %143, %138
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %6, align 4
  br label %158

153:                                              ; preds = %148
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %155 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %154)
  %156 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %157 = load %struct.extent_buffer**, %struct.extent_buffer*** %10, align 8
  store %struct.extent_buffer* %156, %struct.extent_buffer** %157, align 8
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %153, %151, %77
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_alloc_free_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, i32, %struct.btrfs_disk_key*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @copy_extent_buffer(%struct.extent_buffer*, %struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_set_header_bytenr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_backref_rev(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_clear_header_flag(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_flag(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_owner(%struct.extent_buffer*, i32) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i32, i64, i32) #1

declare dso_local i64 @btrfs_header_fsid(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_inc_ref(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
