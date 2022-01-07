; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_remove_btree_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_remove_btree_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.ocfs2_alloc_context = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_remove_btree_range(%struct.inode* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, i32 %4, %struct.ocfs2_cached_dealloc_ctxt* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_super*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ocfs2_cached_dealloc_ctxt* %5, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ocfs2_clusters_to_blocks(i32 %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ocfs2_super* @OCFS2_SB(i32 %27)
  store %struct.ocfs2_super* %28, %struct.ocfs2_super** %16, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 1
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  store %struct.inode* %31, %struct.inode** %17, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %19, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %34 = call i32 @ocfs2_lock_allocators(%struct.inode* %32, %struct.ocfs2_extent_tree* %33, i32 0, i32 1, i32* null, %struct.ocfs2_alloc_context** %19)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %7, align 4
  br label %144

41:                                               ; preds = %6
  %42 = load %struct.inode*, %struct.inode** %17, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %46 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %50 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %133

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %60 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ocfs2_remove_extent_credits(i32 %61)
  %63 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %58, i32 %62)
  store i32* %63, i32** %18, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @PTR_ERR(i32* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %133

72:                                               ; preds = %57
  %73 = load i32*, i32** %18, align 8
  %74 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %75 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %76 = call i32 @ocfs2_et_root_journal_access(i32* %73, %struct.ocfs2_extent_tree* %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %133

82:                                               ; preds = %72
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @ocfs2_clusters_to_bytes(i32 %86, i32 %87)
  %89 = call i32 @vfs_dq_free_space_nodirty(%struct.inode* %83, i32 %88)
  %90 = load i32*, i32** %18, align 8
  %91 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %95 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %13, align 8
  %96 = call i32 @ocfs2_remove_extent(i32* %90, %struct.ocfs2_extent_tree* %91, i32 %92, i32 %93, %struct.ocfs2_alloc_context* %94, %struct.ocfs2_cached_dealloc_ctxt* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %82
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %129

102:                                              ; preds = %82
  %103 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 @ocfs2_et_update_clusters(%struct.ocfs2_extent_tree* %103, i32 %105)
  %107 = load i32*, i32** %18, align 8
  %108 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %109 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ocfs2_journal_dirty(i32* %107, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %102
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @mlog_errno(i32 %115)
  br label %129

117:                                              ; preds = %102
  %118 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %118, i32* %119, i32 %120, i32 %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @mlog_errno(i32 %126)
  br label %128

128:                                              ; preds = %125, %117
  br label %129

129:                                              ; preds = %128, %114, %99
  %130 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %130, i32* %131)
  br label %133

133:                                              ; preds = %129, %79, %67, %53
  %134 = load %struct.inode*, %struct.inode** %17, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %138 = icmp ne %struct.ocfs2_alloc_context* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %141 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %140)
  br label %142

142:                                              ; preds = %139, %133
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %142, %37
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_lock_allocators(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, i32*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_remove_extent_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @vfs_dq_free_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_remove_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_et_update_clusters(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, i32) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
