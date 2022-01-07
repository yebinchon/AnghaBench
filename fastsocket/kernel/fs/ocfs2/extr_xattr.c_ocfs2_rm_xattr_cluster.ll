; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_rm_xattr_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_rm_xattr_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.ocfs2_xattr_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }

@ocfs2_delete_xattr_in_bucket = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"rm xattr extent rec at %u len = %u, start from %llu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i32, i32, i8*)* @ocfs2_rm_xattr_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rm_xattr_cluster(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_super*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ocfs2_xattr_block*, align 8
  %19 = alloca %struct.ocfs2_alloc_context*, align 8
  %20 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %21 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %15, align 8
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %16, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %32, %struct.ocfs2_xattr_block** %18, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %19, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @ocfs2_delete_xattr_in_bucket, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @ocfs2_iterate_xattr_buckets(%struct.inode* %33, i64 %34, i32 %35, i32 %36, i8* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  br label %169

45:                                               ; preds = %6
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @INODE_CACHE(%struct.inode* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = call i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree* %21, i32 %47, %struct.buffer_head* %48)
  %50 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %20)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i64 %53)
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = call i32 @INODE_CACHE(%struct.inode* %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ocfs2_remove_xattr_clusters_from_cache(i32 %56, i64 %57, i32 %58)
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = call i32 @ocfs2_lock_allocators(%struct.inode* %60, %struct.ocfs2_extent_tree* %21, i32 0, i32 1, i32* null, %struct.ocfs2_alloc_context** %19)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %45
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %7, align 4
  br label %169

68:                                               ; preds = %45
  %69 = load %struct.inode*, %struct.inode** %16, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %73 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %77 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %154

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %68
  %85 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %86 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %87 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ocfs2_remove_extent_credits(i32 %88)
  %90 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %85, i32 %89)
  store i32* %90, i32** %17, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = call i64 @IS_ERR(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %154

99:                                               ; preds = %84
  %100 = load i32*, i32** %17, align 8
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = call i32 @INODE_CACHE(%struct.inode* %101)
  %103 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %104 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %105 = call i32 @ocfs2_journal_access_xb(i32* %100, i32 %102, %struct.buffer_head* %103, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %150

111:                                              ; preds = %99
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %116 = call i32 @ocfs2_remove_extent(i32* %112, %struct.ocfs2_extent_tree* %21, i32 %113, i32 %114, %struct.ocfs2_alloc_context* %115, %struct.ocfs2_cached_dealloc_ctxt* %20)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @mlog_errno(i32 %120)
  br label %150

122:                                              ; preds = %111
  %123 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %18, align 8
  %124 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 0, %127
  %129 = call i32 @le32_add_cpu(i32* %126, i32 %128)
  %130 = load i32*, i32** %17, align 8
  %131 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %132 = call i32 @ocfs2_journal_dirty(i32* %130, %struct.buffer_head* %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @mlog_errno(i32 %136)
  br label %150

138:                                              ; preds = %122
  %139 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %140 = load i32*, i32** %17, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %139, i32* %140, i64 %141, i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @mlog_errno(i32 %147)
  br label %149

149:                                              ; preds = %146, %138
  br label %150

150:                                              ; preds = %149, %135, %119, %108
  %151 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %151, i32* %152)
  br label %154

154:                                              ; preds = %150, %94, %80
  %155 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %156 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %155, i32 1)
  %157 = load %struct.inode*, %struct.inode** %16, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 0
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %161 = icmp ne %struct.ocfs2_alloc_context* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %164 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %163)
  br label %165

165:                                              ; preds = %162, %154
  %166 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %167 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %166, %struct.ocfs2_cached_dealloc_ctxt* %20)
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %165, %64, %41
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_iterate_xattr_buckets(%struct.inode*, i64, i32, i32, i8*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_xattr_tree_extent_tree(%struct.ocfs2_extent_tree*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @ocfs2_remove_xattr_clusters_from_cache(i32, i64, i32) #1

declare dso_local i32 @ocfs2_lock_allocators(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, i32*, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_remove_extent_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_xb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_remove_extent(i32*, %struct.ocfs2_extent_tree*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i64, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
