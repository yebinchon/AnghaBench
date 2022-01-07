; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_split_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_split_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32, i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32, i32, %struct.ocfs2_extent_rec* }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_insert_type = type { i32, i32, i32, i32 }

@APPEND_NONE = common dso_local global i32 0, align 4
@CONTIG_NONE = common dso_local global i32 0, align 4
@SPLIT_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, i32, %struct.ocfs2_alloc_context*)* @ocfs2_split_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_split_tree(%struct.TYPE_6__* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, i32 %3, i32 %4, %struct.ocfs2_alloc_context* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_alloc_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_extent_block*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  %19 = alloca %struct.ocfs2_extent_list*, align 8
  %20 = alloca %struct.ocfs2_extent_rec, align 4
  %21 = alloca %struct.ocfs2_extent_rec*, align 8
  %22 = alloca %struct.ocfs2_insert_type, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %12, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  %26 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %27 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %26)
  store %struct.ocfs2_extent_list* %27, %struct.ocfs2_extent_list** %19, align 8
  %28 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %19, align 8
  %29 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %28, i32 0, i32 2
  %30 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %30, i64 %32
  store %struct.ocfs2_extent_rec* %33, %struct.ocfs2_extent_rec** %21, align 8
  %34 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ocfs2_metadata_cache_get_super(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %21, align 8
  %40 = call i32 @ocfs2_make_right_split_rec(i32 %37, %struct.ocfs2_extent_rec* %20, i32 %38, %struct.ocfs2_extent_rec* %39)
  %41 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %42 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %6
  %47 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %51 = call i32 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree* %50)
  %52 = call i32 @ocfs2_read_extent_block(i32 %49, i32 %51, %struct.buffer_head** %16)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %130

58:                                               ; preds = %46
  %59 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %62, %struct.ocfs2_extent_block** %17, align 8
  %63 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %17, align 8
  %64 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %63, i32 0, i32 0
  store %struct.ocfs2_extent_list* %64, %struct.ocfs2_extent_list** %18, align 8
  br label %68

65:                                               ; preds = %6
  %66 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %67 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %66)
  store %struct.ocfs2_extent_list* %67, %struct.ocfs2_extent_list** %18, align 8
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %70 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ocfs2_extend_meta_needed(i32 %75)
  %77 = add nsw i64 %72, %76
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @ocfs2_extend_trans(%struct.TYPE_6__* %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %130

90:                                               ; preds = %68
  %91 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %92 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le16_to_cpu(i32 %93)
  %95 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %96 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @le16_to_cpu(i32 %97)
  %99 = icmp eq i64 %94, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %90
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %103 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %12, align 8
  %104 = call i32 @ocfs2_grow_tree(%struct.TYPE_6__* %101, %struct.ocfs2_extent_tree* %102, i32* %14, %struct.buffer_head** %16, %struct.ocfs2_alloc_context* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %130

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %90
  %112 = call i32 @memset(%struct.ocfs2_insert_type* %22, i32 0, i32 16)
  %113 = load i32, i32* @APPEND_NONE, align 4
  %114 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %22, i32 0, i32 3
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @CONTIG_NONE, align 4
  %116 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %22, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @SPLIT_RIGHT, align 4
  %118 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %22, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %14, align 4
  %120 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %22, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %123 = call i32 @ocfs2_do_insert_extent(%struct.TYPE_6__* %121, %struct.ocfs2_extent_tree* %122, %struct.ocfs2_extent_rec* %20, %struct.ocfs2_insert_type* %22)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %111
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @mlog_errno(i32 %127)
  br label %129

129:                                              ; preds = %126, %111
  br label %130

130:                                              ; preds = %129, %107, %87, %55
  %131 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %132 = call i32 @brelse(%struct.buffer_head* %131)
  %133 = load i32, i32* %13, align 4
  ret i32 %133
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_make_right_split_rec(i32, %struct.ocfs2_extent_rec*, i32, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i32 @ocfs2_extend_trans(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_grow_tree(%struct.TYPE_6__*, %struct.ocfs2_extent_tree*, i32*, %struct.buffer_head**, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @memset(%struct.ocfs2_insert_type*, i32, i32) #1

declare dso_local i32 @ocfs2_do_insert_extent(%struct.TYPE_6__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_insert_type*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
