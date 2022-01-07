; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_remove_rightmost_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_remove_rightmost_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.ocfs2_extent_tree = type { %struct.ocfs2_extent_list*, i32 }
%struct.ocfs2_extent_list = type { i32*, i64, i64 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_block = type { i32 }
%struct.TYPE_11__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_remove_rightmost_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remove_rightmost_path(%struct.TYPE_10__* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_cached_dealloc_ctxt* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_path*, align 8
  %13 = alloca %struct.ocfs2_extent_block*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %7, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %3, %struct.ocfs2_cached_dealloc_ctxt** %8, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %12, align 8
  %15 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %16 = call i32 @ocfs2_et_sanity_check(%struct.ocfs2_extent_tree* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %152

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %26 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__* %21, i32 0, i32 %24, %struct.ocfs2_path* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @mlog_errno(i32 %30)
  br label %152

32:                                               ; preds = %20
  %33 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %38 = call i32 @ocfs2_journal_access_path(i32 %35, %struct.TYPE_10__* %36, %struct.ocfs2_path* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %152

44:                                               ; preds = %32
  %45 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ocfs2_metadata_cache_get_super(i32 %47)
  %49 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %50 = call i32 @ocfs2_find_cpos_for_left_leaf(i32 %48, %struct.ocfs2_path* %49, i64* %11)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %152

56:                                               ; preds = %44
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %127

59:                                               ; preds = %56
  %60 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %61 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %60)
  store %struct.ocfs2_path* %61, %struct.ocfs2_path** %12, align 8
  %62 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %63 = icmp ne %struct.ocfs2_path* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %152

69:                                               ; preds = %59
  %70 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @ocfs2_find_path(i32 %72, %struct.ocfs2_path* %73, i64 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %152

81:                                               ; preds = %69
  %82 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %87 = call i32 @ocfs2_journal_access_path(i32 %84, %struct.TYPE_10__* %85, %struct.ocfs2_path* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %152

93:                                               ; preds = %81
  %94 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %95 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %96 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %97 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %94, %struct.ocfs2_path* %95, %struct.ocfs2_path* %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %100 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %101 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %8, align 8
  %104 = call i32 @ocfs2_unlink_subtree(%struct.TYPE_10__* %98, %struct.ocfs2_extent_tree* %99, %struct.ocfs2_path* %100, %struct.ocfs2_path* %101, i32 %102, %struct.ocfs2_cached_dealloc_ctxt* %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %109 = call i32 @ocfs2_update_edge_lengths(%struct.TYPE_10__* %105, %struct.ocfs2_extent_tree* %106, i32 %107, %struct.ocfs2_path* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %93
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @mlog_errno(i32 %113)
  br label %152

115:                                              ; preds = %93
  %116 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %117 = call %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path* %116)
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %120, %struct.ocfs2_extent_block** %13, align 8
  %121 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %122 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %123 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le64_to_cpu(i32 %124)
  %126 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %121, i32 %125)
  br label %147

127:                                              ; preds = %56
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %130 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %8, align 8
  %131 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %132 = call i32 @ocfs2_unlink_path(%struct.TYPE_10__* %128, %struct.ocfs2_extent_tree* %129, %struct.ocfs2_cached_dealloc_ctxt* %130, %struct.ocfs2_path* %131, i32 1)
  %133 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %134 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %133, i32 0, i32 0
  %135 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %134, align 8
  store %struct.ocfs2_extent_list* %135, %struct.ocfs2_extent_list** %14, align 8
  %136 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %137 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %139 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %141 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = call i32 @memset(i32* %143, i32 0, i32 4)
  %145 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %146 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %145, i32 0)
  br label %147

147:                                              ; preds = %127, %115
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %150 = call i32 @path_root_bh(%struct.ocfs2_path* %149)
  %151 = call i32 @ocfs2_journal_dirty(%struct.TYPE_10__* %148, i32 %150)
  br label %152

152:                                              ; preds = %147, %112, %90, %78, %64, %53, %41, %29, %19
  %153 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %154 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %153)
  %155 = load i32, i32* %9, align 4
  ret i32 %155
}

declare dso_local i32 @ocfs2_et_sanity_check(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, %struct.TYPE_10__*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(i32, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_unlink_subtree(%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_update_edge_lengths(%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_path*) #1

declare dso_local %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_unlink_path(%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @path_root_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
